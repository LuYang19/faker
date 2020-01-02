## ssn -----------------------------------------
ssn_en_IE = R6Class(
  "ssn_en_IE",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = c(
      'IE#?#####?',
      'IE#######?',
      'IE#######??'
    )
  ),

  public = list(
    # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
    # :return: a random Austrian VAT ID
    vat_id = function() {
      temp = private$random_element(private$vat_id_formats)
      return(private$bothify(temp))
    }
  )
)

## profile   -----------------------------------
profile_en_IE = R6Class(
  "profile_en_IE",
  inherit = profile_init,
  cloneable = FALSE,
  public = list(
    profile = function(fields, sex) {
      # Generates a complete profile.
      # If "fields" is not empty, only the fields in the list will be returned

      if (missing(fields)) fields = c()

      field = list(
        "job" = (job_init$new())$job(),
        "company" = (company_en_US$new())$company(),
        "ssn" = (ssn_en_IE$new())$ssn(),
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
