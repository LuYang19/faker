# person ------------------------------------------
person_lv_LV = R6Class(
  "person_lv_LV",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{last_name}, {first_name}'
    ),

    first_names = c(
      "\u0100dams",
      "\u0100dolfs",
      "Agris",
      "Aigars",
      "Ain\u0101rs",
      "Aivars",
      "Alberts",
      "Aldis",
      "Aleksandrs",
      "Alfr\u0113ds",
      "Andrejs",
      "Andris",
      "Andre\u0161s",
      "Ansis",
      "Antons",
      "Armands",
      "Arnis",
      "Arnolds",
      "Artis",
      "Arturs",
      "Art\u016brs",
      "Arv\u012bds",
      "Augusts",
      "B\u0113rends",
      "B\u0113rtulis",
      "Brencis",
      "Dainis",
      "Daniels",
      "D\u0101vis",
      "Dzintars",
      "Edgars",
      "Edmunds",
      "Eduards",
      "Edv\u012bns",
      "Egils",
      "Elm\u0101rs",
      "Elvis",
      "Em\u012bls",
      "\u0112riks",
      "Ermanis",
      "Ernests",
      "\u0112valds",
      "Fricis",
      "Gatis",
      "Gun\u0101rs",
      "Guntars",
      "Guntis",
      "\u0122ederts",
      "\u0122irts",
      "Hanss",
      "Harijs",
      "Henriks",
      "Hermanis",
      "Igors",
      "Ilm\u0101rs",
      "Imants",
      "Indri\u0137is",
      "Ivars",
      "Ivo",
      "Jakobs",
      "Janis",
      "J\u0101nis",
      "Jannis",
      "J\u0101zeps",
      "J\u0113kabs",
      "J\u0113kaubs",
      "Jezups",
      "Johans",
      "J\u016blijs",
      "Juris",
      "K\u0101rlis",
      "Kaspars",
      "Konradus",
      "Kristaps",
      "Kristers",
      "Krists",
      "Kri\u0161j\u0101nis",
      "Kri\u0161s",
      "Laimonis",
      "Lauris",
      "Leons",
      "Macs",
      "Mareks",
      "M\u0101ris",
      "M\u0101rti\u0146\u0161",
      "Mat\u012bss",
      "Mihels",
      "Mikels",
      "Mi\u0137elis",
      "Modris",
      "Nikolajs",
      "Niks",
      "Normunds",
      "O\u013c\u0123erts",
      "Oskars",
      "Osvalds",
      "Oto",
      "Pauls",
      "P\u0113teris",
      "Raimonds",
      "Raivis",
      "Reinis",
      "Ri\u010dards",
      "Rihards",
      "Roberts",
      "Rolands",
      "R\u016bdolfs",
      "Sandis",
      "Sta\u0146islavs",
      "Tenis",
      "Teodors",
      "Toms",
      "Uldis",
      "Valdis",
      "Viesturs",
      "Viktors",
      "Vilis",
      "Vilnis",
      "Vi\u013cums",
      "Visvaldis",
      "Vladislavs",
      "Voldem\u0101rs",
      "Ziedonis",
      "\u017danis",
      "Agnese",
      "Aiga",
      "Aija",
      "Aina",
      "Al\u012bda",
      "Alise",
      "Alma",
      "Alv\u012bne",
      "Am\u0101lija",
      "Anete",
      "Anita",
      "Anna",
      "Annija",
      "Anto\u0146ina",
      "Antra",
      "\u0100rija",
      "Ausma",
      "Austra",
      "Baba",
      "Baiba",
      "Berta",
      "Biruta",
      "Bro\u0146islava",
      "Dace",
      "Daiga",
      "Daina",
      "D\u0101rta",
      "Di\u0101na",
      "Doroteja",
      "Dzidra",
      "Dzintra",
      "Eda",
      "Ed\u012bte",
      "El\u012bna",
      "Elita",
      "Elizabete",
      "Elv\u012bra",
      "Elza",
      "Em\u012blija",
      "Emma",
      "\u0113rika",
      "Erna",
      "Eva",
      "Evija",
      "Evita",
      "Gaida",
      "Genovefa",
      "Gr\u0113ta",
      "Grieta",
      "Gunita",
      "Gunta",
      "Hel\u0113na",
      "Ieva",
      "Ilga",
      "Ilona",
      "Ilze",
      "Ina",
      "In\u0101ra",
      "Indra",
      "Inese",
      "Ineta",
      "Inga",
      "Ingr\u012bda",
      "Inguna",
      "Inta",
      "Ir\u0113na",
      "Irma",
      "Iveta",
      "Jana",
      "Janina",
      "J\u016ble",
      "J\u016bla",
      "J\u016blija",
      "Karina",
      "Karl\u012bna",
      "Katar\u012bna",
      "Katr\u012bna",
      "Krista",
      "Kristi\u0101na",
      "Laila",
      "Laura",
      "Lav\u012bze",
      "Leont\u012bne",
      "L\u012bba",
      "Lidija",
      "Liene",
      "L\u012bga",
      "Ligita",
      "Lilija",
      "Lilita",
      "L\u012bna",
      "Linda",
      "L\u012bza",
      "Lizete",
      "L\u016bcija",
      "Madara",
      "Made",
      "Maija",
      "M\u0101ra",
      "Mare",
      "Margareta",
      "Margrieta",
      "Marija",
      "M\u0101r\u012bte",
      "Marta",
      "Ma\u017ea",
      "Milda",
      "Minna",
      "Mirdza",
      "Monika",
      "Nat\u0101lija",
      "Olga",
      "Ot\u012blija",
      "Paula",
      "Paul\u012bna",
      "Rasma",
      "Reg\u012bna",
      "Rita",
      "Rud\u012bte",
      "Ruta",
      "Rute",
      "Samanta",
      "Sandra",
      "Sanita",
      "Santa",
      "Sapa",
      "Sarm\u012bte",
      "Silvija",
      "Sintija",
      "Skaidr\u012bte",
      "Solvita",
      "Tekla",
      "Tr\u012bne",
      "Valda",
      "Valent\u012bna",
      "Valija",
      "Velta",
      "Veneranda",
      "Vera",
      "Veronika",
      "Vija",
      "Vilma",
      "Vineta",
      "Vita",
      "Zane",
      "Zelma",
      "Zenta",
      "Zigr\u012bda"
    ),

    last_names = c(
      "\u0100bele",
      "\u0100boli\u0146\u0161",
      "\u0100bols",
      "Alksnis",
      "Apinis",
      "Aps\u012btis",
      "Auni\u0146\u0161",
      "Auzi\u0146\u0161",
      "Avoti\u0146\u0161",
      "Balodis",
      "Balti\u0146\u0161",
      "B\u0113rzi\u0146\u0161",
      "Birznieks",
      "Bite",
      "Briedis",
      "Caune",
      "Celmi\u0146\u0161",
      "Celms",
      "C\u012brulis",
      "Dzenis",
      "D\u016bmi\u0146\u0161",
      "Egl\u012btis",
      "Jaunzems",
      "Kal\u0113js",
      "Kalni\u0146\u0161",
      "Ka\u0146eps",
      "K\u0101rkli\u0146\u0161",
      "Kauli\u0146\u0161",
      "K\u013cavi\u0146\u0161",
      "Krasti\u0146\u0161",
      "Kr\u0113sli\u0146\u0161",
      "Krievi\u0146\u0161",
      "Krievs",
      "Kr\u016bmi\u0146\u0161",
      "Kr\u016bze",
      "Kundzi\u0146\u0161",
      "L\u0101cis",
      "Lagzdi\u0146\u0161",
      "Lapsa",
      "L\u012bcis",
      "Liepa",
      "Liepi\u0146\u0161",
      "Luksti\u0146\u0161",
      "L\u016bsis",
      "Paegle",
      "P\u0113rkons",
      "Podnieks",
      "Polis",
      "Priede",
      "Pried\u012btis",
      "Puri\u0146\u0161",
      "Purmals",
      "Rieksti\u0146\u0161",
      "Roze",
      "Roz\u012btis",
      "Rubenis",
      "Rudz\u012btis",
      "Saul\u012btis",
      "Sili\u0146\u0161",
      "Skuja",
      "Skuji\u0146\u0161",
      "Spro\u0123is",
      "Strazdi\u0146\u0161",
      "Turi\u0146\u0161",
      "Vanags",
      "V\u012bksna",
      "Vilci\u0146\u0161",
      "Vilks",
      "V\u012btoli\u0146\u0161",
      "V\u012btols",
      "Za\u0137is",
      "Z\u0101l\u012btis",
      "Zari\u0146\u0161",
      "Zelti\u0146\u0161",
      "Ziemelis",
      "Zirnis",
      "Zvaigzne",
      "Zvirbulis"
    )
  )
)

