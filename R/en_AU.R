## address -------------------------
address_en_AU = R6Class(
  "address_en_AU",
  inherit = address_en,
  cloneable = FALSE,
  private = list(
    city_prefixes = c('North', 'East', 'West', 'South', 'New', 'Lake', 'Port',
                      'St.'),
    city_suffixes = c('town', 'ton', 'land', 'ville', 'berg', 'burgh',
                      'borough', 'bury', 'view', 'port', 'mouth', 'stad',
                      'furt', 'chester', 'mouth', 'fort', 'haven', 'side',
                      'shire'),

    building_number_formats = c("###","##","#"),

    street_suffixes = c(
      'Access', 'Alley', 'Alleyway', 'Amble', 'Anchorage', 'Approach',
      'Arcade', 'Artery', 'Avenue', 'Basin', 'Beach', 'Bend', 'Block',
      'Boulevard', 'Brace', 'Brae', 'Break', 'Bridge', 'Broadway', 'Brow',
      'Bypass', 'Byway', 'Causeway', 'Centre', 'Centreway', 'Chase',
      'Circle', 'Circlet', 'Circuit', 'Circus', 'Close', 'Colonnade',
      'Common', 'Concourse', 'Copse', 'Corner', 'Corso', 'Court',
      'Courtyard', 'Cove', 'Crescent', 'Crest', 'Cross', 'Crossing',
      'Crossroad', 'Crossway', 'Cruiseway', 'Cul-de-sac', 'Cutting', 'Dale',
      'Dell', 'Deviation', 'Dip', 'Distributor', 'Drive', 'Driveway', 'Edge',
      'Elbow', 'End', 'Entrance', 'Esplanade', 'Estate', 'Expressway',
      'Extension', 'Fairway', 'Fire Track', 'Firetrail', 'Flat', 'Follow',
      'Footway', 'Foreshore', 'Formation', 'Freeway', 'Front', 'Frontage',
      'Gap', 'Garden', 'Gardens', 'Gate', 'Gates', 'Glade', 'Glen', 'Grange',
      'Green', 'Ground', 'Grove', 'Gully', 'Heights', 'Highroad', 'Highway',
      'Hill', 'Interchange', 'Intersection', 'Junction', 'Key', 'Landing',
      'Lane', 'Laneway', 'Lees', 'Line', 'Link', 'Little', 'Lookout', 'Loop',
      'Lower', 'Mall', 'Meander', 'Mew', 'Mews', 'Motorway', 'Mount', 'Nook',
      'Outlook', 'Parade', 'Park', 'Parklands', 'Parkway', 'Part', 'Pass',
      'Path', 'Pathway', 'Piazza', 'Place', 'Plateau', 'Plaza', 'Pocket',
      'Point', 'Port', 'Promenade', 'Quad', 'Quadrangle', 'Quadrant', 'Quay',
      'Quays', 'Ramble', 'Ramp', 'Range', 'Reach', 'Reserve', 'Rest',
      'Retreat', 'Ride', 'Ridge', 'Ridgeway', 'Right Of Way', 'Ring', 'Rise',
      'River', 'Riverway', 'Riviera', 'Road', 'Roads', 'Roadside', 'Roadway',
      'Ronde', 'Rosebowl', 'Rotary', 'Round', 'Route', 'Row', 'Rue', 'Run',
      'Service Way', 'Siding', 'Slope', 'Sound', 'Spur', 'Square', 'Stairs',
      'State Highway', 'Steps', 'Strand', 'Street', 'Strip', 'Subway',
      'Tarn', 'Terrace', 'Thoroughfare', 'Tollway', 'Top', 'Tor', 'Towers',
      'Track', 'Trail', 'Trailer', 'Triangle', 'Trunkway', 'Turn',
      'Underpass', 'Upper', 'Vale', 'Viaduct', 'View', 'Villas', 'Vista',
      'Wade', 'Walk', 'Walkway', 'Way', 'Wynd'),

    postcode_formats = c(
      # as per https://en.wikipedia.org/wiki/Postcodes_in_Australia
      # NSW
      '1###',
      '20##',
      '21##',
      '22##',
      '23##',
      '24##',
      '25##',
      '2619',
      '262#',
      '263#',
      '264#',
      '265#',
      '266#',
      '267#',
      '268#',
      '269#',
      '27##',
      '28##',
      '292#',
      '293#',
      '294#',
      '295#',
      '296#',
      '297#',
      '298#',
      '299#',
      # ACT
      '02##',
      '260#',
      '261#',
      '290#',
      '291#',
      '2920',
      # VIC
      '3###',
      '8###',
      # QLD
      '4###',
      '9###',
      # SA
      '5###',
      # WA
      '6###',
      # TAS
      '7###',
      # NT
      '08##',
      '09##'),

    states = c('Australian Capital Territory', 'New South Wales',
               'Northern Territory', 'Queensland', 'South Australia',
               'Tasmania', 'Victoria', 'Western Australia'),

    states_abbr = c('ACT', 'NSW', 'NT', 'QLD', 'SA', 'TAS', 'VIC', 'WA'),

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
      '{secondary_address}\n {building_number} {street_name}'),

    address_formats = c(
      "{street_address}\n{city}, {state_abbr}, {postcode}"),

    secondary_address_formats = c(
      'Apt. ###', 'Flat ##', 'Suite ###', 'Unit ##',
      'Level #', '### /', '## /', '# /')
  ),

  public = list(
    city_prefix = function() {
      return(private$random_element(private$city_prefixes))
    },

    secondary_address = function() {
      temp = private$random_element(private$secondary_address_formats)
      return(private$numerify(temp))
    },

    state = function() {
      return(private$random_element(private$states))
    },

    state_abbr = function() {
      return(private$random_element(private$states_abbr))
    }
  )
)


