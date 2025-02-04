class Partner:
    def __init__(self,
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
                 total_sales=0):
        self.id = id
        self.partner_type = partner_type
        self.partner_name = partner_name
        self.director_last_name = director_last_name
        self.director_first_name = director_first_name
        self.director_middle_name = director_middle_name
        self.email = email
        self.phone = phone
        self.adress_index = adress_index
        self.adress_region = adress_region
        self.adress_city = adress_city
        self.adress_street = adress_street
        self.adress_building = adress_building
        self.inn = inn
        self.rating = rating
        self.total_sales = total_sales
