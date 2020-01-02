## bank ----------------
bank_de_AT = R6Class(
  "bank_de_AT",
  inherit = bank_init,
  cloneable = FALSE,
  private = list(
    bban_format = '################',
    country_code = 'AT'
  )
)
## person ------------------
person_de_AT = R6Class(
  "person_de_AT",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{first_name} {last_name}',
      '{prefix} {first_name} {last_name}',
      '{first_name} {last_name}',
      '{prefix} {first_name} {last_name}'),

    first_names = c(
      'Alexander', 'Alina', 'Andreas', 'Anna', 'Anton',
      'Benjamin', 'Bernhard', 'Christian', 'Christop',
      'Daniel', 'David', 'Dominik', 'Elena', 'Elias',
      'Emil', 'Emilia', 'Fabian', 'Felix', 'Florian',
      'Franz', 'Fransizka', 'Gabriel', 'Gernot',
      'Hanna', 'Ingrid', 'Isabel', 'Jakob', 'Jana',
      'Jasmin', 'Johanna', 'Johannes', 'Jonas', 'Julia',
      'Julian', 'Katharinna', 'Konrad', 'Konstantin',
      'Lara', 'Laura', 'Lena', 'Leo', 'Leon', 'Linda',
      'Luca', 'Lukas', 'Marcel', 'Maria', 'Martin',
      'Matthias', 'Max', 'Maximilian', 'Mia', 'Michael',
      'Moritz', 'Nico', 'Niklas', 'Nina', 'Noah',
      'Oliver', 'Olivia', 'Paul', 'Paula', 'Philipp', 'Pia',
      'Raphael', 'Robert', 'Samuel', 'Sarah', 'Sebastian',
      'Simon', 'Sophie', 'Theresa', 'Thomas', 'Tim',
      'Tobias', 'Valentin'),

    last_names = c(
      'Auer', 'Aigner', 'Bauer', 'Baumgartner', 'Berger',
      'Binder', 'Brunner', 'Cap', 'Capek', 'Cech', 'Chum',
      'Deng', 'Denk', 'Daume', 'Dienstl', 'Ebner', 'Eder',
      'Egger', 'Fasching', 'Felber', 'Ferstel', 'Fichtner',
      'Fischer', 'Fuchs', 'Gasser', 'Gastegger', 'Geier',
      'Geisler', 'Grabner', 'Gruber', 'Haas', 'Haiden',
      'Hofer', 'Holzer', 'Huber', 'Illes', 'Ircher',
      'Itzlinger', 'Jahn', 'Jobst', 'Jung', 'Jungbauer',
      'Just', 'Kainz', 'Karl', 'Karner', 'Koller',
      'Lang', 'Lechner', 'Lehner', 'Leitner', 'Maier',
      'Mair', 'Maurer', 'Mayer', 'Mayr', 'Moser', 'M\u00fcllner',
      'Pichler', 'Pucher', 'Reiter', 'Riegler', 'Schmid',
      'Schneider', 'Schuster', 'Schwarz', 'Stadler', 'Steiner',
      'Wallner', 'Weber', 'Weiss', 'Wieser', 'Wimmer', 'Winkler',
      'Winter', 'Wolf'),

    prefixes = c(
      'Dr.', 'Mag.', 'Ing.', 'Dipl.-Ing.', 'Prof.', 'Univ.Prof.')
  )
)

