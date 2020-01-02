## person -----------------------------------------
person_en_TH = R6Class(
  "person_en_TH",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{prefix} {first_name} {last_name}'),

    prefixes_male = c(
      "GEN", "LT GEN", "MAJ GEN", "COL", "LT COL", "MAJ", "CAPT", "LT", "SUB LT",
      "S M 1", "S M 2", "S M 3", "SGT", "CPL", "PFC", "PVT", "ADM", "V ADM",
      "R ADM", "CAPT", "CDR", "L CDR", "LT", "LT JG", "SUB LT", "CPO 1", "CPO 2",
      "CPO 3", "PO 1", "PO 2", "PO 3", "SEA-MAN", "ACM", "AM", "AVM", "GP CAPT",
      "WG CDR", "SQN LDR", "FLT LT", "FLG OFF", "PLT OFF", "FS 1", "FS 2", "FS 3",
      "SGT", "CPL", "LAC", "AMN", "POL GEN", "POL LT GEN", "POL MAJ GEN",
      "POL COL", "POL LT COL", "POL MAJ", "POL CAPT", "POL LT", "POL SUB LT",
      "POL SEN SGT MAJ", "POL SGT MAJ", "POL SGT", "POL CPL", "POL L/C",
      "POL CONST", "MR", "REV", "M L", "M R", "SAMANERA", "PHRA",
      "PHRA ATHIKAN", "CHAO ATHIKAN", "PHRAPALAD", "PHRASAMU", "PHRABAIDIKA",
      "PHRAKHU PALAD", "PHRAKHU SAMU", "PHRAKHU BAIDIKA", "PHRAMAHA",
      "PHRAKHU DHAMMADHORN", "PHRAKHU VINAIDHORN"),

    prefixes_female = c(
      "GEN",
      "LT GEN",
      "MAJ GEN",
      "COL",
      "LT COL",
      "MAJ",
      "CAPT",
      "LT",
      "SUB LT",
      "S M 1",
      "S M 2",
      "S M 3",
      "SGT",
      "CPL",
      "PFC",
      "PVT",
      "ADM",
      "V ADM",
      "R ADM",
      "CAPT",
      "CDR",
      "L CDR",
      "LT",
      "LT JG",
      "SUB LT",
      "CPO 1",
      "CPO 2",
      "CPO 3",
      "PO 1",
      "PO 2",
      "PO 3",
      "SEA-MAN",
      "ACM",
      "AM",
      "AVM",
      "GP CAPT",
      "WG CDR",
      "SQN LDR",
      "FLT LT",
      "FLG OFF",
      "PLT OFF",
      "FS 1",
      "FS 2",
      "FS 3",
      "SGT",
      "CPL",
      "LAC",
      "AMN",
      "POL GEN",
      "POL LT GEN",
      "POL MAJ GEN",
      "POL COL",
      "POL LT COL",
      "POL MAJ",
      "POL CAPT",
      "POL LT",
      "POL SUB LT",
      "POL SEN SGT MAJ",
      "POL SGT MAJ",
      "POL SGT",
      "POL CPL",
      "POL L/C",
      "POL CONST",
      "MRS",
      "MISS",
      "REV",
      "M L"),

    prefixes = c(
      "GEN", "LT GEN", "MAJ GEN", "COL", "LT COL", "MAJ", "CAPT", "LT", "SUB LT",
      "S M 1",
      "S M 2", "S M 3", "SGT", "CPL", "PFC", "PVT", "ADM", "V ADM", "R ADM", "CAPT",
      "CDR",
      "L CDR", "LT", "LT JG", "SUB LT", "CPO 1", "CPO 2", "CPO 3", "PO 1", "PO 2",
      "PO 3",
      "SEA-MAN", "ACM", "AM", "AVM", "GP CAPT", "WG CDR", "SQN LDR", "FLT LT",
      "FLG OFF",
      "PLT OFF", "FS 1", "FS 2", "FS 3", "SGT", "CPL", "LAC", "AMN", "POL GEN",
      "POL LT GEN", "POL MAJ GEN", "POL COL", "POL LT COL", "POL MAJ", "POL CAPT",
      "POL LT",
      "POL SUB LT", "POL SEN SGT MAJ", "POL SGT MAJ", "POL SGT", "POL CPL", "POL L/C",
      "POL CONST", "MR", "REV", "M L", "M R", "SAMANERA", "PHRA",
      "PHRA ATHIKAN", "CHAO ATHIKAN", "PHRAPALAD", "PHRASAMU", "PHRABAIDIKA",
      "PHRAKHU PALAD", "PHRAKHU SAMU", "PHRAKHU BAIDIKA", "PHRAMAHA",
      "PHRAKHU DHAMMADHORN",
      "PHRAKHU VINAIDHORN",
      "GEN",
      "LT GEN",
      "MAJ GEN",
      "COL",
      "LT COL",
      "MAJ",
      "CAPT",
      "LT",
      "SUB LT",
      "S M 1",
      "S M 2",
      "S M 3",
      "SGT",
      "CPL",
      "PFC",
      "PVT",
      "ADM",
      "V ADM",
      "R ADM",
      "CAPT",
      "CDR",
      "L CDR",
      "LT",
      "LT JG",
      "SUB LT",
      "CPO 1",
      "CPO 2",
      "CPO 3",
      "PO 1",
      "PO 2",
      "PO 3",
      "SEA-MAN",
      "ACM",
      "AM",
      "AVM",
      "GP CAPT",
      "WG CDR",
      "SQN LDR",
      "FLT LT",
      "FLG OFF",
      "PLT OFF",
      "FS 1",
      "FS 2",
      "FS 3",
      "SGT",
      "CPL",
      "LAC",
      "AMN",
      "POL GEN",
      "POL LT GEN",
      "POL MAJ GEN",
      "POL COL",
      "POL LT COL",
      "POL MAJ",
      "POL CAPT",
      "POL LT",
      "POL SUB LT",
      "POL SEN SGT MAJ",
      "POL SGT MAJ",
      "POL SGT",
      "POL CPL",
      "POL L/C",
      "POL CONST",
      "MRS",
      "MISS",
      "REV",
      "M L"
    ),

    first_names = c(
      "Pornchanok",
      "Patchaploy",
      "Peem",
      "Kodchaporn",
      "Pattapon",
      "Sarunporn",
      "Jinjuta",
      "Sorawut",
      "Suvakit",
      "Prima",
      "Darin",
      "Pintusorn",
      "Kulnun",
      "Nutcha",
      "Nutkrita",
      "Sittikorn",
      "Wasin",
      "Apisara",
      "Nattawun",
      "Tunradee",
      "Niracha",
      "Tunchanok",
      "Kamolchanok",
      "Jaruwan",
      "Pachongruk",
      "Pakjira",
      "Pattatomporn",
      "Suwijuk",
      "Noppakao",
      "Ratchanon",
      "Atit",
      "Kunaporn",
      "Arisara",
      "Todsawun",
      "Chaiwut",
      "Puntira",
      "Supasita",
      "Patcharaporn",
      "Phubes",
      "Pattamon",
      "Chanya",
      "Pannawich",
      "Chawin",
      "Pada",
      "Chanikan",
      "Nutwadee",
      "Chalisa",
      "Prames",
      "Supasit",
      "Sitiwat",
      "Teetat",
      "Yada",
      "Phenphitcha",
      "Anon",
      "Chaifah",
      "Pawan",
      "Aunyaporn",
      "Yanisa",
      "Pak",
      "Chayanin",
      "Chayapat",
      "Jitrin",
      "Wassaya",
      "Pitipat",
      "Nichakarn",
      "Parin",
      "Thanatcha"
    ),

    last_names = c(
      "Prachayaroch", "Prachayaroch", "Kamalanon", "Tianvarich", "Bunlerngsri",
      "Sukhenai",
      "Posalee", "Chaisatit", "Sujjaboriboon", "Kamalanon", "Neerachapong",
      "Pianduangsri",
      "Pasuk", "Losatapornpipit", "Suraprasert", "Matinawin", "Choeychuen", "Wasunun",
      "Kumsoontorn", "Sireelert", "Boonpungbaramee", "Sorattanachai", "Benchapatranon",
      "Intaum", "Pikatsingkorn", "Srisoontorn", "Polpo", "Kongchayasukawut",
      "Charoensuksopol", "Bunlupong", "Chomsri", "Tungkasethakul", "Chowitunkit",
      "Todsapornpitakul", "Wimolnot", "Kittakun", "Methavorakul", "Pitanuwat",
      "Phusilarungrueng", "Turongkinanon", "Kitprapa", "Pothanun", "Youprasert",
      "Methavorakul", "Vethayasas", "Sooksawang", "Anekvorakul", "Pichpandecha",
      "Sittisaowapak", "Suraprachit", "Kongsri", "Trikasemmart", "Habpanom",
      "Wannapaitoonsri", "Vinyuvanichkul", "Pongpanitch", "Permchart", "Chaihirankarn",
      "Thantananont", "Norramon", "Prayoonhong", "Lertsattayanusak", "Polauaypon",
      "Prakalpawong", "Titipatrayunyong", "Krittayanukoon", "Siripaiboo")
  )
)

