## automotive ------------------
automotive_ar_SA = R6Class(
  'automotive_ar_SA',
  inherit = automotive_en_US,
  cloneable = FALSE,
  private = list(
    # Source =
    # https =//en.wikipedia.org/wiki/Vehicle_registration_plates_of_Saudi_Arabia
    LICENSE_FORMAT_EN = '#### ???',
    LICENSE_FORMAT_AR = '? ? ? ####',

    PLATE_CHARS_EN = c(
      "A", "B", "D", "E", "G", "H", "J", "K",
      "L", "N", "R", "S", "T", "U", "V", "X", "Z"),

    PLATE_CHARS_AR = c(
      "\u0623", "\u0628", "\u062f", "\u0639", "\u0642",
      "\u0647", "\u062d", "\u0643", "\u0644", "\u0646",
      "\u0631", "\u0633", "\u0637", "\u0648", "\u0649",
      "\u0635", "\u0645"),
    PLATE_MAP = c(
      "A" = "\u0627",
      "B" = "\u0628",
      "D" = "\u062f",
      "E" = "\u0639",
      "G" = "\u0642",
      "H" = "\u0647",
      "J" = "\u062d",
      "K" = "\u0643",
      "L" = "\u0644",
      "N" = "\u0646",
      "R" = "\u0631",
      "S" = "\u0633",
      "T" = "\u0637",
      "U" = "\u0648",
      "V" = "\u0649",
      "X" = "\u0635",
      "Z" = "\u0645",
      "0" = "\u0660",
      "1" = "\u0661",
      "2" = "\u0662",
      "3" = "\u0663",
      "4" = "\u0664",
      "5" = "\u0665",
      "6" = "\u0666",
      "7" = "\u0667",
      "8" = "\u0668",
      "9" = "\u0669"
    ),
    translate_license_plate = function(license_plate){
      temp = str_split(license_plate, "")[[1]]
      temp_nums = temp[seq(4)]
      temp_chars = temp[seq(6, 8)]

      license = private$LICENSE_FORMAT_AR

      for (i in seq(4)){
        license = str_replace(
          license, "#", unname(private$PLATE_MAP[temp_nums[i]]))
      }

      for (i in seq(3)){
        license = str_replace(
          license, "\\?", unname(private$PLATE_MAP[temp_chars[4-i]]))
      }
      return(license)
    }
  ),

  public = list(
    license_plate_en = function(){
      return(private$bothify(private$LICENSE_FORMAT_EN,
                             full_letters = private$PLATE_CHARS_EN))
    },

    license_plate_ar = function(){
      english_plate = self$license_plate_en()
      return(private$translate_license_plate(english_plate))
    },

    license_plate = function(){
      en_plate = self$license_plate_en()
      ar_plate = private$translate_license_plate(en_plate)

      return(c(en_plate, ar_plate))
    }
  )
)

