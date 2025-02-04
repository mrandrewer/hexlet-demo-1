from model.Partner import Partner


def calculate_partner_discount(partner: Partner):
    if partner.total_sales < 10000:
        return 0
    if partner.total_sales < 50000:
        return 5
    if partner.total_sales < 300000:
        return 10
    return 15
