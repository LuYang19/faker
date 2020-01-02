## person ---------------------------------
person_dk_DK = R6Class(
  "person_dk_DK",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}-{last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}-{last_name}',
      '{prefix_male} {first_name_male} {last_name}',
      '{prefix_female} {first_name_female} {last_name}',
      '{prefix_male} {first_name_male} {last_name}',
      '{prefix_female} {first_name_female} {last_name}'
    ),

    first_names_male = c(
      "Adam", "Albert", "Aksel", "Alex", "Alexander", "Alf", "Allan",
      "Alvin", "Anders", "Andr\u00e9", "Andreas", "Anton", "Arne", "Asger",
      "ugust", "Benjamin", "Benny", "Bent", "Bertil", "Bertram", "Birger",
      "Bjarne", "Bo", "Bob", "Bobby", "Boe", "Boris", "Borris", "Brian",
      "Bruno", "B\u00f8je", "B\u00f8rge", "Carl", "Carlo", "Carsten",
      "Casper", "Christian", "Christoffer", "Christopher", "Claus", "Clavs",
      "Curt", "Dan", "Daniel", "Danny", "David", "Dennis", "Ebbe", "Einar",
      "Einer", "Elias", "Emil", "Eric", "Erik", "Erling", "Ernst", "Esben",
      "Finn", "Flemming", "Frank", "Frans", "Freddy", "Frede", "Frederik",
      "Frode", "Georg", "George", "Gert", "Gorm", "Gunnar", "Gunner",
      "Gustav", "Hans", "Helge", "Henrik", "Henry", "Herbert", "Herman",
      "Hjalte", "Holger", "Hugo", "Ib", "Ivan", "Iver", "Jack", "Jacob",
      "Jakob", "James", "Jan", "Jano", "Jarl", "Jean", "Jens", "Jeppe",
      "Jesper", "Jim", "Jimmy", "Joachim", "Joakim", "Johan", "Johannes",
      "John", "Johnnie", "Johnny", "Jon", "Jonas", "Jonathan", "Julius",
      "J\u00f8rgen", "Karl", "Karlo", "Karsten", "Kaspar", "Kasper", "Keld",
      "Ken", "Kenn", "Kenneth", "Kenny", "Kent", "Kim", "Kjeld", "Klaus",
      "Klavs", "Kristian", "Kurt", "K\u00e5re", "Lars", "Lasse", "Laurits",
      "Laus", "Laust", "Leif", "Lennarth", "Lucas", "Ludvig", "Mads",
      "Magnus", "Malthe", "Marcus", "Marius", "Mark", "Martin", "Mathias",
      "Matthias", "Michael", "Mik", "Mikael", "Mike", "Mikkel", "Mogens",
      "Morten", "Nick", "Nicklas", "Nicolai", "Nicolaj", "Niels", "Nikolai",
      "Nikolaj", "Nils", "Noah", "Ole", "Olfert", "Oliver", "Oscar",
      "Oskar", "Osvald", "Otto", "Ove", "Palle", "Patrick", "Paw", "Peder",
      "Per", "Pete", "Peter", "Paul", "Philip", "Poul", "Preben", "Ragnar",
      "Ragner", "Rasmus", "Ren\u00e9", "Richard", "Richardt", "Robert",
      "Robin", "Rolf", "Ron", "Ronni", "Ronnie", "Ronny", "Ruben", "Rune",
      "Sam", "Sebastian", "Silas", "Simon", "Simon", "Sonny", "Steen",
      "Stefan", "Sten", "Stephan", "Steve", "Steven", "Stig", "Svenning",
      "S\u00f8ren", "Tage", "Tejs", "Thomas", "Tim", "Timmy", "Tobias",
      "Tom", "Tommy", "Tonny", "Torben", "Troels", "Uffe", "Ulf", "Ulrik",
      "Vagn", "Valdemar", "Verner", "Victor", "Villads", "Werner",
      "William", "Yan", "Yannick", "Yngve", "Zacharias", "Ziggy",
      "\u00d8ivind", "\u00d8jvind", "\u00d8rni", "\u00d8vli",
      "\u00d8ystein", "\u00d8yvind", "\u00c5bj\u00f8rn", "Aage", "\u00c5ge"
    ),

    first_names_female = c(
      'Abelone', 'Agnes', 'Agnete', 'Alberte', 'Alma', 'Amalie', 'Amanda',
      'Andrea', 'Ane', 'Anette', 'Anna', 'Anne', 'Annemette', 'Annette',
      'Asta', 'Astrid', 'Benedicte', 'Benedikte', 'Bente', 'Benthe', 'Berit',
      'Berta', 'Beth', 'Bettina', 'Birgit', 'Birgitte', 'Birte', 'Birthe',
      'Bitten', 'Bodil', 'Britt', 'Britta', 'Camilla', 'Carina', 'Carla',
      'Caroline', 'Cathrine', 'Catrine', 'Cecilie', 'Charlotte', 'Christina', 'Christine',
      'Cirkeline', 'Clara', 'Connie', 'Conny', 'Dagmar', 'Dagny', 'Daniella',
      'Dina', 'Ditte', 'Doris', 'Dorte', 'Dorthe', 'Edith', 'Elin',
      'Elisabeth', 'Ella', 'Ellen', 'Elna', 'Else', 'Elsebeth', 'Emilie',
      'Emily', 'Emma', 'Erna', 'Esmarelda', 'Ester', 'Filippa', 'Frederikke',
      'Freja', 'Frida', 'Gerda', 'Gertrud', 'Gitte', 'Grete', 'Grethe',
      'Gundhild', 'Gunhild', 'Gurli', 'Gyda', 'Hannah', 'Hanne', 'Heidi',
      'Helen', 'Helle', 'Henriette', 'Herdis', 'Iben', 'Ida', 'Inga',
      'Inge', 'Ingelise', 'Inger', 'Ingrid', 'Irma', 'Isabella', 'Jacobine',
      'Jacqueline', 'Janne', 'Janni', 'Jannie', 'Jasmin', 'Jean', 'Jenny',
      'Joan', 'Johanne', 'Jonna', 'Josefine', 'Josephine', 'Julie', 'Justina',
      'Jytte', 'Karen', 'Karin', 'Karina', 'Karla', 'Karoline', 'Katcha',
      'Katja', 'Katrine', 'Kirsten', 'Kirstin', 'Kirstine', 'Klara', 'Kristina',
      'Kristine', 'Laura', 'Lea', 'Lena', 'Lene', 'Leonora', 'Line',
      'Liva', 'Lona', 'Lone', 'Lotte', 'Louise', "L\u00e6rke", 'Maiken',
      'Maja', 'Majken', 'Malene', 'Malou', 'Maren', 'Margit', 'Margrethe',
      'Maria', 'Marianne', 'Marie', 'Marlene', 'Mathilde', 'Maya', 'Merete',
      'Merethe', 'Mette', 'Mia', 'Michala', 'Michelle', 'Mie', 'Mille',
      'Mimi', 'Minna', 'Nadia', 'Naja', 'Nana', 'Nanna', 'Nanni',
      'Natasha', 'Natasja', 'Nete', 'Nicoline', 'Nina', 'Nora', 'Oda',
      'Odeline', 'Odette', 'Ofelia', 'Olga', 'Olivia', 'Patricia', 'Paula',
      'Paulina', 'Pernille', 'Pia', 'Ragna', 'Ragnhild', 'Randi', 'Rebecca',
      'Regitse', 'Regitze', 'Rikke', 'Rita', 'Ritt', 'Ronja', 'Rosa',
      'Ruth', 'Sabine', 'Sandra', 'Sanne', 'Sara', 'Sarah', 'Selma',
      'Signe', 'Sigrid', 'Silje', 'Sille', 'Simone', 'Sine', 'Sofia',
      'Sofie', 'Solveig', 'Solvej', 'Sonja', 'Sophie', 'Stina', 'Stine',
      'Susanne', 'Sussanne', 'Sussie', 'Sys', "S\u00f8rine", "S\u00f8s", 'Tammy',
      'Tanja', 'Thea', 'Tilde', 'Tina', 'Tine', 'Tove', 'Trine',
      'Ulla', 'Ulrike', 'Ursula', 'Vera', 'Victoria', 'Viola', 'Vivian',
      'Weena', 'Winni', 'Winnie', 'Xenia', 'Yasmin', 'Yda', 'Yrsa',
      'Yvonne', 'Zahra', 'Zara', 'Zehnia', 'Zelma', 'Zenia', "\u00c5se"
    ),

    first_names = c(
      "Adam", "Albert", "Aksel", "Alex", "Alexander", "Alf", "Allan",
      "Alvin", "Anders", "Andr\u00e9", "Andreas", "Anton", "Arne", "Asger",
      "ugust", "Benjamin", "Benny", "Bent", "Bertil", "Bertram", "Birger",
      "Bjarne", "Bo", "Bob", "Bobby", "Boe", "Boris", "Borris", "Brian",
      "Bruno", "B\u00f8je", "B\u00f8rge", "Carl", "Carlo", "Carsten",
      "Casper", "Christian", "Christoffer", "Christopher", "Claus", "Clavs",
      "Curt", "Dan", "Daniel", "Danny", "David", "Dennis", "Ebbe", "Einar",
      "Einer", "Elias", "Emil", "Eric", "Erik", "Erling", "Ernst", "Esben",
      "Finn", "Flemming", "Frank", "Frans", "Freddy", "Frede", "Frederik",
      "Frode", "Georg", "George", "Gert", "Gorm", "Gunnar", "Gunner",
      "Gustav", "Hans", "Helge", "Henrik", "Henry", "Herbert", "Herman",
      "Hjalte", "Holger", "Hugo", "Ib", "Ivan", "Iver", "Jack", "Jacob",
      "Jakob", "James", "Jan", "Jano", "Jarl", "Jean", "Jens", "Jeppe",
      "Jesper", "Jim", "Jimmy", "Joachim", "Joakim", "Johan", "Johannes",
      "John", "Johnnie", "Johnny", "Jon", "Jonas", "Jonathan", "Julius",
      "J\u00f8rgen", "Karl", "Karlo", "Karsten", "Kaspar", "Kasper", "Keld",
      "Ken", "Kenn", "Kenneth", "Kenny", "Kent", "Kim", "Kjeld", "Klaus",
      "Klavs", "Kristian", "Kurt", "K\u00e5re", "Lars", "Lasse", "Laurits",
      "Laus", "Laust", "Leif", "Lennarth", "Lucas", "Ludvig", "Mads",
      "Magnus", "Malthe", "Marcus", "Marius", "Mark", "Martin", "Mathias",
      "Matthias", "Michael", "Mik", "Mikael", "Mike", "Mikkel", "Mogens",
      "Morten", "Nick", "Nicklas", "Nicolai", "Nicolaj", "Niels", "Nikolai",
      "Nikolaj", "Nils", "Noah", "Ole", "Olfert", "Oliver", "Oscar",
      "Oskar", "Osvald", "Otto", "Ove", "Palle", "Patrick", "Paw", "Peder",
      "Per", "Pete", "Peter", "Paul", "Philip", "Poul", "Preben", "Ragnar",
      "Ragner", "Rasmus", "Ren\u00e9", "Richard", "Richardt", "Robert",
      "Robin", "Rolf", "Ron", "Ronni", "Ronnie", "Ronny", "Ruben", "Rune",
      "Sam", "Sebastian", "Silas", "Simon", "Simon", "Sonny", "Steen",
      "Stefan", "Sten", "Stephan", "Steve", "Steven", "Stig", "Svenning",
      "S\u00f8ren", "Tage", "Tejs", "Thomas", "Tim", "Timmy", "Tobias",
      "Tom", "Tommy", "Tonny", "Torben", "Troels", "Uffe", "Ulf", "Ulrik",
      "Vagn", "Valdemar", "Verner", "Victor", "Villads", "Werner",
      "William", "Yan", "Yannick", "Yngve", "Zacharias", "Ziggy",
      "\u00d8ivind", "\u00d8jvind", "\u00d8rni", "\u00d8vli",
      "\u00d8ystein", "\u00d8yvind", "\u00c5bj\u00f8rn", "Aage", "\u00c5ge",
      'Abelone', 'Agnes', 'Agnete', 'Alberte', 'Alma', 'Amalie', 'Amanda',
      'Andrea', 'Ane', 'Anette', 'Anna', 'Anne', 'Annemette', 'Annette',
      'Asta', 'Astrid', 'Benedicte', 'Benedikte', 'Bente', 'Benthe', 'Berit',
      'Berta', 'Beth', 'Bettina', 'Birgit', 'Birgitte', 'Birte', 'Birthe',
      'Bitten', 'Bodil', 'Britt', 'Britta', 'Camilla', 'Carina', 'Carla',
      'Caroline', 'Cathrine', 'Catrine', 'Cecilie', 'Charlotte', 'Christina', 'Christine',
      'Cirkeline', 'Clara', 'Connie', 'Conny', 'Dagmar', 'Dagny', 'Daniella',
      'Dina', 'Ditte', 'Doris', 'Dorte', 'Dorthe', 'Edith', 'Elin',
      'Elisabeth', 'Ella', 'Ellen', 'Elna', 'Else', 'Elsebeth', 'Emilie',
      'Emily', 'Emma', 'Erna', 'Esmarelda', 'Ester', 'Filippa', 'Frederikke',
      'Freja', 'Frida', 'Gerda', 'Gertrud', 'Gitte', 'Grete', 'Grethe',
      'Gundhild', 'Gunhild', 'Gurli', 'Gyda', 'Hannah', 'Hanne', 'Heidi',
      'Helen', 'Helle', 'Henriette', 'Herdis', 'Iben', 'Ida', 'Inga',
      'Inge', 'Ingelise', 'Inger', 'Ingrid', 'Irma', 'Isabella', 'Jacobine',
      'Jacqueline', 'Janne', 'Janni', 'Jannie', 'Jasmin', 'Jean', 'Jenny',
      'Joan', 'Johanne', 'Jonna', 'Josefine', 'Josephine', 'Julie', 'Justina',
      'Jytte', 'Karen', 'Karin', 'Karina', 'Karla', 'Karoline', 'Katcha',
      'Katja', 'Katrine', 'Kirsten', 'Kirstin', 'Kirstine', 'Klara', 'Kristina',
      'Kristine', 'Laura', 'Lea', 'Lena', 'Lene', 'Leonora', 'Line',
      'Liva', 'Lona', 'Lone', 'Lotte', 'Louise', "L\u00e6rke", 'Maiken',
      'Maja', 'Majken', 'Malene', 'Malou', 'Maren', 'Margit', 'Margrethe',
      'Maria', 'Marianne', 'Marie', 'Marlene', 'Mathilde', 'Maya', 'Merete',
      'Merethe', 'Mette', 'Mia', 'Michala', 'Michelle', 'Mie', 'Mille',
      'Mimi', 'Minna', 'Nadia', 'Naja', 'Nana', 'Nanna', 'Nanni',
      'Natasha', 'Natasja', 'Nete', 'Nicoline', 'Nina', 'Nora', 'Oda',
      'Odeline', 'Odette', 'Ofelia', 'Olga', 'Olivia', 'Patricia', 'Paula',
      'Paulina', 'Pernille', 'Pia', 'Ragna', 'Ragnhild', 'Randi', 'Rebecca',
      'Regitse', 'Regitze', 'Rikke', 'Rita', 'Ritt', 'Ronja', 'Rosa',
      'Ruth', 'Sabine', 'Sandra', 'Sanne', 'Sara', 'Sarah', 'Selma',
      'Signe', 'Sigrid', 'Silje', 'Sille', 'Simone', 'Sine', 'Sofia',
      'Sofie', 'Solveig', 'Solvej', 'Sonja', 'Sophie', 'Stina', 'Stine',
      'Susanne', 'Sussanne', 'Sussie', 'Sys', "S\u00f8rine", "S\u00f8s", 'Tammy',
      'Tanja', 'Thea', 'Tilde', 'Tina', 'Tine', 'Tove', 'Trine',
      'Ulla', 'Ulrike', 'Ursula', 'Vera', 'Victoria', 'Viola', 'Vivian',
      'Weena', 'Winni', 'Winnie', 'Xenia', 'Yasmin', 'Yda', 'Yrsa',
      'Yvonne', 'Zahra', 'Zara', 'Zehnia', 'Zelma', 'Zenia', "\u00c5se"
    ),

    last_names = c(
      "Jensen", "Nielsen", "Hansen", "Pedersen", "Andersen", "Christensen",
      "Larsen", "S\u00f8rensen", "Rasmussen", "Petersen", "J\u00f8rgensen",
      "Madsen", "Kristensen", "Olsen", "Christiansen", "Thomsen", "Poulsen",
      "Johansen", "Knudsen", "Mortensen", "M\u00f8ller", "Jacobsen", "Jakobsen",
      "Olesen", "Frederiksen", "Mikkelsen", "Henriksen", "Laursen", "Lund",
      "Schmidt", "Eriksen", "Holm", "Kristiansen", "Clausen", "Simonsen",
      "Svendsen", "Andreasen", "Iversen", "Jeppesen", "Mogensen", "Jespersen",
      "Nissen", "Lauridsen", "Frandsen", "\u00d8stergaard", "Jepsen",
      "Kj\u00e6r", "Carlsen", "Vestergaard", "Jessen", "N\u00f8rgaard", "Dahl",
      "Christoffersen", "Skov", "S\u00f8ndergaard", "Bertelsen", "Bruun",
      "Lassen", "Bach", "Gregersen", "Friis", "Johnsen", "Steffensen",
      "Kjeldsen", "Bech", "Krogh", "Lauritsen", "Danielsen", "Mathiesen",
      "Andresen", "Brandt", "Winther", "Toft", "Ravn", "Mathiasen", "Dam",
      "Holst", "Nilsson", "Lind", "Berg", "Schou", "Overgaard", "Kristoffersen",
      "Schultz", "Klausen", "Karlsen", "Paulsen", "Hermansen", "Thorsen",
      "Koch", "Thygesen"
    ),

    prefixes_male = c(
      'Hr', 'Dr.', 'Prof.', 'Univ.Prof.'
    ),

    prefixes_female = c(
      'Fru', 'Dr.', 'Prof.', 'Univ.Prof.'
    )
  )
)

