## automotive ----------------------
automotive_ar_JO = R6Class(
  "automotive_ar_JO",
  inherit = automotive_init,
  cloneable = FALSE,
  private = list(
    # Source:
    # https://en.wikipedia.org/wiki/Vehicle_registration_plates_of_Jordan
    license_formats = c(
      '{initials}-####',
      '{initials}-#####')
  ),

  public = list(
    initials = function() {
      temp = c(
        '1',  # Ministers
        '2', '3',  # Parliament
        '5',  # General Government
        '6',  # Aqaba free zone
        '7', '8',  # Diplomatic
        '9',  # Temporary
        '10', '23',  # Passenger cars
        '38', '39',  # Crew cabs
        '41', '42',  # Light goods vehicles
        '44',  # Tractors
        '46',  # Motorcycles and scooters
        '50',  # Taxi
        '56',  # Small buses
        '58',  # Coaches
        '60',  # HGVs
        '70',  # Rental Cars
        '71',  # Trailer
        '90',  # Army
        '95',  # Ambulance
        '96',  # Gendarmerie
        '99'  # Police
      )
      return(private$random_element(temp))
    },

    license_plate = function(){
      pattern = private$random_element(private$license_formats)
      return(private$numerify(private$format_parse(pattern)))
    }
  )
)

## phone_number ---------------------------
phone_number_ar_JO = R6Class(
  "phone_number_ar_JO",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    cellphone_formats = c(
      '+9627{operator_id}#######',
      '+962 7 {operator_id}### ####',
      '07{operator_id}#######',
      '07{operator_id} ### ####'),

    telephone_formats = c(
      '+962{area_code}#######',
      '+962 {area_code} ### ####',
      '0{area_code}#######',
      '0{area_code} ### ####'),

    services_phones_formats = c(
      '9##',
      '12##',
      '13##',
      '14##'),

    formats = c(
      '+9627{operator_id}#######',
      '+962 7 {operator_id}### ####',
      '07{operator_id}#######',
      '07{operator_id} ### ####',
      '+962{area_code}#######',
      '+962 {area_code} ### ####',
      '0{area_code}#######',
      '0{area_code} ### ####',
      '9##',
      '12##',
      '13##',
      '14##')
  ),

  public = list(
    operator_id = function() {
      return(sample(c("4", "7", "8", "9"), 1))
    },

    area_code = function() {
      return(sample(c("2", "3", "5", "6", "7"), 1))
    },

    cellphone_number = function() {
      pattern = private$random_element(private$cellphone_formats)
      return(private$numerify(private$format_parse(pattern)))
    },

    telephone_number = function() {
      pattern = private$random_element(private$telephone_formats)
      return(private$numerify(private$format_parse(pattern)))
    },

    service_phone_number = function() {
      pattern = private$random_element(private$services_phones_formats)
      return(private$numerify(private$format_parse(pattern)))
    },

    phone_number = function() {
      pattern = private$random_element(private$formats)
      return(private$numerify(private$format_parse(pattern)))
    }
  )
)