##
## internet -------------------------
internet_en_AU = R6Class(
  "internet_en_AU",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    free_email_domains = c(
      'gmail.com',
      'yahoo.com',
      'hotmail.com',
      'yahoo.com.au',
      'hotmail.com.au'
    ),

    tlds = c('com', 'com.au', 'org', 'org.au', 'net',
             'net.au', 'biz', 'info', 'edu', 'edu.au')
  )
)
## phone_number --------------------------
phone_number_en_AU = R6Class(
  "phone_number_en_AU",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      # Local calls
      '#### ####',
      '####-####',
      '####.####',  # domain registrars apparently use this
      '########',
      # National dialing
      '0{area_code} #### ####',
      '0{area_code}-####-####',
      '0{area_code}.####.####',
      '0{area_code}########',
      # Optional parenthesis
      '(0{area_code}) #### ####',
      '(0{area_code})-####-####',
      '(0{area_code}).####.####',
      '(0{area_code})########',
      # International drops the 0
      '+61 {area_code} #### ####',
      '+61-{area_code}-####-####',
      '+61.{area_code}.####.####',
      '+61{area_code}########',
      # 04 Mobile telephones (Australia-wide) mostly commonly written 4 - 3 -
      # 3 instead of 2 - 4 - 4
      '04## ### ###',
      '04##-###-###',
      '04##.###.###',
      '+61 4## ### ###',
      '+61-4##-###-###',
      '+61.4##.###.###'
    )
  ),

  public = list(
    area_code = function(){
      return(private$numerify(sample(c("2", "3", "7", "8"), 1)))
    },

    phone_number = function(){
      pattern = private$random_element(private$formats)
      return(private$numerify(private$format_parse(pattern)))
    }
  )
)

## profile --------------------------------
profile_en_AU = R6Class(
  "profile_en_AU",
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
        "username" = (internet_en_AU$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_en_AU$new())$address(),
        "mail" = (internet_en_AU$new())$free_email(),
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
        "residence" = (address_en_AU$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_en_AU$new())$url())
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