## phone_number ---------------
phone_number_dk_DK = R6Class(
  "phone_number_dk_DK",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+45(0)##########',
      '+45(0)#### ######',
      '+45 (0) #### ######',
      '+45(0) #########',
      '+45(0)#### #####',
      '0##########',
      '0#########',
      '0#### ######',
      '0#### #####',
      '(0####) ######',
      '(0####) #####'
    )
  )
)
## ssn ------------------------
ssn_dk_DK = R6Class(
  "ssn_dk_DK",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = 'DK########'
  ),
  public = list(
    # Returns a random generated Danish Tax ID
    vat_id = function() {
      temp = private$random_element(private$vat_id_formats)
      return(private$bothify(temp))
    }
  )
)
## company -----------------
company_dk_DK = R6Class(
  "company_de_DK",
  inherit = company_en_US,
  cloneable = FALSE,
  private = list(
    last_names = (person_dk_DK$new())$.__enclos_env__$private$last_names,
    last_name = (person_dk_DK$new())$last_name
  )
)
## credit_card -----------------
credit_card_dk_DK = R6Class(
  "credit_card_dk_DK",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_dk_DK$new())$.__enclos_env__$private$first_names,
    first_name = (person_dk_DK$new())$first_name,
    last_names = (person_dk_DK$new())$.__enclos_env__$private$last_names,
    last_name = (person_dk_DK$new())$last_name
  )
)



## address -----------------------
address_dk_DK = R6Class(
  "address_dk_DK",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_dk_DK$new())$.__enclos_env__$private$first_names,
    first_name = (person_dk_DK$new())$first_name,
    last_names = (person_dk_DK$new())$.__enclos_env__$private$last_names,
    last_name = (person_dk_DK$new())$last_name
  )
)


## profile ------------------
profile_dk_DK = R6Class(
  "profile_dk_DK",
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
                    (person_dk_DK$new())$name_female(),
                    (person_dk_DK$new())$name_male())
      temp = list(
        "username" = (internet_en_US$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_dk_DK$new())$address(),
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
        "company" = (company_dk_DK$new())$company(),
        "ssn" = (ssn_dk_DK$new())$ssn(),
        "residence" = (address_dk_DK$new())$address(),
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






