# person ----------------------------------------
person_lt_LT = R6Class(
  "person_lt_LT",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{last_name}, {first_name}'
    ),

    first_names = c(
      "Tomas",
      "Lukas",
      "Mantas",
      "Deividas",
      "Arnas",
      "Art\u016bras",
      "Karolis",
      "Dovydas",
      "Dominykas",
      "Darius",
      "Edvinas",
      "Jonas",
      "Martynas",
      "Kajus",
      "Donatas",
      "Andrius",
      "Matas",
      "Rokas",
      "Augustas",
      "Danielius",
      "Mindaugas",
      "Paulius",
      "Marius",
      "Armandas",
      "Edgaras",
      "Jok\u016bbas",
      "Nedas",
      "Tadas",
      "Nerijus",
      "Simonas",
      "Vytautas",
      "Art\u016bras",
      "Robertas",
      "Eimantas",
      "Arijus",
      "Nojus",
      "Egidijus",
      "Aurimas",
      "Emilis",
      "Laurynas",
      "Edvardas",
      "Joris",
      "Pijus",
      "Erikas",
      "Domas",
      "Vilius",
      "Evaldas",
      "Justinas",
      "Aleksandras",
      "Kristupas",
      "Gabrielius",
      "Benas",
      "Gytis",
      "Arminas",
      "Vakris",
      "Tautvydas",
      "Domantas",
      "Justas",
      "Markas",
      "Antanas",
      "Ar\u016bnas",
      "Ernestas",
      "Aronas",
      "Vaidas",
      "\u0104\u017euolas",
      "Titas",
      "Giedrius",
      "Ignas",
      "Povilas",
      "Saulius",
      "Julius",
      "Arvydas",
      "K\u0119stutis",
      "Rytis",
      "Aistis",
      "Gediminas",
      "Algirdas",
      "Naglis",
      "Irmantas",
      "Rolandas",
      "Aivaras",
      "Simas",
      "Faustas",
      "Ram\u016bnas",
      "\u0160ar\u016bnas",
      "Gustas",
      "Tajus",
      "Dainius",
      "Arnoldas",
      "Linas",
      "Rojus",
      "Adomas",
      "\u017dygimantas",
      "Ri\u010dardas",
      "Orestas",
      "Kipras",
      "Juozas",
      "Audrius",
      "Romualdas",
      "Petras",
      "Eleonora",
      "Raminta",
      "Dovil\u0117",
      "Sandra",
      "Dominyka",
      "Ana",
      "Erika",
      "Kristina",
      "Gintar\u0117",
      "R\u016bta",
      "Edita",
      "Karina",
      "\u017divil\u0117",
      "Jolanta",
      "Radvil\u0117",
      "Ramun\u0117",
      "Svetlana",
      "Ugn\u0117",
      "Egl\u0117",
      "Viktorija",
      "Justina",
      "Brigita",
      "Rasa",
      "Marija",
      "Giedr\u0117",
      "Iveta",
      "Sonata",
      "Vitalija",
      "Adrija",
      "Goda",
      "Paulina",
      "Kornelija",
      "Liepa",
      "Vakar\u0117",
      "Milda",
      "Meda",
      "Vaida",
      "Izabel\u0117",
      "Jovita",
      "Irma",
      "\u017demyna",
      "Leila",
      "Rimant\u0117",
      "Mant\u0117",
      "Ryt\u0117",
      "Perla",
      "Greta",
      "Monika",
      "Ieva",
      "Indr\u0117",
      "Ema",
      "Aurelija",
      "Smilt\u0117",
      "Ingrida",
      "Simona",
      "Amelija",
      "Sigita",
      "Olivija",
      "Laurita",
      "Jor\u016bn\u0117",
      "Leticija",
      "Vigilija",
      "Med\u0117ja",
      "Laura",
      "Agn\u0117",
      "Evelina",
      "Kotryna",
      "L\u0117ja",
      "Au\u0161ra",
      "Neringa",
      "Gerda",
      "Jurgita",
      "Rusn\u0117",
      "Au\u0161rin\u0117",
      "Rita",
      "Elena",
      "Ineta",
      "Ligita",
      "Vasar\u0117",
      "V\u0117j\u016bn\u0117",
      "Ign\u0117",
      "Gyt\u0117",
      "Ariana",
      "Ariel\u0117",
      "Vyt\u0117",
      "Eidvil\u0117",
      "Karolina",
      "Migl\u0117",
      "Vilt\u0117",
      "Jolanta",
      "Enrika",
      "Aur\u0117ja",
      "Vanesa",
      "Darija",
      "Reda",
      "Milana",
      "Rugil\u0117",
      "Diana"
    ),

    last_names = c(
      "Kazlauskas",
      "Jankauskas",
      "Petrauskas",
      "Pocius",
      "Stankevi\u010dius",
      "Vsiliauskas",
      "\u017dukauskas",
      "Butkus",
      "Paulauskas",
      "Urbonas",
      "Kavaliauskas",
      "Sakalauskas",
      "\u017dukauskas",
      "Akelis",
      "Ambrasas",
      "Kairys",
      "Kalvaitis",
      "Kalvelis",
      "Kalv\u0117nas",
      "Kaupas",
      "Ki\u0161ka",
      "Gagys",
      "Gailius",
      "Gailys",
      "Gai\u017eauskas",
      "Gai\u010di\u016bnas",
      "Galdikas",
      "Gintalas",
      "Ginzburgas",
      "Grinius",
      "Gronskis",
      "Nagys",
      "Naujokas",
      "Naru\u0161is",
      "Naus\u0117da",
      "Po\u0161ka",
      "Povilonis"
    )
  )
)

