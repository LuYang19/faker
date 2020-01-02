# person -------------------------------------
person_ro_RO = R6Class(
  "person_ro_RO",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats_female = c(
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {first_name_female} {last_name}'
    ),
    formats_male = c(
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {first_name_male} {last_name}'
    ),

    first_names_female = c(
      "Ada", "Adela", "Adelaida", "Adelina", "Adina", "Adriana",
      "Agata", "Aglaia", "Agripina", "Aida", "Alberta", "Albertina",
      "Alexandra", "Alexandrina", "Alice", "Alida", "Alina", "Alis",
      "Alma", "Amalia", "Amanda", "Amelia", "Ana", "Anabela", "Anaida",
      "Anamaria", "Anastasia", "Anca", "Ancu\u021ba", "Anda", "Andra",
      "Andrada", "Andreea", "Anemona", "Aneta", "Angela", "Anghelina",
      "Anica", "Ani\u0219oara", "Antoaneta", "Antonela", "Antonia",
      "Anu\u021ba", "Ariadna", "Ariana", "Arina", "Aristi\u021ba",
      "Artemisa", "Astrid", "Atena", "Augustina", "Aura", "Aurelia",
      "Aureliana", "Aurica", "Aurora", "Axenia", "Beatrice", "Betina",
      "Bianca", "Blanduzia", "Bogdana", "Brandu\u0219a", "Camelia",
      "Carina", "Carla", "Carmen", "Carmina", "Carolina", "Casandra",
      "Casiana", "Caterina", "Catinca", "Catrina", "Catrinel",
      "C\u0103t\u0103lina", "Cecilia", "Celia", "Cerasela", "Cezara",
      "Cipriana", "Clara", "Clarisa", "Claudia", "Clementina",
      "Cleopatra", "Codrina", "Codru\u021ba", "Constan\u021ba",
      "Constantina", "Consuela", "Coralia", "Corina", "Cornelia",
      "Cosmina", "Crengu\u021ba", "Crina", "Cristina", "Daciana",
      "Dafina", "Daiana", "Dalia", "Dana", "Daniela", "Daria",
      "Dariana", "Delia", "Demetra", "Denisa", "Despina", "Diana",
      "Dida", "Didina", "Dimitrina", "Dina", "Dochia", "Doina",
      "Domnica", "Dora", "Doriana", "Dorina", "Dorli", "Draga",
      "Dumitra", "Dumitrana", "Ecaterina", "Eftimia", "Elena",
      "Eleonora", "Eliana", "Elisabeta", "Elisaveta", "Eliza", "Elodia",
      "Elvira", "Emanuela", "Emilia", "Erica", "Estera", "Eufrosina",
      "Eugenia", "Eusebia", "Eva", "Evanghelina", "Evelina", "Fabia",
      "Fabiana", "Felicia", "Filofteia", "Fiona", "Flavia", "Floare",
      "Floarea", "Flora", "Floren\u021ba", "Florentina", "Floriana",
      "Florica", "Florina", "Francesca", "Frusina", "Gabriela",
      "Geanina", "Gen\u021biana", "Georgeta", "Georgia", "Georgiana",
      "Geta", "Gherghina", "Gianina", "Gina", "Giorgiana",
      "Gra\u021biana", "Gra\u021biela", "Henrieta", "Heracleea",
      "Hortensia", "Iasmina", "Ica", "Ileana", "Ilinca", "Ilona", "Ina",
      "Ioana", "Ioanina", "Iolanda", "Ionela", "Ionelia", "Iosefina",
      "Iridenta", "Irina", "Iris", "Isabela", "Iulia", "Iuliana",
      "Iustina", "Ivona", "Izabela", "Jana", "Janeta", "Janina",
      "Jasmina", "Jeana", "Julia", "Julieta", "Larisa", "Laura",
      "Lauren\u021bia", "Lavinia", "L\u0103cr\u0103mioara", "Leana",
      "Lelia", "Leontina", "Leopoldina", "Leti\u021bia", "Lia", "Liana",
      "Lidia", "Ligia", "Lili", "Liliana", "Lioara", "Livia",
      "Loredana", "Lorelei", "Lorena", "Luana", "Lucia", "Luciana",
      "Lucre\u021bia", "Ludmila", "Ludovica", "Luiza", "Lumini\u021ba",
      "Magdalena", "Maia", "Malvina", "Manuela", "Mara", "Marcela",
      "Marcheta", "Marga", "Margareta", "Maria", "Mariana", "Maricica",
      "Marilena", "Marina", "Marinela", "Marioara", "Marta", "Matilda",
      "M\u0103d\u0103lina", "M\u0103lina", "M\u0103rioara",
      "M\u0103riuca", "Melania", "Melina", "Mihaela", "Milena", "Mina",
      "Minodora", "Mioara", "Mirabela", "Mirela", "Mirona", "Miruna",
      "Mona", "Monalisa", "Monica", "Nadia", "Narcisa", "Natalia",
      "Nata\u0219a", "Nicoleta", "Niculina", "Nidia", "Noemi", "Nora",
      "Norica", "Oana", "Octavia", "Octaviana", "Ofelia", "Olga",
      "Olimpia", "Olivia", "Ortansa", "Otilia", "Ozana", "Pamela",
      "Paraschiva", "Patricia", "Paula", "Paulica", "Paulina",
      "Petronela", "Petru\u021ba", "Pompilia", "Profira", "Rada",
      "Rafila", "Raluca", "Ramona", "Rebeca", "Renata", "Rica",
      "Roberta", "Robertina", "Rodica", "Romani\u021ba", "Romina",
      "Roxana", "Roxelana", "Roza", "Rozalia", "Ruxanda", "Ruxandra",
      "Sabina", "Sabrina", "Safta", "Salomea", "Sanda", "Saveta",
      "Savina", "Sanziana", "Semenica", "Severina", "Sidonia",
      "Silvana", "Silvia", "Silviana", "Simina", "Simona", "Smaranda",
      "Sofia", "Sonia", "Sorana", "Sorina", "Speran\u021ba", "Stana",
      "Stanca", "Stela", "Steliana", "Stelu\u021ba", "Suzana",
      "Svetlana", "\u0218tefana", "\u0218tefania", "Tamara", "Tania",
      "Tatiana", "Teea", "Teodora", "Teodosia", "Teona", "Tiberia",
      "Timea", "Tinca", "Tincu\u021ba", "Tudora", "Tudori\u021ba",
      "Tudosia", "Valentina", "Valeria", "Vanesa", "Varvara",
      "Vasilica", "Venera", "Vera", "Veronica", "Veta", "Vicen\u021bia",
      "Victoria", "Violeta", "Viorela", "Viorica", "Virginia",
      "Viviana", "Vl\u0103delina", "Voichi\u021ba", "Xenia", "Zaharia",
      "Zamfira", "Zaraza", "Zenobia", "Zenovia", "Zina", "Zoe"
    ),

    first_names_male = c(
      "Achim", "Adam", "Adelin", "Adi", "Adonis", "Adrian", "Agnos",
      "Albert", "Aleodor", "Alex", "Alexandru", "Alexe", "Alin",
      "Alistar", "Amedeu", "Amza", "Anatolie", "Andrei", "Andrian",
      "Angel", "Anghel", "Antim", "Anton", "Antonie", "Antoniu",
      "Arian", "Aristide", "Arsenie", "Augustin", "Aurel", "Aurelian",
      "Auric\u0103", "Avram", "Axinte", "Barbu", "Bartolomeu",
      "Basarab", "B\u0103nel", "Bebe", "Beniamin", "Benone", "Bernard",
      "Bogdan", "Br\u0103du\u021b", "Bucur", "Caius", "Camil",
      "Cantemir", "Carol", "Casian", "Cazimir", "C\u0103lin",
      "C\u0103t\u0103lin", "Cedrin", "Cezar", "Ciprian", "Claudiu",
      "Codin", "Codrin", "Codru\u021b", "Constantin", "Cornel",
      "Corneliu", "Corvin", "Cosmin", "Costache", "Costel", "Costin",
      "Crin", "Cristea", "Cristian", "Cristobal", "Cristofor", "Dacian",
      "Damian", "Dan", "Daniel", "Darius", "David", "Decebal", "Denis",
      "Dinu", "Dominic", "Dorel", "Dorian", "Dorin", "Dorinel", "Doru",
      "Drago\u0219", "Ducu", "Dumitru", "Edgar", "Edmond", "Eduard",
      "Eftimie", "Emanoil", "Emanuel", "Emanuil", "Emil", "Emilian",
      "Eremia", "Eric", "Ernest", "Eugen", "Eusebiu", "Eusta\u021biu",
      "Fabian", "Felix", "Filip", "Fiodor", "Flaviu", "Florea",
      "Florentin", "Florian", "Florin", "Francisc", "Frederic", "Gabi",
      "Gabriel", "Gelu", "George", "Georgel", "Georgian", "Ghenadie",
      "Gheorghe", "Gheorghi\u021b\u0103", "Ghi\u021b\u0103",
      "Gic\u0103", "Gicu", "Giorgian", "Gra\u021bian", "Gregorian",
      "Grigore", "Haralamb", "Haralambie", "Hora\u021biu", "Horea",
      "Horia", "Iacob", "Iancu", "Ianis", "Ieremia", "Ilarie",
      "Ilarion", "Ilie", "Inocen\u021biu", "Ioan", "Ion", "Ionel",
      "Ionic\u0103", "Ionu\u021b", "Iosif", "Irinel", "Iulian", "Iuliu",
      "Iurie", "Iustin", "Iustinian", "Ivan", "Jan", "Jean", "Jenel",
      "Ladislau", "Lasc\u0103r", "Lauren\u021biu", "Laurian",
      "Laz\u0103r", "Leonard", "Leontin", "Leordean", "Lic\u0103",
      "Liviu", "Lorin", "Luca", "Lucen\u021biu", "Lucian",
      "Lucre\u021biu", "Ludovic", "Manole", "Marcel", "Marcu", "Marian",
      "Marin", "Marius", "Martin", "Matei", "Maxim", "Maximilian",
      "M\u0103d\u0103lin", "Mihai", "Mihail", "Mihnea", "Mircea",
      "Miron", "Mitic\u0103", "Mitru\u021b", "Mugur", "Mugurel", "Nae",
      "Narcis", "Nechifor", "Nelu", "Nichifor", "Nicoar\u0103",
      "Nicodim", "Nicolae", "Nicolaie", "Nicu", "Niculi\u021b\u0103",
      "Nicu\u0219or", "Nicu\u021b\u0103", "Norbert", "Norman", "Octav",
      "Octavian", "Octaviu", "Olimpian", "Olimpiu", "Oliviu", "Ovidiu",
      "Pamfil", "Panagachie", "Panait", "Paul", "Pavel", "P\u0103tru",
      "Petre", "Petric\u0103", "Petri\u0219or", "Petru", "Petru\u021b",
      "Ple\u0219u", "Pompiliu", "Radu", "Rafael", "Rare\u0219", "Raul",
      "R\u0103ducu", "R\u0103zvan", "Relu", "Remus", "Robert", "Romeo",
      "Romulus", "Sabin", "Sandu", "Sandu", "Sava", "Sebastian",
      "Sergiu", "Sever", "Severin", "Silvian", "Silviu", "Simi",
      "Simion", "Sinic\u0103", "Sorin", "Stan", "Stancu", "Stelian",
      "\u0218erban", "\u0218tefan", "Teodor", "Teofil", "Teohari",
      "Theodor", "Tiberiu", "Timotei", "Titus", "Todor", "Toma",
      "Traian", "Tudor", "Valentin", "Valeriu", "Valter", "Vasile",
      "Vasilic\u0103", "Veniamin", "Vicen\u021biu", "Victor",
      "Vincen\u021biu", "Viorel", "Visarion", "Vlad", "Vladimir",
      "Vlaicu", "Voicu", "Zamfir", "Zeno"
    ),

    first_names = c(
      "Ada", "Adela", "Adelaida", "Adelina", "Adina", "Adriana",
      "Agata", "Aglaia", "Agripina", "Aida", "Alberta", "Albertina",
      "Alexandra", "Alexandrina", "Alice", "Alida", "Alina", "Alis",
      "Alma", "Amalia", "Amanda", "Amelia", "Ana", "Anabela", "Anaida",
      "Anamaria", "Anastasia", "Anca", "Ancu\u021ba", "Anda", "Andra",
      "Andrada", "Andreea", "Anemona", "Aneta", "Angela", "Anghelina",
      "Anica", "Ani\u0219oara", "Antoaneta", "Antonela", "Antonia",
      "Anu\u021ba", "Ariadna", "Ariana", "Arina", "Aristi\u021ba",
      "Artemisa", "Astrid", "Atena", "Augustina", "Aura", "Aurelia",
      "Aureliana", "Aurica", "Aurora", "Axenia", "Beatrice", "Betina",
      "Bianca", "Blanduzia", "Bogdana", "Brandu\u0219a", "Camelia",
      "Carina", "Carla", "Carmen", "Carmina", "Carolina", "Casandra",
      "Casiana", "Caterina", "Catinca", "Catrina", "Catrinel",
      "C\u0103t\u0103lina", "Cecilia", "Celia", "Cerasela", "Cezara",
      "Cipriana", "Clara", "Clarisa", "Claudia", "Clementina",
      "Cleopatra", "Codrina", "Codru\u021ba", "Constan\u021ba",
      "Constantina", "Consuela", "Coralia", "Corina", "Cornelia",
      "Cosmina", "Crengu\u021ba", "Crina", "Cristina", "Daciana",
      "Dafina", "Daiana", "Dalia", "Dana", "Daniela", "Daria",
      "Dariana", "Delia", "Demetra", "Denisa", "Despina", "Diana",
      "Dida", "Didina", "Dimitrina", "Dina", "Dochia", "Doina",
      "Domnica", "Dora", "Doriana", "Dorina", "Dorli", "Draga",
      "Dumitra", "Dumitrana", "Ecaterina", "Eftimia", "Elena",
      "Eleonora", "Eliana", "Elisabeta", "Elisaveta", "Eliza", "Elodia",
      "Elvira", "Emanuela", "Emilia", "Erica", "Estera", "Eufrosina",
      "Eugenia", "Eusebia", "Eva", "Evanghelina", "Evelina", "Fabia",
      "Fabiana", "Felicia", "Filofteia", "Fiona", "Flavia", "Floare",
      "Floarea", "Flora", "Floren\u021ba", "Florentina", "Floriana",
      "Florica", "Florina", "Francesca", "Frusina", "Gabriela",
      "Geanina", "Gen\u021biana", "Georgeta", "Georgia", "Georgiana",
      "Geta", "Gherghina", "Gianina", "Gina", "Giorgiana",
      "Gra\u021biana", "Gra\u021biela", "Henrieta", "Heracleea",
      "Hortensia", "Iasmina", "Ica", "Ileana", "Ilinca", "Ilona", "Ina",
      "Ioana", "Ioanina", "Iolanda", "Ionela", "Ionelia", "Iosefina",
      "Iridenta", "Irina", "Iris", "Isabela", "Iulia", "Iuliana",
      "Iustina", "Ivona", "Izabela", "Jana", "Janeta", "Janina",
      "Jasmina", "Jeana", "Julia", "Julieta", "Larisa", "Laura",
      "Lauren\u021bia", "Lavinia", "L\u0103cr\u0103mioara", "Leana",
      "Lelia", "Leontina", "Leopoldina", "Leti\u021bia", "Lia", "Liana",
      "Lidia", "Ligia", "Lili", "Liliana", "Lioara", "Livia",
      "Loredana", "Lorelei", "Lorena", "Luana", "Lucia", "Luciana",
      "Lucre\u021bia", "Ludmila", "Ludovica", "Luiza", "Lumini\u021ba",
      "Magdalena", "Maia", "Malvina", "Manuela", "Mara", "Marcela",
      "Marcheta", "Marga", "Margareta", "Maria", "Mariana", "Maricica",
      "Marilena", "Marina", "Marinela", "Marioara", "Marta", "Matilda",
      "M\u0103d\u0103lina", "M\u0103lina", "M\u0103rioara",
      "M\u0103riuca", "Melania", "Melina", "Mihaela", "Milena", "Mina",
      "Minodora", "Mioara", "Mirabela", "Mirela", "Mirona", "Miruna",
      "Mona", "Monalisa", "Monica", "Nadia", "Narcisa", "Natalia",
      "Nata\u0219a", "Nicoleta", "Niculina", "Nidia", "Noemi", "Nora",
      "Norica", "Oana", "Octavia", "Octaviana", "Ofelia", "Olga",
      "Olimpia", "Olivia", "Ortansa", "Otilia", "Ozana", "Pamela",
      "Paraschiva", "Patricia", "Paula", "Paulica", "Paulina",
      "Petronela", "Petru\u021ba", "Pompilia", "Profira", "Rada",
      "Rafila", "Raluca", "Ramona", "Rebeca", "Renata", "Rica",
      "Roberta", "Robertina", "Rodica", "Romani\u021ba", "Romina",
      "Roxana", "Roxelana", "Roza", "Rozalia", "Ruxanda", "Ruxandra",
      "Sabina", "Sabrina", "Safta", "Salomea", "Sanda", "Saveta",
      "Savina", "Sanziana", "Semenica", "Severina", "Sidonia",
      "Silvana", "Silvia", "Silviana", "Simina", "Simona", "Smaranda",
      "Sofia", "Sonia", "Sorana", "Sorina", "Speran\u021ba", "Stana",
      "Stanca", "Stela", "Steliana", "Stelu\u021ba", "Suzana",
      "Svetlana", "\u0218tefana", "\u0218tefania", "Tamara", "Tania",
      "Tatiana", "Teea", "Teodora", "Teodosia", "Teona", "Tiberia",
      "Timea", "Tinca", "Tincu\u021ba", "Tudora", "Tudori\u021ba",
      "Tudosia", "Valentina", "Valeria", "Vanesa", "Varvara",
      "Vasilica", "Venera", "Vera", "Veronica", "Veta", "Vicen\u021bia",
      "Victoria", "Violeta", "Viorela", "Viorica", "Virginia",
      "Viviana", "Vl\u0103delina", "Voichi\u021ba", "Xenia", "Zaharia",
      "Zamfira", "Zaraza", "Zenobia", "Zenovia", "Zina", "Zoe", "Achim",
      "Adam", "Adelin", "Adi", "Adonis", "Adrian", "Agnos", "Albert",
      "Aleodor", "Alex", "Alexandru", "Alexe", "Alin", "Alistar",
      "Amedeu", "Amza", "Anatolie", "Andrei", "Andrian", "Angel",
      "Anghel", "Antim", "Anton", "Antonie", "Antoniu", "Arian",
      "Aristide", "Arsenie", "Augustin", "Aurel", "Aurelian",
      "Auric\u0103", "Avram", "Axinte", "Barbu", "Bartolomeu",
      "Basarab", "B\u0103nel", "Bebe", "Beniamin", "Benone", "Bernard",
      "Bogdan", "Br\u0103du\u021b", "Bucur", "Caius", "Camil",
      "Cantemir", "Carol", "Casian", "Cazimir", "C\u0103lin",
      "C\u0103t\u0103lin", "Cedrin", "Cezar", "Ciprian", "Claudiu",
      "Codin", "Codrin", "Codru\u021b", "Constantin", "Cornel",
      "Corneliu", "Corvin", "Cosmin", "Costache", "Costel", "Costin",
      "Crin", "Cristea", "Cristian", "Cristobal", "Cristofor", "Dacian",
      "Damian", "Dan", "Daniel", "Darius", "David", "Decebal", "Denis",
      "Dinu", "Dominic", "Dorel", "Dorian", "Dorin", "Dorinel", "Doru",
      "Drago\u0219", "Ducu", "Dumitru", "Edgar", "Edmond", "Eduard",
      "Eftimie", "Emanoil", "Emanuel", "Emanuil", "Emil", "Emilian",
      "Eremia", "Eric", "Ernest", "Eugen", "Eusebiu", "Eusta\u021biu",
      "Fabian", "Felix", "Filip", "Fiodor", "Flaviu", "Florea",
      "Florentin", "Florian", "Florin", "Francisc", "Frederic", "Gabi",
      "Gabriel", "Gelu", "George", "Georgel", "Georgian", "Ghenadie",
      "Gheorghe", "Gheorghi\u021b\u0103", "Ghi\u021b\u0103",
      "Gic\u0103", "Gicu", "Giorgian", "Gra\u021bian", "Gregorian",
      "Grigore", "Haralamb", "Haralambie", "Hora\u021biu", "Horea",
      "Horia", "Iacob", "Iancu", "Ianis", "Ieremia", "Ilarie",
      "Ilarion", "Ilie", "Inocen\u021biu", "Ioan", "Ion", "Ionel",
      "Ionic\u0103", "Ionu\u021b", "Iosif", "Irinel", "Iulian", "Iuliu",
      "Iurie", "Iustin", "Iustinian", "Ivan", "Jan", "Jean", "Jenel",
      "Ladislau", "Lasc\u0103r", "Lauren\u021biu", "Laurian",
      "Laz\u0103r", "Leonard", "Leontin", "Leordean", "Lic\u0103",
      "Liviu", "Lorin", "Luca", "Lucen\u021biu", "Lucian",
      "Lucre\u021biu", "Ludovic", "Manole", "Marcel", "Marcu", "Marian",
      "Marin", "Marius", "Martin", "Matei", "Maxim", "Maximilian",
      "M\u0103d\u0103lin", "Mihai", "Mihail", "Mihnea", "Mircea",
      "Miron", "Mitic\u0103", "Mitru\u021b", "Mugur", "Mugurel", "Nae",
      "Narcis", "Nechifor", "Nelu", "Nichifor", "Nicoar\u0103",
      "Nicodim", "Nicolae", "Nicolaie", "Nicu", "Niculi\u021b\u0103",
      "Nicu\u0219or", "Nicu\u021b\u0103", "Norbert", "Norman", "Octav",
      "Octavian", "Octaviu", "Olimpian", "Olimpiu", "Oliviu", "Ovidiu",
      "Pamfil", "Panagachie", "Panait", "Paul", "Pavel", "P\u0103tru",
      "Petre", "Petric\u0103", "Petri\u0219or", "Petru", "Petru\u021b",
      "Ple\u0219u", "Pompiliu", "Radu", "Rafael", "Rare\u0219", "Raul",
      "R\u0103ducu", "R\u0103zvan", "Relu", "Remus", "Robert", "Romeo",
      "Romulus", "Sabin", "Sandu", "Sandu", "Sava", "Sebastian",
      "Sergiu", "Sever", "Severin", "Silvian", "Silviu", "Simi",
      "Simion", "Sinic\u0103", "Sorin", "Stan", "Stancu", "Stelian",
      "\u0218erban", "\u0218tefan", "Teodor", "Teofil", "Teohari",
      "Theodor", "Tiberiu", "Timotei", "Titus", "Todor", "Toma",
      "Traian", "Tudor", "Valentin", "Valeriu", "Valter", "Vasile",
      "Vasilic\u0103", "Veniamin", "Vicen\u021biu", "Victor",
      "Vincen\u021biu", "Viorel", "Visarion", "Vlad", "Vladimir",
      "Vlaicu", "Voicu", "Zamfir", "Zeno"
    ),

    last_names = c(
      "Aanei", "Ababei", "Albu", "Ardelean", "Barbu", "Cristea",
      "Diaconescu", "Diaconu", "Dima", "Dinu", "Dobre", "Dochioiu",
      "Dumitrescu", "Eftimie", "Ene", "Florea", "Georgescu", "Gheorghiu",
      "Ionescu", "Ioni\u021b\u0103", "Manole", "Marin", "Mazilescu",
      "Mocanu", "Neme\u0219", "Nistor", "Nistor", "Ni\u021b\u0103",
      "Oprea", "Pop", "Popa", "Popescu", "Preda", "Pu\u0219ca\u0219u",
      "Stan", "Stancu", "Stoica", "St\u0103nescu", "Suciu", "Tabacu",
      "Toma", "Tomescu", "Tudor", "Voinea"
    )
  )
)
# ssn -----------------------------------------
ssn_ro_RO = R6Class(
  "ssn_ro_RO",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = c(
      'RO##',
      'RO###',
      'RO####',
      'RO#####',
      'RO######',
      'RO#######',
      'RO########',
      'RO#########',
      'RO##########'
    )
  ),

  public = list(
    vat_id = function(){
      # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
      # :return: A random Romanian VAT ID
      return(private$bothify(private$random_element(private$vat_id_formats)))
    }
  )
)
# credit_card -----------------
credit_card_ro_RO = R6Class(
  "credit_card_ro_RO",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_ro_RO$new())$.__enclos_env__$private$first_names,
    first_name = (person_ro_RO$new())$first_name,
    last_names = (person_ro_RO$new())$.__enclos_env__$private$last_names,
    last_name = (person_ro_RO$new())$last_name
  )
)