# phone_number ----------------------------------
phone_number_lv_LV = R6Class(
  "phone_number_lv_LV",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+371 ########',
      '+(371) ########',
      '+371########'
    )
  )
)

# ssn -------------------------------------------
ssn_lv_LV = R6Class(
  "ssn_lv_LV",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = 'LV###########'
  ),

  public = list(
    vat_id = function(){
      # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
      # :return: a random Latvian VAT ID
      return(private$bothify(private$random_element(private$vat_id_formats)))
    }
  )
)

# credit_card -----------------
credit_card_lv_LV = R6Class(
  "credit_card_lv_LV",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_lv_LV$new())$.__enclos_env__$private$first_names,
    first_name = (person_lv_LV$new())$first_name,
    last_names = (person_lv_LV$new())$.__enclos_env__$private$last_names,
    last_name = (person_lv_LV$new())$last_name
  )
)



# company -------------------------
company_lv_LV = R6Class(
  "company_lv_LV",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_lv_LV$new())$.__enclos_env__$private$first_names,
    first_name = (person_lv_LV$new())$first_name,
    last_names = (person_lv_LV$new())$.__enclos_env__$private$last_names,
    last_name = (person_lv_LV$new())$last_name
  )
)

# address -----------------------------------------------------------------
address_lv_LV = R6Class(
  "address_lv_LV",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_lv_LV$new())$.__enclos_env__$private$first_names,
    last_names = (person_lv_LV$new())$.__enclos_env__$private$last_names,
    first_name = (person_lv_LV$new())$first_name,
    last_name = (person_lv_LV$new())$last_name
  )
)

# profile   ------------
profile_lv_LV = R6Class(
  "profile_lv_LV",
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
                    (person_lv_LV$new())$name_female(),
                    (person_lv_LV$new())$name_male())
      temp = list(
        "username" = (internet_en_US$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_lv_LV$new())$address(),
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
        "company" = (company_lv_LV$new())$company(),
        "ssn" = (ssn_lv_LV$new())$ssn(),
        "residence" = (address_lv_LV$new())$address(),
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



