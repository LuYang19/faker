# bank ----------------------------------------
bank_no_NO = R6Class(
  "bank_no_NO",
  inherit = bank_init,
  cloneable = FALSE,
  private = list(
    bban_format = '###########',
    country_code = 'NO'
  )
)
# person --------------------------------------------------
person_no_NO = R6Class(
  "person_no_NO",
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
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name_male}-{first_name_male} {last_name}',
      '{first_name_male}-{first_name_male} {last_name}',
      '{first_name_female}-{first_name_female} {last_name}',
      '{first_name_female}-{first_name_female} {last_name}',
      '{first_name} {last_name}-{last_name}',
      '{first_name} {last_name}-{last_name}',
      '{prefix} {first_name_male} {last_name}'),

    first_names_male = c(
      "Adrian",
      "Alexander",
      "Alf",
      "Anders",
      "Andreas",
      "Arild",
      "Arne",
      "Asbj\u00f8rn",
      "Bj\u00f8rn",
      "Christian",
      "Dag",
      "Daniel",
      "Egil",
      "Einar",
      "Eirik",
      "Eivind",
      "Emil",
      "Erik",
      "Erling",
      "Espen",
      "Finn",
      "Frank",
      "Fredrik",
      "Frode",
      "Geir",
      "Gunnar",
      "Hans",
      "Harald",
      "Helge",
      "Henrik",
      "H\u00e5kon",
      "H\u00e5vard",
      "Ivar",
      "Jan",
      "Jens",
      "Joakim",
      "Johannes",
      "Johan",
      "John",
      "Jonas",
      "Jon",
      "J\u00f8rgen",
      "Karl",
      "Kenneth",
      "Kim",
      "Kjell",
      "Kjetil",
      "Knut",
      "K\u00e5re",
      "Kristian",
      "Kristoffer",
      "Lars",
      "Leif",
      "Magne",
      "Magnus",
      "Marius",
      "Markus",
      "Martin",
      "Mathias",
      "Morten",
      "Nils",
      "Odd",
      "Ola",
      "Olav",
      "Ole",
      "Per",
      "Petter",
      "P\u00e5l",
      "Roar",
      "Robert",
      "Roger",
      "Rolf",
      "Roy",
      "Rune",
      "Sander",
      "Sebastian",
      "Sigurd",
      "Simen",
      "Sindre",
      "Sondre",
      "Steinar",
      "Stein",
      "Stian",
      "Stig",
      "Svein",
      "Sverre",
      "Terje",
      "Thomas",
      "Thor",
      "Tobias",
      "Tommy",
      "Tom",
      "Torbj\u00f8rn",
      "Tore",
      "Tor",
      "Trond",
      "Vegard",
      "Vidar",
      "\u00d8ystein",
      "\u00d8yvind"
    ),

    # 100 most common female first names, alphabetically.
    # Source: http://www.ssb.no/a/navn/fornavn-kvinner-100.html
    first_names_female = c(
      "Andrea",
      "Anette",
      "Anita",
      "Anna",
      "Anne",
      "Ann",
      "Astrid",
      "Aud",
      "Bente",
      "Berit",
      "Bj\u00f8rg",
      "Britt",
      "Camilla",
      "Cathrine",
      "Cecilie",
      "Elin",
      "Elisabeth",
      "Elise",
      "Eli",
      "Ellen",
      "Else",
      "Emilie",
      "Emma",
      "Eva",
      "Gerd",
      "Grete",
      "Grethe",
      "Gro",
      "Gunn",
      "Hanna",
      "Hanne",
      "Hege",
      "Heidi",
      "Helene",
      "Hilde",
      "Ida",
      "Ingeborg",
      "Inger",
      "Ingrid",
      "Irene",
      "Janne",
      "Jenny",
      "Jorunn",
      "Julie",
      "Karen",
      "Karin",
      "Kari",
      "Karoline",
      "Kirsten",
      "Kjersti",
      "Kristine",
      "Kristin",
      "Laila",
      "Lene",
      "Linda",
      "Line",
      "Linn",
      "Lise",
      "Liv",
      "Malin",
      "Maren",
      "Marianne",
      "Maria",
      "Marie",
      "Mari",
      "Marit",
      "Marte",
      "Martine",
      "May",
      "Mette",
      "Mona",
      "Monica",
      "Nina",
      "Nora",
      "Ragnhild",
      "Randi",
      "Reidun",
      "Rita",
      "Ruth",
      "Sara",
      "Sigrid",
      "Silje",
      "Siri",
      "Sissel",
      "Siv",
      "Sofie",
      "Solveig",
      "Stine",
      "Synn\u00f8ve",
      "Thea",
      "Tone",
      "Tonje",
      "Torill",
      "Tove",
      "Trine",
      "Turid",
      "Unni",
      "Vilde",
      "Wenche",
      "\u00c5se"
    ),

    first_names = c(
      "Adrian",
      "Alexander",
      "Alf",
      "Anders",
      "Andreas",
      "Arild",
      "Arne",
      "Asbj\u00f8rn",
      "Bj\u00f8rn",
      "Christian",
      "Dag",
      "Daniel",
      "Egil",
      "Einar",
      "Eirik",
      "Eivind",
      "Emil",
      "Erik",
      "Erling",
      "Espen",
      "Finn",
      "Frank",
      "Fredrik",
      "Frode",
      "Geir",
      "Gunnar",
      "Hans",
      "Harald",
      "Helge",
      "Henrik",
      "H\u00e5kon",
      "H\u00e5vard",
      "Ivar",
      "Jan",
      "Jens",
      "Joakim",
      "Johannes",
      "Johan",
      "John",
      "Jonas",
      "Jon",
      "J\u00f8rgen",
      "Karl",
      "Kenneth",
      "Kim",
      "Kjell",
      "Kjetil",
      "Knut",
      "K\u00e5re",
      "Kristian",
      "Kristoffer",
      "Lars",
      "Leif",
      "Magne",
      "Magnus",
      "Marius",
      "Markus",
      "Martin",
      "Mathias",
      "Morten",
      "Nils",
      "Odd",
      "Ola",
      "Olav",
      "Ole",
      "Per",
      "Petter",
      "P\u00e5l",
      "Roar",
      "Robert",
      "Roger",
      "Rolf",
      "Roy",
      "Rune",
      "Sander",
      "Sebastian",
      "Sigurd",
      "Simen",
      "Sindre",
      "Sondre",
      "Steinar",
      "Stein",
      "Stian",
      "Stig",
      "Svein",
      "Sverre",
      "Terje",
      "Thomas",
      "Thor",
      "Tobias",
      "Tommy",
      "Tom",
      "Torbj\u00f8rn",
      "Tore",
      "Tor",
      "Trond",
      "Vegard",
      "Vidar",
      "\u00d8ystein",
      "\u00d8yvind",
      "Andrea",
      "Anette",
      "Anita",
      "Anna",
      "Anne",
      "Ann",
      "Astrid",
      "Aud",
      "Bente",
      "Berit",
      "Bj\u00f8rg",
      "Britt",
      "Camilla",
      "Cathrine",
      "Cecilie",
      "Elin",
      "Elisabeth",
      "Elise",
      "Eli",
      "Ellen",
      "Else",
      "Emilie",
      "Emma",
      "Eva",
      "Gerd",
      "Grete",
      "Grethe",
      "Gro",
      "Gunn",
      "Hanna",
      "Hanne",
      "Hege",
      "Heidi",
      "Helene",
      "Hilde",
      "Ida",
      "Ingeborg",
      "Inger",
      "Ingrid",
      "Irene",
      "Janne",
      "Jenny",
      "Jorunn",
      "Julie",
      "Karen",
      "Karin",
      "Kari",
      "Karoline",
      "Kirsten",
      "Kjersti",
      "Kristine",
      "Kristin",
      "Laila",
      "Lene",
      "Linda",
      "Line",
      "Linn",
      "Lise",
      "Liv",
      "Malin",
      "Maren",
      "Marianne",
      "Maria",
      "Marie",
      "Mari",
      "Marit",
      "Marte",
      "Martine",
      "May",
      "Mette",
      "Mona",
      "Monica",
      "Nina",
      "Nora",
      "Ragnhild",
      "Randi",
      "Reidun",
      "Rita",
      "Ruth",
      "Sara",
      "Sigrid",
      "Silje",
      "Siri",
      "Sissel",
      "Siv",
      "Sofie",
      "Solveig",
      "Stine",
      "Synn\u00f8ve",
      "Thea",
      "Tone",
      "Tonje",
      "Torill",
      "Tove",
      "Trine",
      "Turid",
      "Unni",
      "Vilde",
      "Wenche",
      "\u00c5se"
    ),

    # 100 most common last names, alphabetically.
    # Source: http://www.ssb.no/a/navn/alf/etter100.html
    last_names = c(
      "Aasen",
      "Aas",
      "Abrahamsen",
      "Ahmed",
      "Ali",
      "Amundsen",
      "Andersen",
      "Andreassen",
      "Andresen",
      "Antonsen",
      "Arnesen",
      "Aune",
      "Bakken",
      "Bakke",
      "Berge",
      "Berg",
      "Berntsen",
      "B\u00f8e",
      "Birkeland",
      "Brekke",
      "Christensen",
      "Dahl",
      "Danielsen",
      "Edvardsen",
      "Eide",
      "Eliassen",
      "Ellingsen",
      "Engen",
      "Eriksen",
      "Evensen",
      "Fredriksen",
      "Gulbrandsen",
      "Gundersen",
      "Hagen",
      "Halvorsen",
      "Hansen",
      "Hanssen",
      "Haugen",
      "Hauge",
      "Haugland",
      "Haug",
      "Helland",
      "Henriksen",
      "Holm",
      "Isaksen",
      "Iversen",
      "Jacobsen",
      "Jakobsen",
      "Jensen",
      "Jenssen",
      "Johannessen",
      "Johansen",
      "Johnsen",
      "J\u00f8rgensen",
      "Karlsen",
      "Knudsen",
      "Knutsen",
      "Kristensen",
      "Kristiansen",
      "Kristoffersen",
      "Larsen",
      "Lien",
      "Lie",
      "Lunde",
      "Lund",
      "Madsen",
      "Martinsen",
      "Mathisen",
      "Mikkelsen",
      "Moen",
      "Moe",
      "Myhre",
      "Myklebust",
      "Nguyen",
      "Nielsen",
      "Nilsen",
      "N\u00e6ss",
      "Nyg\u00e5rd",
      "Olsen",
      "Paulsen",
      "Pedersen",
      "Pettersen",
      "Rasmussen",
      "R\u00f8nning",
      "Ruud",
      "Sandvik",
      "Simonsen",
      "Sivertsen",
      "Solberg",
      "Solheim",
      "S\u00f8rensen",
      "S\u00e6ther",
      "Strand",
      "Str\u00f8m",
      "Svendsen",
      "Tangen",
      "Thomassen",
      "Thorsen",
      "Tveit",
      "Vik",
      "\u00d8deg\u00e5rd"
    ),

    prefixes = c('Dr.', 'Prof.')
  )
)