## company -----------------
company_en_TH = R6Class(
  "company_en_TH",
  inherit = company_en_US,
  cloneable = FALSE,
  private = list(
    last_names = (person_en_TH$new())$.__enclos_env__$private$last_names,
    last_name = (person_en_TH$new())$last_name
  )
)
## credit_card -----------------
credit_card_en_TH = R6Class(
  "credit_card_en_TH",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_en_TH$new())$.__enclos_env__$private$first_names,
    first_name = (person_en_TH$new())$first_name,
    last_names = (person_en_TH$new())$.__enclos_env__$private$last_names,
    last_name = (person_en_TH$new())$last_name
  )
)



## address ----------------------
address_en_TH = R6Class(
  "address_en_TH",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_en_TH$new())$.__enclos_env__$private$first_names,
    first_name = (person_en_TH$new())$first_name,
    last_names = (person_en_TH$new())$.__enclos_env__$private$last_names,
    last_name = (person_en_TH$new())$last_name
  )
)

## internet -----------------
internet_en_TH = R6Class(
  "internet_en_TH",
  inherit = internet_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_en_TH$new())$.__enclos_env__$private$first_names,
    last_names = (person_en_TH$new())$.__enclos_env__$private$last_names,
    first_name = (person_en_TH$new())$first_name,
    last_name = (person_en_TH$new())$last_name
  ),
  public = list(
    domain_word = function() {
      company = (company_en_TH$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    }
  )
)
## profile ------------------
profile_en_TH = R6Class(
  "profile_en_TH",
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
                    (person_en_TH$new())$name_female(),
                    (person_en_TH$new())$name_male())
      temp = list(
        "username" = (internet_en_TH$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_en_TH$new())$address(),
        "mail" = (internet_en_TH$new())$free_email(),
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
        "company" = (company_en_TH$new())$company(),
        "ssn" = (ssn_en_US$new())$ssn(),
        "residence" = (address_en_TH$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_en_TH$new())$url())
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










