# person ------------------------------
person_es_CA = R6Class(
  "person_es_CA",
  inherit = person_es_ES,
  cloneable = FALSE,
  private = list(
    # Adds popular Catalan names.
    # https://www.idescat.cat/pub/?id=aec&n=946&lang=es&t=2018
    # https://www.idescat.cat/pub/?id=aec&n=947&lang=es&t=2018

    first_names_male = c(
      "Adam",
      "Albert",
      "Aleix",
      "\u00c1lex",
      "Antonio",
      "Arnau",
      "Biel",
      "Bruno",
      "Carlos",
      "Daniel",
      "David",
      "Enzo",
      "\u00c8ric",
      "Francisco",
      "Hugo",
      "Jan",
      "Javier",
      "Joan",
      "Jordi",
      "Jorge",
      "Josep",
      "Jos\u00e9",
      "Jos\u00e9 Mar\u00eda",
      "Juan",
      "Leo",
      "Lucas",
      "Manuel",
      "Marc",
      "Mart\u00ed",
      "Max",
      "Miguel",
      "Nil",
      "Pau",
      "Pedro",
      "Pol",
      "Ram\u00f3n",
      "Xavier"
    ),

    first_names_female = c(
      "Abril",
      "Aina",
      "Ana",
      "Anna",
      "Antonia",
      "Ant\u00f2nia",
      "Arlet",
      "Carla",
      "Carmen",
      "Chl\u00f3e",
      "Cl\u00e0udia",
      "Cristina",
      "Dolores",
      "Emma",
      "Francisca",
      "Isabel",
      "Jana",
      "Josefa",
      "J\u00falia",
      "Laia",
      "Laura",
      "Lucia",
      "Marta",
      "Martina",
      "Mar\u00eda",
      "Mar\u00eda Del Carmen",
      "Mar\u00eda Dolores",
      "Mar\u00eda Teresa",
      "Mia",
      "Montserrat",
      "Noa",
      "N\u00faria",
      "Ona",
      "Paula",
      "Rosa",
      "Sara",
      "Sof\u00eda",
      "S\u00edlvia",
      "Val\u00e8ria"
    ),

    first_names = c(
      "Adam",
      "Albert",
      "Aleix",
      "\u00c1lex",
      "Antonio",
      "Arnau",
      "Biel",
      "Bruno",
      "Carlos",
      "Daniel",
      "David",
      "Enzo",
      "\u00c8ric",
      "Francisco",
      "Hugo",
      "Jan",
      "Javier",
      "Joan",
      "Jordi",
      "Jorge",
      "Josep",
      "Jos\u00e9",
      "Jos\u00e9 Mar\u00eda",
      "Juan",
      "Leo",
      "Lucas",
      "Manuel",
      "Marc",
      "Mart\u00ed",
      "Max",
      "Miguel",
      "Nil",
      "Pau",
      "Pedro",
      "Pol",
      "Ram\u00f3n",
      "Xavier",
      "Abril",
      "Aina",
      "Ana",
      "Anna",
      "Antonia",
      "Ant\u00f2nia",
      "Arlet",
      "Carla",
      "Carmen",
      "Chl\u00f3e",
      "Cl\u00e0udia",
      "Cristina",
      "Dolores",
      "Emma",
      "Francisca",
      "Isabel",
      "Jana",
      "Josefa",
      "J\u00falia",
      "Laia",
      "Laura",
      "Lucia",
      "Marta",
      "Martina",
      "Mar\u00eda",
      "Mar\u00eda Del Carmen",
      "Mar\u00eda Dolores",
      "Mar\u00eda Teresa",
      "Mia",
      "Montserrat",
      "Noa",
      "N\u00faria",
      "Ona",
      "Paula",
      "Rosa",
      "Sara",
      "Sof\u00eda",
      "S\u00edlvia",
      "Val\u00e8ria"
    )
  )
)

# address -----------------------------
address_es_CA = R6Class(
  "address_es_CA",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_es_CA$new())$.__enclos_env__$private$first_names,
    last_names = (person_es_CA$new())$.__enclos_env__$private$last_names,
    first_name = (person_es_CA$new())$first_name,
    last_name = (person_es_CA$new())$last_name
  )
)

# company ---------------------------------
company_es_CA = R6Class(
  "company_es_CA",
  inherit = company_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_es_CA$new())$.__enclos_env__$private$first_names,
    last_names = (person_es_CA$new())$.__enclos_env__$private$last_names,

    first_name = (person_es_CA$new())$first_name,
    last_name = (person_es_CA$new())$last_name
  )
)
## credit_card -----------------
credit_card_es_CA = R6Class(
  "credit_card_es_CA",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_es_CA$new())$.__enclos_env__$private$first_names,
    first_name = (person_es_CA$new())$first_name,
    last_names = (person_es_CA$new())$.__enclos_env__$private$last_names,
    last_name = (person_es_CA$new())$last_name
  )
)



## internet -----------------
internet_es_CA = R6Class(
  "internet_es_CA",
  inherit = internet_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_es_CA$new())$.__enclos_env__$private$first_names,
    last_names = (person_es_CA$new())$.__enclos_env__$private$last_names,
    first_name = (person_es_CA$new())$first_name,
    last_name = (person_es_CA$new())$last_name
  ),
  public = list(
    domain_word = function() {
      company = (company_es_CA$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = FALSE))
    }
  )
)

## profile ------------------
profile_es_CA = R6Class(
  "profile_es_CA",
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
                    (person_es_CA$new())$name_female(),
                    (person_es_CA$new())$name_male())
      temp = list(
        "username" = (internet_es_CA$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_es_CA$new())$address(),
        "mail" = (internet_es_CA$new())$free_email(),
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
        "company" = (company_es_CA$new())$company(),
        "ssn" = (ssn_es_ES$new())$ssn(),
        "residence" = (address_es_CA$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_es_CA$new())$url())
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


