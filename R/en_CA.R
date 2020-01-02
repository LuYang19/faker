## automotive ------------------
automotive_en_CA = R6Class(
  "automotive_en_CA",
  inherit = automotive_init,
  cloneable = FALSE,
  private = list(
    # from
    # https://www.revolvy.com/main/index.php?s=Canadian%20licence%20plate%20designs%20and%20serial%20formats
    license_formats = c(
      # Alberta
      '???-####',
      # BC
      '??# ##?',
      '?? ####',
      # Manitoba
      '??? ###',
      # New Brunswick
      '??? ###',
      # Newfoundland and Labrador
      '??? ###',
      # NWT
      '######',
      # Nova Scotia
      '??? ###',
      # Nunavut
      '### ###',
      # Ontario
      '### ???',
      '???? ###',
      '??# ###',
      '### #??',
      '?? ####',
      'GV??-###',
      # PEI
      '## ##??',
      # Quebec
      '?## ???',
      # Saskatchewan
      '### ???',
      # Yukon
      '???##')
  )
)

## address ------------------------
address_en_CA = R6Class(
  "address_en_CA",
  inherit = address_en,
  cloneable = FALSE,
  private = list(
    postal_code_letters = c(
      'A', 'B', 'C', 'E', 'G', 'H', 'J',
      'K', 'L', 'M', 'N', 'P', 'R', 'S',
      'T', 'V', 'X', 'Y'),

    city_prefixes = c(
      'North', 'East', 'West', 'South', 'New', 'Lake', 'Port'),

    city_suffixes = c(
      'town',
      'ton',
      'land',
      'ville',
      'berg',
      'burgh',
      'borough',
      'bury',
      'view',
      'port',
      'mouth',
      'stad',
      'furt',
      'chester',
      'mouth',
      'fort',
      'haven',
      'side',
      'shire'),

    building_number_formats = c('#####', '####', '###'),

    street_suffixes = c(
      'Alley',
      'Avenue',
      'Branch',
      'Bridge',
      'Brook',
      'Brooks',
      'Burg',
      'Burgs',
      'Bypass',
      'Camp',
      'Canyon',
      'Cape',
      'Causeway',
      'Center',
      'Centers',
      'Circle',
      'Circles',
      'Cliff',
      'Cliffs',
      'Club',
      'Common',
      'Corner',
      'Corners',
      'Course',
      'Court',
      'Courts',
      'Cove',
      'Coves',
      'Creek',
      'Crescent',
      'Crest',
      'Crossing',
      'Crossroad',
      'Curve',
      'Dale',
      'Dam',
      'Divide',
      'Drive',
      'Drive',
      'Drives',
      'Estate',
      'Estates',
      'Expressway',
      'Extension',
      'Extensions',
      'Fall',
      'Falls',
      'Ferry',
      'Field',
      'Fields',
      'Flat',
      'Flats',
      'Ford',
      'Fords',
      'Forest',
      'Forge',
      'Forges',
      'Fork',
      'Forks',
      'Fort',
      'Freeway',
      'Garden',
      'Gardens',
      'Gateway',
      'Glen',
      'Glens',
      'Green',
      'Greens',
      'Grove',
      'Groves',
      'Harbor',
      'Harbors',
      'Haven',
      'Heights',
      'Highway',
      'Hill',
      'Hills',
      'Hollow',
      'Inlet',
      'Inlet',
      'Island',
      'Island',
      'Islands',
      'Islands',
      'Isle',
      'Isle',
      'Junction',
      'Junctions',
      'Key',
      'Keys',
      'Knoll',
      'Knolls',
      'Lake',
      'Lakes',
      'Land',
      'Landing',
      'Lane',
      'Light',
      'Lights',
      'Loaf',
      'Lock',
      'Locks',
      'Locks',
      'Lodge',
      'Lodge',
      'Loop',
      'Mall',
      'Manor',
      'Manors',
      'Meadow',
      'Meadows',
      'Mews',
      'Mill',
      'Mills',
      'Mission',
      'Mission',
      'Motorway',
      'Mount',
      'Mountain',
      'Mountain',
      'Mountains',
      'Mountains',
      'Neck',
      'Orchard',
      'Oval',
      'Overpass',
      'Park',
      'Parks',
      'Parkway',
      'Parkways',
      'Pass',
      'Passage',
      'Path',
      'Pike',
      'Pine',
      'Pines',
      'Place',
      'Plain',
      'Plains',
      'Plains',
      'Plaza',
      'Plaza',
      'Point',
      'Points',
      'Port',
      'Port',
      'Ports',
      'Ports',
      'Prairie',
      'Prairie',
      'Radial',
      'Ramp',
      'Ranch',
      'Rapid',
      'Rapids',
      'Rest',
      'Ridge',
      'Ridges',
      'River',
      'Road',
      'Road',
      'Roads',
      'Roads',
      'Route',
      'Row',
      'Rue',
      'Run',
      'Shoal',
      'Shoals',
      'Shore',
      'Shores',
      'Skyway',
      'Spring',
      'Springs',
      'Springs',
      'Spur',
      'Spurs',
      'Square',
      'Square',
      'Squares',
      'Squares',
      'Station',
      'Station',
      'Stravenue',
      'Stravenue',
      'Stream',
      'Stream',
      'Street',
      'Street',
      'Streets',
      'Summit',
      'Summit',
      'Terrace',
      'Throughway',
      'Trace',
      'Track',
      'Trafficway',
      'Trail',
      'Trail',
      'Tunnel',
      'Tunnel',
      'Turnpike',
      'Turnpike',
      'Underpass',
      'Union',
      'Unions',
      'Valley',
      'Valleys',
      'Via',
      'Viaduct',
      'View',
      'Views',
      'Village',
      'Village',
      'Villages',
      'Ville',
      'Vista',
      'Vista',
      'Walk',
      'Walks',
      'Wall',
      'Way',
      'Ways',
      'Well',
      'Wells'),

    postal_code_formats = c('?%? %?%', '?%?%?%'),

    provinces = c(
      'Alberta', 'British Columbia', 'Manitoba', 'New Brunswick',
      'Newfoundland and Labrador', 'Northwest Territories',
      'New Brunswick', 'Nova Scotia', 'Nunavut', 'Ontario',
      'Prince Edward Island', 'Quebec', 'Saskatchewan', 'Yukon Territory'),

    provinces_abbr = c(
      'AB', 'BC', 'MB', 'NB', 'NL', 'NT', 'NS',
      'NU', 'ON', 'PE', 'QC', 'SK', 'YT'),

    city_formats = c(
      '{city_prefix} {first_name}{city_suffix}',
      '{city_prefix} {first_name}',
      '{first_name}{city_suffix}',
      '{last_name}{city_suffix}'),
    street_name_formats = c(
      '{first_name} {street_suffix}',
      '{last_name} {street_suffix}'),
    first_names = (person_en_US$new())$.__enclos_env__$private$first_names,
    last_names = (person_en_US$new())$.__enclos_env__$private$last_names,
    first_name = (person_en_US$new())$first_name,
    last_name = (person_en_US$new())$last_name,

    street_address_formats = c(
      '{building_number} {street_name}',
      '{building_number} {street_name} {secondary_address}'),
    address_formats = c(
      "{street_address}\n{city}, {province_abbr} {postalcode}"),
    secondary_address_formats = c('Apt. ###', 'Suite ###')
  ),

  public = list(
    province = function(){
      return(private$random_element(private$provinces))
    },

    province_abbr = function(){
      return(private$random_element(private$provinces_abbr))
    },

    city_prefix = function(){
      return(private$random_element(private$city_prefixes))
    },

    secondary_address = function(){
      temp = private$random_element(private$secondary_address_formats)
      return(private$numerify(temp))
    },

    postal_code_letter = function(){
      return(private$random_element(private$postal_code_letters))
    },

    postcode = function(){
      item =  private$random_element(private$postal_code_formats)
      temp = private$replace_symbol(item, "\\?", "self$postal_code_letter")
      return(private$numerify(temp))
    },

    postalcode = function() {
      return(self$postcode())
    }
  )
)