# company -------------------------
company_ro_RO = R6Class(
  "company_ro_RO",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_ro_RO$new())$.__enclos_env__$private$first_names,
    first_name = (person_ro_RO$new())$first_name,
    last_names = (person_ro_RO$new())$.__enclos_env__$private$last_names,
    last_name = (person_ro_RO$new())$last_name
  )
)

# address -----------------------------------------------------------------
address_ro_RO = R6Class(
  "address_ro_RO",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_ro_RO$new())$.__enclos_env__$private$first_names,
    last_names = (person_ro_RO$new())$.__enclos_env__$private$last_names,
    first_name = (person_ro_RO$new())$first_name,
    last_name = (person_ro_RO$new())$last_name
  )
)


# internet -------------------------
internet_ro_RO = R6Class(
  "internet_ro_RO",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_ro_RO$new())$.__enclos_env__$private$first_names,
    last_names = (person_ro_RO$new())$.__enclos_env__$private$last_names,
    first_name = (person_ro_RO$new())$first_name,
    last_name = (person_ro_RO$new())$last_name
  ),
  public = list(
    domain_word = function() {
      company = (company_ro_RO$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    }
  )
)
# profile   ------------
profile_ro_RO = R6Class(
  "profile_ro_RO",
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
                    (person_ro_RO$new())$name_female(),
                    (person_ro_RO$new())$name_male())
      temp = list(
        "username" = (internet_ro_RO$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_ro_RO$new())$address(),
        "mail" = (internet_ro_RO$new())$free_email(),
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
        "company" = (company_ro_RO$new())$company(),
        "ssn" = (ssn_ro_RO$new())$ssn(),
        "residence" = (address_ro_RO$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_ro_RO$new())$url())
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