## address -----------------------
address_de_AT = R6Class(
  "address_de_AT",
  inherit = address_de,
  cloneable = FALSE,
  private = list(
    city_formats = "{city_name}",
    city_with_postcode_formats = "{postcode} {city}",
    street_name_formats = c(
      "{first_name}-{last_name}-{street_suffix_long}",
      "{last_name}{street_suffix_short}"),
    street_address_formats = "{street_name} {building_number}",
    address_formats = "{street_address}\n{postcode} {city}",
    building_number_formats = c("###", "##", "#", "#/#"),

    first_names = (person_de_AT$new())$.__enclos_env__$private$first_names,
    first_name = (person_de_AT$new())$first_name,
    last_names = (person_de_AT$new())$.__enclos_env__$private$last_names,
    last_name = (person_de_AT$new())$last_name,

    street_suffixes_long = c('Gasse', 'Platz', 'Ring', 'Stra\u00dfe', 'Weg'),
    street_suffixes_short = c('gasse', 'platz', 'ring',
                              'stra\u00dfe', 'str.', 'weg'),
    postcode_formats = c('1###', '2###', '3###', '4###',
                         '5###', '6###', '7###', '8###', '9###'),
    cities = c(
      "Allentsteig", "Altheim", "Althofen", "Amstetten", "Ansfelden",
      "Attnang-Puchheim", "Bad Aussee", "Bad Hall", "Bad Ischl",
      "Bad Leonfelden", "Bad Radkersburg", "Bad Sankt Leonhard im Lavanttal",
      "Bad V\u00f6slau", "Baden", "B\u00e4rnbach", "Berndorf",
      "Bischofshofen", "Bleiburg", "Bludenz", "Braunau am Inn", "Bregenz",
      "Bruck an der Leitha", "Bruck an der Mur", "Deutsch-Wagram",
      "Deutschlandsberg", "Dornbirn", "Drosendorf-Zissersdorf 1",
      "D\u00fcrnstein", "Ebenfurth", "Ebreichsdorf", "Eferding",
      "Eggenburg", "Eisenerz", "Eisenstadt", "Enns", "Fehring", "Feldbach",
      "Feldkirch", "Feldkirchen", "Ferlach", "Fischamend", "Frauenkirchen",
      "Freistadt", "Friedberg", "Friesach", "Frohnleiten",
      "F\u00fcrstenfeld", "Gallneukirchen", "G\u00e4nserndorf", "Geras",
      "Gerasdorf bei Wien", "Gf\u00f6hl", "Gleisdorf", "Gloggnitz",
      "Gm\u00fcnd", "Gm\u00fcnd in K\u00e4rnten", "Gmunden", "Graz",
      "Grein", "Grieskirchen", "Gro\u00df-Enzersdorf", "Gro\u00df-Gerungs",
      "Gro\u00df-Siegharts", "G\u00fcssing", "Haag",
      "Hainburg an der Donau", "Hainfeld", "Hall in Tirol", "Hallein",
      "Hardegg", "Hartberg", "Heidenreichstein", "Herzogenburg", "Imst",
      "Innsbruck", "Jennersdorf", "Judenburg", "Kapfenberg", "Kindberg",
      "Klagenfurt", "Klosterneuburg", "Knittelfeld", "K\u00f6flach",
      "Korneuburg", "Krems an der Donau", "Kufstein", "Laa an der Thaya",
      "Laakirchen", "Landeck", "Langenlois", "Leibnitz", "Leoben", "Lienz",
      "Liezen", "Lilienfeld", "Linz", "Litschau", "Maissau", "Mank",
      "Mannersdorf am Leithagebirge", "Marchegg", "Marchtrenk", "Mariazell",
      "Mattersburg", "Mattighofen", "Mautern an der Donau", "Melk",
      "Mistelbach an der Zaya", "M\u00f6dling", "Murau", "Mureck",
      "M\u00fcrzzuschlag", "Neulengbach", "Neumarkt am Wallersee",
      "Neunkirchen", "Neusiedl am See", "Oberndorf bei Salzburg",
      "Oberpullendorf", "Oberwart", "Oberw\u00e4lz", "Perg", "Peuerbach",
      "Pinkafeld", "P\u00f6chlarn", "Poysdorf", "Pregarten", "Pulkau",
      "Purbach am Neusiedler See", "Purkersdorf", "Raabs an der Thaya",
      "Radenthein", "Radstadt", "Rattenberg", "Retz", "Ried im Innkreis",
      "Rohrbach in Ober\u00f6sterreich", "Rottenmann", "Rust",
      "Saalfelden am Steinernen Meer", "Salzburg",
      "Sankt Andr\u00e4 im Lavanttal", "Sankt Johann im Pongau",
      "Sankt P\u00f6lten", "Sankt Valentin", "Sankt Veit an der Glan",
      "Sch\u00e4rding", "Scheibbs", "Schladming", "Schrattenthal",
      "Schrems", "Schwanenstadt", "Schwaz", "Schwechat",
      "Spittal an der Drau", "Stadtschlaining", "Steyr", "Steyregg",
      "Stockerau", "Stra\u00dfburg", "Ternitz", "Traiskirchen",
      "Traismauer", "Traun", "Trieben", "Trofaiach", "Tulln an der Donau",
      "Villach", "Vils", "V\u00f6cklabruck", "Voitsberg",
      "V\u00f6lkermarkt", "Waidhofen an der Thaya",
      "Waidhofen an der Ybbs", "Weitra", "Weiz", "Wels",
      "Wien", "Wiener Neustadt", "Wieselburg", "Wilhelmsburg",
      "Wolfsberg", "Wolkersdorf", "W\u00f6rgl", "Ybbs an der Donau",
      "Zell am See", "Zeltweg", "Zistersdorf", "Zwettl"),

    states = c(
      'Wien', 'Steiermark', 'Burgenland', 'Tirol',
      "Nieder\u00f6sterreich", "Ober\u00f6sterreich",
      'Salzburg', "K\u00e4rnten", 'Vorarlberg')
  ),

  public = list(
    street_suffix_short = function(){
      return(private$random_element(private$street_suffixes_short))
    },

    street_suffix_long = function(){
      return(private$random_element(private$street_suffixes_long))
    },

    city_name = function(){
      return(private$random_element(private$cities))
    },

    state = function(){
      return(private$random_element(private$states))
    },

    city_with_postcode = function(){
      temp = private$random_element(private$city_with_postcode_formats)
      return(private$format_parse(temp))
    }
  )
)