## phone_number -------------------------------
phone_number_en_CA = R6Class(
  "phone_number_en_CA",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '%##-###-####',
      '%##.###.####',
      '%## ### ####',
      '(%##) ###-####',
      '1-%##-###-####',
      '1 (%##) ###-####',
      '+1 (%##) ###-####',
      '%##-###-#### x###',
      '(%##) ###-#### x###'
    )
  )
)

## ssn -----------------------------------
ssn_en_CA = R6Class(
  "ssn_en_CA",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    checksum = function(sin) {
      # Determine validity of a Canadian Social Insurance Number.
      # Validation is performed using a modified Luhn Algorithm.  To check
      # the Every second digit of the SIN is doubled and the result is
      # summed.  If the result is a multiple of ten, the Social Insurance
      # Number is considered valid.
      # https://en.wikipedia.org/wiki/Social_Insurance_Number

      # Remove spaces and create a list of digits.
      temp = str_split(str_remove_all(sin, " "), "")
      temp = as.integer(unlist(temp))
      # Discard the last digit, we will be calculating it later.
      temp[length(temp)] = 0
      # Iterate over the provided SIN and double every second digit.
      # In the case that doubling that digit results in a two-digit
      # number, then add the two digits together and keep that sum.

      for (i in seq(2, (length(temp)-1), 2)){
        result = temp[i] * 2
        if (result < 10) temp[i] = result
        else temp[i] = result - 9
      }

      # The appropriate checksum digit is the value that, when summed
      # with the first eight values, results in a value divisible by 10
      check_digit = 10 - (sum(temp) %% 10)
      check_digit = ifelse(check_digit == 10, 0, check_digit)
      return(check_digit)
    }
  ),

  public = list(
    ssn = function(){
      # Create an array of 8 elements initialized randomly.
      digits = sample(seq(0, 8), size = 8)
      # The final step of the validation requires that all of the
      # digits sum to a multiple of 10. First, sum the first 8 and
      # set the 9th to the value that results in a multiple of 10.
      check_digit = 10 - (sum(digits) %% 10)
      check_digit = ifelse(check_digit == 10, 0, check_digit)

      digits = c(digits, check_digit)

      for (i in seq(2, (length(digits)-1), 2)) {
        if (digits[i] %% 2 == 0) digits[i] = digits[i] %/% 2
        else digits[i] = (digits[i] + 9) %/% 2
      }
      # Build the resulting SIN string.
      sin = c()
      for (i in seq_along(digits)) {
        sin = c(sin, as.character(digits[i]))
        if (i %in% c(3, 6)) sin = c(sin, " ")
      }
      return(str_c(sin, collapse = ""))
    }
  )
)

## profile ----------------------------
profile_en_CA = R6Class(
  "profile_en_CA",
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
                    (person_en_US$new())$name_female(),
                    (person_en_US$new())$name_male())
      temp = list(
        "username" = (internet_en_US$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_en_CA$new())$address(),
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
        "ssn" = (ssn_en_US$new())$ssn(),
        "residence" = (address_en_CA$new())$address(),
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






