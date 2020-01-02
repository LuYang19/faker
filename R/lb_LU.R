# ssn ---------------------------------------
ssn_lb_LU = R6Class(
  "ssn_lb_LU",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = 'LU########'
  ),

  public = list(
    # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
    # :return: a random Luxembourgish VAT ID
    vat_id = function(){
      return(private$bothify(private$random_element(private$vat_id_formats)))
    }
  )
)

# profile ------------------
profile_lb_LU = R6Class(
  "profile_lb_LU",
  inherit = profile_en_US,
  cloneable = FALSE,
  public = list(
    simple_profile = function(sex) {
      # Generates a basic profile with personal informations
      SEX = c("F", "M")
      if (missing(sex)) {
        sex = sample(SEX, 1)
      }
      if (!(sex %in% SEX)) {
        sex = sample(SEX, 1)
      }

      name = ifelse(sex == "F",
                    (person_en_US$new())$name_female(),
                    (person_en_US$new())$name_male())
      temp = list(
        "username" = (internet_en_US$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_en_US$new())$address(),
        "mail" = (internet_en_US$new())$free_email(),
        "birthdate" = (date_time_init$new())$date_of_birth()
      )
      return(temp)
    },

    profile = function(fields, sex) {
      # Generates a complete profile.
      # If "fields" is not empty, only the fields in the list will be returned

      if (missing(fields)) fields = c()

      field = list(
        "job" = (job_init$new())$job(),
        "company" = (company_en_US$new())$company(),
        "ssn" = (ssn_lb_LU$new())$ssn(),
        "residence" = (address_en_US$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_en_US$new())$url())
      )

      field = append(field, self$simple_profile(sex))
      # field selection

      if (length(fields)) {
        nms = intersect(names(field), fields)
        field = field[nms]
      }
      return(field)
    }

  )
)