## geo ------------------------
geo_de_AT = R6Class(
  "geo_de_AT",
  inherit = geo_init,
  cloneable = FALSE,
  public = list(
    local_latitude = function(){
      return(self$coordinate(center = 47.60707, radius = 1))
    },

    local_longitude = function(){
      return(self$coordinate(center = 13.37208, radius = 2))
    }
  )
)

## internet -----------------
internet_de_AT = R6Class(
  "internet_de_AT",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_de_AT$new())$.__enclos_env__$private$first_names,
    last_names = (person_de_AT$new())$.__enclos_env__$private$last_names,
    first_name = (person_de_AT$new())$first_name,
    last_name = (person_de_AT$new())$last_name,

    free_email_domains = c(
      'chello.at', 'gmail.com', 'gmx.at', 'kabsi.at'
    ),
    tlds = c('at', 'co.at', 'com', 'net', 'org'),

    replacements = list(
      c('\u00e4', 'ae'), c('\u00c4', 'Ae'),
      c('\u00f6', 'oe'), c('\u00d6', 'Oe'),
      c('\u00fc', 'ue'), c('\u00dc', 'Ue'),
      c('\u00df', 'ss')
    )
  ),
  public = list(
    domain_word = function() {
      company = (company_de_AT$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = FALSE))
    }
  )
)
## ssn --------------------------
ssn_de_AT = R6Class(
  "ssn_de_AT",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = 'ATU########'
  ),

  public = list(
    vat_id = function() {
      temp = private$random_element(private$vat_id_formats)
      return(private$bothify(temp))
    }
  )
)

## company -----------------
company_de_AT = R6Class(
  "company_de_AT",
  inherit = company_en_US,
  cloneable = FALSE,
  private = list(
    last_names = (person_de_AT$new())$.__enclos_env__$private$last_names,
    last_name = (person_de_AT$new())$last_name
  )
)
## credit_card -----------------
credit_card_de_AT = R6Class(
  "credit_card_de_AT",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_de_AT$new())$.__enclos_env__$private$first_names,
    first_name = (person_de_AT$new())$first_name,
    last_names = (person_de_AT$new())$.__enclos_env__$private$last_names,
    last_name = (person_de_AT$new())$last_name
  )
)



## profile ------------------
profile_de_AT = R6Class(
  "profile_de_AT",
  inherit = profile_init,
  cloneable = FALSE,
  public = list(
    simple_profile = function(sex) {
      SEX = c("F", "M")
      if (missing(sex)) {
        sex = sample(SEX, 1)
      }
      if (!(sex %in% SEX)) {
        sex = sample(SEX, 1)
      }

      name = ifelse(sex == "F",
                    (person_de_AT$new())$name_female(),
                    (person_de_AT$new())$name_male())
      temp = list(
        "username" = (internet_de_AT$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_de_AT$new())$address(),
        "mail" = (internet_de_AT$new())$free_email(),
        "birthdate" = (date_time_init$new())$date_of_birth()
      )
      return(temp)
    },

    profile = function(fields, sex) {

      if (missing(fields)) fields = c()

      field = list(
        "job" = (job_init$new())$job(),
        "company" = (company_de_AT$new())$company(),
        "ssn" = (ssn_de_AT$new())$ssn(),
        "residence" = (address_de_AT$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_de_AT$new())$url())
      )

      field = append(field, self$simple_profile(sex))

      if (length(fields)) {
        nms = intersect(names(field), fields)
        field = field[nms]
      }
      return(field)
    }

  )
)





