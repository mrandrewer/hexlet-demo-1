import psycopg2
import settings
from model.PatrnerType import PartnerType
from model.Partner import Partner


def create_connection():
    conn_str = f"host={settings.db_params['host']} " + \
        f"port={settings.db_params['port']} " + \
        f"dbname={settings.db_params['dbname']} " + \
        f"user={settings.db_params['user']} " + \
        f"password={settings.db_params['password']} "
    conn = psycopg2.connect(conn_str)
    return conn


def get_partner_types():
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("""
        select
            id,
            partner_type_name
        from partner_types
    """)
    records = cursor.fetchall()
    result = []
    for record in records:
        result.append(PartnerType(*record))
    cursor.close()
    conn.close()
    return result


def get_partners():
    conn = create_connection()
    cursor = conn.cursor()
    cursor.execute("""
        with total_sales as (
            select pp.partner_id, sum(pp.amount) as total_sales
            from partner_products pp
            group by pp.partner_id
        )
        select
            id,
            partner_type,
            partner_name,
            director_last_name,
            director_first_name,
            director_middle_name,
            email,
            phone,
            adress_index,
            adress_region,
            adress_city,
            adress_street,
            adress_building,
            inn,
            rating,
            total_sales
        from partners
            left join total_sales
                on partners.id = total_sales.partner_id
    """)
    records = cursor.fetchall()
    result = []
    for record in records:
        result.append(Partner(*record))
    cursor.close()
    conn.close()
    return result