# company ------------------------------------
company_no_NO = R6Class(
  "company_no_NO",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_no_NO$new())$.__enclos_env__$private$first_names,
    last_names = (person_no_NO$new())$.__enclos_env__$private$last_names,
    first_name = (person_no_NO$new())$first_name,
    last_name = (person_no_NO$new())$last_name,

    formats = c(
      '{last_name} {company_suffix}',
      '{last_name} {company_suffix}',
      '{last_name} {company_suffix}',
      '{last_name}-{last_name} {company_suffix}',
      '{last_name}, {last_name} og {last_name}',
      '{last_name}-{last_name}'),

    company_suffixes = c('Gruppen', 'AS', 'ASA',
                         'BA', 'RFH', 'og S\u00f8nner', '& co.')
  )
)

# address ---------------------------------------
address_no_NO = R6Class(
  "address_no_NO",
  inherit = address_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_no_NO$new())$.__enclos_env__$private$first_names,
    last_names = (person_no_NO$new())$.__enclos_env__$private$last_names,
    first_name = (person_no_NO$new())$first_name,
    last_name = (person_no_NO$new())$last_name,

    city_suffixes = c(
      "berg",
      "borg",
      "by",
      "b\u00f8",
      "dal",
      "eid",
      "fjell",
      "fjord",
      "foss",
      "grunn",
      "hamn",
      "havn",
      "helle",
      "mark",
      "nes",
      "odden",
      "sand",
      "sj\u00f8en",
      "stad",
      "strand",
      "str\u00f8m",
      "sund",
      "vik",
      "v\u00e6r",
      "v\u00e5g",
      "\u00f8",
      "\u00f8y",
      "\u00e5s"
    ),

    street_suffixes = c(
      "all\u00e9en",
      "bakken",
      "berget",
      "br\u00e5ten",
      "eggen",
      "engen",
      "ekra",
      "faret",
      "flata",
      "gata",
      "gjerdet",
      "grenda",
      "gropa",
      "hagen",
      "haugen",
      "havna",
      "holtet",
      "h\u00f8gda",
      "jordet",
      "kollen",
      "kroken",
      "lia",
      "lunden",
      "lyngen",
      "l\u00f8kka",
      "marka",
      "moen",
      "myra",
      "plassen",
      "ringen",
      "roa",
      "r\u00f8a",
      "skogen",
      "skrenten",
      "spranget",
      "stien",
      "stranda",
      "stubben",
      "stykket",
      "svingen",
      "tjernet",
      "toppen",
      "tunet",
      "vollen",
      "vika",
      "\u00e5sen"
    ),
    city_formats = c('{first_name}{city_suffix}', '{last_name}'),

    street_name_formats = '{last_name}{street_suffix}',

    street_address_formats = '{street_name} {building_number}',

    address_formats = '{street_address}, {postcode} {city}',

    building_number_formats = c('%', '%', '%', '%?', '##', '##', '##?', '###'),

    building_number_suffixes = list(
      c('A', 0.2),
      c('B', 0.2),
      c('C', 0.2),
      c('D', 0.1),
      c('E', 0.1),
      c('F', 0.1),
      c('G', 0.05),
      c('H', 0.05)),

    postcode_formats = '####'
  ),

  public = list(
    building_number = function(){
      suffix = private$random_element(private$building_number_suffixes)

      bnumber = private$numerify(str_replace(
        private$random_element(private$building_number_formats),
        pattern = "\\?", replacement = suffix))
      return(bnumber)
    },

    city_suffix = function() {
      return(private$random_element(private$city_suffixes))
    },

    street_suffix = function() {
      return(private$random_element(private$street_suffixes))
    }
  )
)


