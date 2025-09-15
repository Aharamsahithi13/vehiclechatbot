import ollama
import re
from functools import lru_cache
from configure import OLLAMA_MODEL

@lru_cache(maxsize=100)
def cached_ollama_response(query: str) -> str:
    response = ollama.chat(
        model=OLLAMA_MODEL,
        messages=[{"role": "user", "content": query}]
    )
    return response["message"]["content"]

def classify_query(query: str) -> str:
    ramp_keywords = {
        "customer", "vehicle", "employee", "workshop", "service", "job card",
        "customer_id", "customer_name", "customer_mobile", "customer_vehicle_number",
        "employee_id", "first_name", "last_name", "workshop_id", "workshop_name",
        "job_card_id", "problem_desc", "vehicle_svc_id", "bill_number",
        "count", "how many", "number of", "details of", "information about", "list",
        "workshop", "city", "state", "mobile number"
    }
    return "ramp_data" if any(keyword in query.lower() for keyword in ramp_keywords) else "general"

def clean_sql(sql: str) -> str:
    sql = re.sub(r'^.*?(SELECT|INSERT|UPDATE|DELETE|SHOW|DESCRIBE)', r'\1', sql, flags=re.IGNORECASE | re.DOTALL)
    sql = re.sub(r';.*$', ';', sql, flags=re.DOTALL)
    sql = ' '.join(sql.split())
    return sql.strip()

def generate_sql(query: str) -> str:
    prompt = f"""
    You are an expert SQL developer. Return ONLY the SQL statement for this query.
    Do NOT add explanations or notes.
    Tables and columns:
    - customer_vehicle_info (customer_id,customer_name,customer_mobile,customer_vehicle_number,update_date,technician,nbr_of_coupons,vehicle_type,location_name,customer_email ,customer_address,emp_name,chasis_no,engine_no,
                            cubic_capacity,wheel_base,seating_capacity ,unladen_weight,color,date_of_registeration,reg_valid_dt,rto,hypothecated_to ,tax ,registeration_owner,manufactured_year,person_id,
                            vehicle_category,vehicle_maint_category,city,state,pincode,customer_status,nbr_plate_color,fuel_type varchar,vehicle_type_cat,push_status enum,
                            user_status enum,country_phone_code,row_updated_on timestamp,last_crm_contact_date)
    - employee_info (employee_id,workshop_id,email_id,first_name,last_name,designation,user_name,password,pswd_expiry_date,contact_number,date_of_birth,date_of_anniversary,address,person_id,update_date,first_time_login,
                    is_authorized,status,tnc_accept_flag,tnc_accept_date,tnc_addnl_data,updates_available,full_perm_flag enum,compare_bill,otp,push_notification_token,countryCode,phoneCode,login_type)
    - job_card_details (job_card_id,customer_id,vehicle_svc_id,problem_desc,complaint_status,workshop_finding,created_on,created_by)
    - vehicle_service_details (vehicle_svc_details_id,customer_id,vehicle_svc_id,counter_sale_id,service_type_cd,service_desc,quantity,amount,service_date,service_desc_code,bill_type,location_name,service_cat_code,
                               tax_rate,tax_name,tax_sub_type,inclusive,discount_amount,identifier,parts_id,part_identifier,check_flag,purchase_order_id,discount_type,amount_value,vehicle_esvc_details_id,salvage_parts_id,
                               salvage_status,spi_child_id,approval_status enum,approval_comments_cust,approval_comments_wks,vsad_id,veh_checklist_id,issued_qty,po_status,stock_status,package_id,coverage_id,split_invoicing_category,split_invoicing_name,split_invoicing_amount, split_invoicing_remarks)
    - vehicle_service_summary (vehicle_svc_summary_id,customer_id,vehicle_svc_id,counter_sale_info_id,service_date,service_amt,service_tax,service_net_amt,parts_amt,vat_tax,parts_net_amt,salvage_amount,salvage_tax_amt,
                              salvage_net_amt,total_amt,total_paid,invoice_id,cash_invoice_id,bill_no,updated_on,invoice_create_date,line_level_discount,coupon_nbr,coupon_discount,invoice_blocking_reason,discount_amount,disc_type,amount_value,due_date,
                              service_status,sms_reminders,svc_registered_dt,technician,supervisor_name,note,svc_done_dt,internal_note,company_name,freight_charges,revert_reason,reverted_by,revert_date,delivery_time,fleet_service_id,fleet_vehicle_number,bill_type,kilometer_driven,customer_name,
                              customer_mobile,customer_email,customer_address,location_name,person_id,total_paid_cust,total_paid_ins,insurance_claim,total_due_cust,total_due_ins,ramp_veh_booking_id,total_cess_value,payment_details_data,booking_type,corp_ref_no,crm_enquiry_id,cancel_status,goc_cancel_reason,gms_cancel_reason,
                              country_phone_code,progress_total,fuel_level,dte_kms,testdrive_comments,dynamic_jobcard_pdf_path,pymt_receipt_path,row_updated_on,tax_sub_type,place_of_supply,booking_id,ticket_number,vehicle_in_date,vehicle_out_date,package_status)
    - workshop_info (workshop_id,workshop_name,address,location_name,city,state,country,contact_person_name,contact_nbr,email_id,caption,prefix,suffix,tin_no,company_name,cin_no,service_tax_no,owner_number,daily_notifications,template,gst_number,reset_invoice,pincode,website,jma_flag,tnm,about_us,geo_location)
    Rules:
    - Always use explicit table names for columns (e.g., customer_vehicle_info.customer_id).
    - Always use JOIN syntax for combining tables.
    Query: '{query}'
    """
    response = cached_ollama_response(prompt)
    sql = response.strip()
    sql = clean_sql(sql)
    return sql

def get_general_knowledge(query: str) -> str:
    return cached_ollama_response(query)

def find_aggregate_key(row: dict, keywords: list) -> str:
    for key in row.keys():
        key_norm = re.sub(r'[^a-z0-9]', '', key.lower())
        for word in keywords:
            if word in key_norm:
                return key
    return None

def format_results(query: str, results: list) -> str:
    if not results:
        return "No matching records found in the database."

    query_lower = query.lower()
    is_aggregate = any(word in query_lower for word in ["count", "how many", "number of", "average", "avg", "max", "minimum", "min"])

    if is_aggregate:
        row = results[0]
        if any(word in query_lower for word in ["count", "how many", "number of"]):
            count_key = find_aggregate_key(row, ["count"])
            count = row.get(count_key, len(results)) if count_key else len(results)
            return f"There are {count} records matching your query."
        elif any(word in query_lower for word in ["average", "avg"]):
            avg_key = find_aggregate_key(row, ["avg", "average"])
            avg = row.get(avg_key, "N/A")
            return f"The average value is {avg}."
        elif any(word in query_lower for word in ["max"]):
            max_key = find_aggregate_key(row, ["max"])
            max_val = row.get(max_key, "N/A")
            return f"The maximum value is {max_val}."
        elif any(word in query_lower for word in ["minimum", "min"]):
            min_key = find_aggregate_key(row, ["min", "minimum"])
            min_val = row.get(min_key, "N/A")
            return f"The minimum value is {min_val}."

    if len(results) == 1:
        row = results[0]
        details = [f"{col}: {val}" for col, val in row.items()]
        return "Details:\n• " + "\n• ".join(details)

    formatted_rows = []
    for row in results:
        row_str = ", ".join([f"{col}: {val}" for col, val in row.items()])
        formatted_rows.append(row_str)
    return f"Found {len(results)} records matching your query:\n" + "\n".join(formatted_rows)