# phone_number --------------------------------------
phone_number_lt_LT = R6Class(
  "phone_number_lt_LT",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+370 ########',
      '+(370) ########',
      '+370########'
    )
  )
)
# ssn --------------------------------------
ssn_lt_LT = R6Class(
  "ssn_lt_LT",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = c(
      'LT#########',
      'LT############'
    )
  ),

  public = list(
    vat_id = function(){
      # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
      # :return: a random Lithuanian VAT ID
      return(private$bothify(private$random_element(private$vat_id_formats)))
    }
  )
)
# credit_card -----------------
credit_card_lt_LT = R6Class(
  "credit_card_lt_LT",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_lt_LT$new())$.__enclos_env__$private$first_names,
    first_name = (person_lt_LT$new())$first_name,
    last_names = (person_lt_LT$new())$.__enclos_env__$private$last_names,
    last_name = (person_lt_LT$new())$last_name
  )
)



# company -------------------------
company_lt_LT = R6Class(
  "company_lt_LT",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_lt_LT$new())$.__enclos_env__$private$first_names,
    first_name = (person_lt_LT$new())$first_name,
    last_names = (person_lt_LT$new())$.__enclos_env__$private$last_names,
    last_name = (person_lt_LT$new())$last_name
  )
)

# address -----------------------------------------------------------------
address_lt_LT = R6Class(
  "address_lt_LT",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_lt_LT$new())$.__enclos_env__$private$first_names,
    last_names = (person_lt_LT$new())$.__enclos_env__$private$last_names,
    first_name = (person_lt_LT$new())$first_name,
    last_name = (person_lt_LT$new())$last_name
  )
)


# profile   ------------
profile_lt_LT = R6Class(
  "profile_lt_LT",
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
                    (person_lt_LT$new())$name_female(),
                    (person_lt_LT$new())$name_male())
      temp = list(
        "username" = (internet_en_US$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_lt_LT$new())$address(),
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
        "company" = (company_lt_LT$new())$company(),
        "ssn" = (ssn_lt_LT$new())$ssn(),
        "residence" = (address_lt_LT$new())$address(),
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