# internet -------------------------------------------
internet_no_NO = R6Class(
  "internet_no_NO",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_no_NO$new())$.__enclos_env__$private$first_names,
    last_names = (person_no_NO$new())$.__enclos_env__$private$last_names,
    first_name = (person_no_NO$new())$first_name,
    last_name = (person_no_NO$new())$last_name,

    tlds = c('com', 'com', 'com', 'net', 'org', 'no', 'no', 'no', 'no', 'no'),

    replacements = list(
      c("\u00e6","ae"),
      c("\u00c6","Ae"),
      c("\u00f8","oe"),
      c("\u00d8","Oe"),
      c("\u00e5","aa"),
      c("\u00c5","Aa"),
      c("\u00e4","ae"),
      c("\u00c4","Ae"),
      c("\u00f6","oe"),
      c("\u00d6","Oe"),
      c("\u00fc","ue"),
      c("\u00dc","Ue")
    )
  ),
  public = list(
    domain_word = function() {
      company = (company_no_NO$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    }
  )
)
# phone_number --------------------------------------------
phone_number_no_NO = R6Class(
  "phone_number_no_NO",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+47########',
      '+47 ## ## ## ##',
      '## ## ## ##',
      '## ## ## ##',
      '########',
      '########',
      '9## ## ###',
      '4## ## ###',
      '9#######',
      '4#######'
    )
  )
)