## person ---------------------------------------
person_ar_SA = R6Class(
  "person_ar_SA",
  inherit = person_ar_AA,
  cloneable = FALSE,
  private = list(
    last_names = c(
      "\u062d\u062c\u0627\u0631",
      "\u0622\u0644 \u0627\u0644\u0634\u064a\u062e",
      "\u0627\u0644\u062d\u062c\u0627\u0631",
      "\u062d\u0646\u0628\u0648\u0644\u064a",
      "\u0622\u0644 \u0633\u0639\u0648\u062f",
      "\u0622\u0644 \u0639\u0644\u064a",
      "\u0622\u0644 \u062c\u0639\u0641\u0631",
      "\u0623\u0628\u0627 \u0627\u0644\u062e\u064a\u0644",
      "\u0627\u0644\u0645\u0647\u0646\u0627",
      "\u0645\u0647\u0646\u0627",
      "\u0628\u0646 \u0644\u0627\u062f\u0646",
      "\u0643\u0627\u0646\u0648",
      "\u0627\u0644\u062c\u0641\u0627\u0644\u064a",
      "\u0641\u0635\u064a\u0644",
      "\u0622\u0644 \u0631\u0641\u064a\u0639",
      "\u0622\u0644 \u0628\u0646 \u0644\u0627\u0641\u064a",
      "\u0622\u0644 \u0627\u0644\u0639\u0633\u0643\u0631\u064a",
      "\u0622\u0644 \u0628\u0646 \u0638\u0627\u0641\u0631",
      "\u0622\u0644 \u0639\u0648\u0627\u0636",
      "\u0627\u0644\u0645\u0634\u0627\u0648\u0644\u0629",
      "\u0622\u0644 \u0645\u0642\u0637\u0629",
      "\u0622\u0644 \u0639\u0627\u064a\u0636",
      "\u0622\u0644 \u0645\u0639\u064a\u0636",
      "\u0622\u0644 \u062d\u0633\u064a\u0646",
      "\u0627\u0644\u0645\u063a\u0627\u0648\u0644\u0629",
      "\u0622\u0644 \u062e\u0636\u064a\u0631",
      "\u0622\u0644 \u0635\u0641\u0648\u0627\u0646",
      "\u0622\u0644 \u0645\u062d\u0645\u062f \u0628\u0646 \u0639\u0644\u064a \u0628\u0646 \u062c\u0645\u0627\u0632",
      "\u0622\u0644 \u0639\u0637\u0641\u0629",
      "\u0622\u0644 \u0642\u0635\u064a\u0631",
      "\u0622\u0644 \u0633\u0644\u0637\u0627\u0646",
      "\u0627\u0644\u0639\u0644\u064a\u0627\u0646",
      "\u0627\u0644\u0634\u0627\u064a\u0639",
      "\u0623\u0628\u0648 \u062f\u0627\u0648\u0648\u062f",
      "\u0627\u0644\u062f\u0628\u0627\u063a",
      "\u0627\u0644\u0639\u062c\u0644\u0627\u0646",
      "\u0627\u0644\u0631\u0627\u0634\u062f",
      "\u0627\u0644\u0645\u0647\u064a\u062f\u0628",
      "\u0627\u0644\u0639\u0642\u064a\u0644",
      "\u0634\u0631\u0628\u062a\u0644\u064a",
      "\u0627\u0644\u062e\u0631\u0627\u0641\u064a",
      "\u0623\u0628\u0648 \u062f\u0627\u0648\u0648\u062f",
      "\u0627\u0644\u062c\u0627\u0628\u0631",
      "\u0628\u0642\u0634\u0627\u0646",
      "\u0627\u0644\u062d\u0643\u064a\u0631"
    )
  )
)
## company  ------------
company_ar_SA = R6Class(
  "company_ar_SA",
  inherit = company_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_ar_SA$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_SA$new())$first_name,
    last_names = (person_ar_SA$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_SA$new())$last_name
  )
)



## credit_card -----------------
credit_card_ar_SA = R6Class(
  "credit_card_ar_SA",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_ar_SA$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_SA$new())$first_name,
    last_names = (person_ar_SA$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_SA$new())$last_name
  )
)



## address ------------------------
address_ar_SA = R6Class(
  "address_ar_SA",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_ar_SA$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_SA$new())$first_name,
    last_names = (person_ar_SA$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_SA$new())$last_name
  )
)



## internet --------------------
internet_ar_SA = R6Class(
  "internet_ar_SA",
  cloneable = FALSE,
  inherit = internet_la,
  private = list(
    first_names = (person_ar_SA$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_SA$new())$first_name,
    last_names = (person_ar_SA$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_SA$new())$last_name
  ),
  public = list(
    domain_word = function() {
      company = (company_ar_SA$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = FALSE))
    }
  )
)


## profile ------------------
profile_ar_SA = R6Class(
  "profile_ar_SA",
  inherit = profile_init,
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
                    (person_ar_SA$new())$name_female(),
                    (person_ar_SA$new())$name_male())
      temp = list(
        "username" = (internet_ar_SA$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_ar_SA$new())$address(),
        "mail" = (internet_ar_SA$new())$free_email(),
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
        "company" = (company_ar_SA$new())$company(),
        "ssn" = (ssn_en_US$new())$ssn(),
        "residence" = (address_ar_SA$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_ar_SA$new())$url())
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