# credit_card -----------------
credit_card_no_NO = R6Class(
  "credit_card_no_NO",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_no_NO$new())$.__enclos_env__$private$first_names,
    last_names = (person_no_NO$new())$.__enclos_env__$private$last_names,
    first_name = (person_no_NO$new())$first_name,
    last_name = (person_no_NO$new())$last_name
  )
)
# ssn ------------------------------------
ssn_no_NO = R6Class(
  "ssn_no_NO",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    scale1 = c(3, 7, 6, 1, 8, 9, 4, 5, 2),
    scale2 = c(5, 4, 3, 2, 7, 6, 5, 4, 3, 2),

    checksum = function(digits, scale){
      # Calculate checksum of Norwegian personal identity code.
      # Checksum is calculated with "Module 11" method using a scale.
      # The digits of the personal code are multiplied by the corresponding
      # number in the scale and summed;
      # if remainder of module 11 of the sum is less than 10, checksum is the
      # remainder.
      # If remainder is 0, the checksum is 0.
      # https://no.wikipedia.org/wiki/F%C3%B8dselsnummer
      chk_nbr = 11 - (sum(digits * scale) %% 11)
      if (chk_nbr == 11) return(0)
      else return(chk_nbr)
    }
  ),

  public = list(
    ssn = function(dob, gender){
      # Returns 11 character Norwegian personal identity code (F\u00f8dselsnummer).
      # A Norwegian personal identity code consists of 11 digits, without any
      # whitespace or other delimiters. The form is DDMMYYIIICC, where III is
      # a serial number separating persons born oh the same date with different
      # intervals depending on the year they are born. CC is two checksums.
      # https://en.wikipedia.org/wiki/National_identification_number#Norway
      # :param dob: date of birth as a "YYYYMMDD" string
      # :type dob: str
      # :param gender: gender of the person - "F" for female, M for male.
      # :type gender: str
      # :return: F\u00f8dselsnummer in str format (11 digs)
      # :rtype: str

      if (!missing(dob)) {
        birthday = strftime(dob, "%Y-%m-%d")
      } else {
        age = ddays(private$random_int(18*365, 90*365))
        birthday = today() - age
      }

      if (missing(gender)) {
        gender = sample(c("F", "M"), 1)
      } else if (!(gender %in% c("F", "M"))) {
        stop('Gender must be one of F or M.')
      }
      # birthday
      while(TRUE) {
        if (year(birthday) >= 1854 & year(birthday) <= 1899) {
          suffix = sample(seq(50, 73), 1)
        }
        if (year(birthday) >= 1900 & year(birthday) <= 1999) {
          suffix = sample(seq(0, 48), 1)
        } else if (year(birthday) >= 1940 & year(birthday) <= 1999) {
          suffix = sample(seq(90, 98), 1)
        }
        if (year(birthday) >= 2000 & year(birthday) <= 2039) {
          suffix = sample(seq(50, 98), 1)
        }
        # gender
        if (gender == "F") {
          gender_num = sample(seq(0, 8, 2), 1)
        } else if (gender == "M") {
          gender_num = sample(seq(1, 9, 2), 1)
        }

        pnr = str_c(strftime(birthday, "%d%m%y"),
                    sprintf("%02d", suffix), gender_num)

        pnr_nums = as.integer(str_split(pnr, "")[[1]])
        k1 = private$checksum(pnr_nums, private$scale1)
        k2 = private$checksum(c(pnr_nums, k1), private$scale2)
        # Checksums with a value of 10 is rejected.
        # https://no.wikipedia.org/wiki/F%C3%B8dselsnummer
        if (k1 != 10 & k2 != 10) return(str_c(pnr, str_c(k1, k2)))
      }
    }
  )
)

# profile   ------------
profile_no_NO = R6Class(
  "profile_no_NO",
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
                    (person_no_NO$new())$name_female(),
                    (person_no_NO$new())$name_male())
      temp = list(
        "username" = (internet_no_NO$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_no_NO$new())$address(),
        "mail" = (internet_no_NO$new())$free_email(),
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
        "company" = (company_no_NO$new())$company(),
        "ssn" = (ssn_no_NO$new())$ssn(),
        "residence" = (address_no_NO$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_no_NO$new())$url())
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







