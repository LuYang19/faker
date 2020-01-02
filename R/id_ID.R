# automotive ---------------------------------------------------
automotive_id_ID = R6Class(
  "automotive_id_ID",
  inherit = automotive_init,
  cloneable = FALSE,
  private = list(
    license_formats = c(
      '? ### ??',
      '? ### ???',
      '?? ### ??',
      '?? ### ???',
      '? #### ??',
      '? #### ???',
      '?? #### ??',
      '?? #### ???')
  )
)

# person ---------------------------------------
person_id_ID = R6Class(
  "person_id_ID",
  inherit = person_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_male} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{first_name_female} {last_name}',
      '{prefix_male} {first_name_male} {last_name}',
      '{prefix_female} {first_name_female} {last_name}',
      '{first_name_male} {last_name}, {suffix}',
      '{first_name_female} {last_name}, {suffix}',
      '{prefix_male} {first_name_male} {last_name}, {suffix}',
      '{prefix_female} {first_name_female} {last_name}, {suffix}'),

    # From http://www.nama.web.id/search.php?gender=male&origin=Indonesia+-+Jawa&letter=&submit=Search
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
    first_names_male = c(
      'Abyasa', 'Ade', 'Adhiarja', 'Adiarja', 'Adika', 'Adikara', 'Adinata',
      'Aditya', 'Agus', 'Ajiman', 'Ajimat', 'Ajimin', 'Ajiono', 'Akarsana',
      'Alambana', 'Among', 'Anggabaya', 'Anom', 'Argono', 'Aris', 'Arta',
      'Artanto', 'Artawan', 'Arsipatra', 'Asirwada', 'Asirwanda', 'Aslijan',
      'Asmadi', 'Asman', 'Asmianto', 'Asmuni', 'Aswani', 'Atma', 'Atmaja',
      'Bagas', 'Bagiya', 'Bagus', 'Bagya', 'Bahuraksa', 'Bahuwarna',
      'Bahuwirya', 'Bajragin', 'Bakda', 'Bakiadi', 'Bakianto', 'Bakidin',
      'Bakijan', 'Bakiman', 'Bakiono', 'Bakti', 'Baktiadi', 'Baktianto',
      'Baktiono', 'Bala', 'Balamantri', 'Balangga', 'Balapati', 'Balidin',
      'Balijan', 'Bambang', 'Banara', 'Banawa', 'Banawi', 'Bancar', 'Budi',
      'Cagak', 'Cager', 'Cahyadi', 'Cahyanto', 'Cahya', 'Cahyo', 'Cahyono',
      'Caket', 'Cakrabirawa', 'Cakrabuana', 'Cakrajiya', 'Cakrawala',
      'Cakrawangsa', 'Candra', 'Chandra', 'Candrakanta', 'Capa', 'Caraka',
      'Carub', 'Catur', 'Caturangga', 'Cawisadi', 'Cawisono', 'Cawuk',
      'Cayadi', 'Cecep', 'Cemani', 'Cemeti', 'Cemplunk', 'Cengkal', 'Cengkir',
      'Dacin', 'Dadap', 'Dadi', 'Dagel', 'Daliman', 'Dalimin', 'Daliono',
      'Damar', 'Damu', 'Danang', 'Daniswara', 'Danu', 'Danuja', 'Dariati',
      'Darijan', 'Darimin', 'Darmaji', 'Darman', 'Darmana', 'Darmanto',
      'Darsirah', 'Dartono', 'Daru', 'Daruna', 'Daryani', 'Dasa', 'Digdaya',
      'Dimas', 'Dimaz', 'Dipa', 'Dirja', 'Drajat', 'Dwi', 'Dono', 'Dodo',
      'Edi', 'Eka', 'Elon', 'Eluh', 'Eman', 'Emas', 'Embuh', 'Emong',
      'Empluk', 'Endra', 'Enteng', 'Estiawan', 'Estiono', 'Eko', 'Edi',
      'Edison', 'Edward', 'Elvin', 'Erik', 'Emil', 'Ega', 'Emin', 'Eja',
      'Gada', 'Gadang', 'Gaduh', 'Gaiman', 'Galak', 'Galang', 'Galar',
      'Galih', 'Galiono', 'Galuh', 'Galur', 'Gaman', 'Gamani', 'Gamanto',
      'Gambira', 'Gamblang', 'Ganda', 'Gandewa', 'Gandi', 'Gandi', 'Ganep',
      'Gangsa', 'Gangsar', 'Ganjaran', 'Gantar', 'Gara', 'Garan', 'Garang',
      'Garda', 'Gatot', 'Gatra', 'Gilang', 'Galih', 'Ghani', 'Gading',
      'Hairyanto', 'Hardana', 'Hardi', 'Harimurti', 'Harja', 'Harjasa',
      'Harjaya', 'Harjo', 'Harsana', 'Harsanto', 'Harsaya', 'Hartaka',
      'Hartana', 'Harto', 'Hasta', 'Heru', 'Himawan', 'Hadi', 'Halim',
      'Hasim', 'Hasan', 'Hendra', 'Hendri', 'Heryanto', 'Hamzah', 'Hari',
      'Imam', 'Indra', 'Irwan', 'Irsad', 'Ikhsan', 'Irfan', 'Ian', 'Ibrahim',
      'Ibrani', 'Ismail', 'Irnanto', 'Ilyas', 'Ibun', 'Ivan', 'Ikin', 'Ihsan',
      'Jabal', 'Jaeman', 'Jaga', 'Jagapati', 'Jagaraga', 'Jail', 'Jaiman',
      'Jaka', 'Jarwa', 'Jarwadi', 'Jarwi', 'Jasmani', 'Jaswadi', 'Jati',
      'Jatmiko', 'Jaya', 'Jayadi', 'Jayeng', 'Jinawi', 'Jindra', 'Joko',
      'Jumadi', 'Jumari', 'Jamal', 'Jamil', 'Jais', 'Jefri', 'Johan', 'Jono',
      'Kacung', 'Kajen', 'Kambali', 'Kamidin', 'Kariman', 'Karja', 'Karma',
      'Karman', 'Karna', 'Karsa', 'Karsana', 'Karta', 'Kasiran', 'Kasusra',
      'Kawaca', 'Kawaya', 'Kayun', 'Kemba', 'Kenari', 'Kenes', 'Kuncara',
      'Kunthara', 'Kusuma', 'Kadir', 'Kala', 'Kalim', 'Kurnia', 'Kanda',
      'Kardi', 'Karya', 'Kasim', 'Kairav', 'Kenzie', 'Kemal', 'Kamal', 'Koko',
      'Labuh', 'Laksana', 'Lamar', 'Lanang', 'Langgeng', 'Lanjar', 'Lantar',
      'Lega', 'Legawa', 'Lembah', 'Liman', 'Limar', 'Luhung', 'Lukita',
      'Luluh', 'Lulut', 'Lurhur', 'Luwar', 'Luwes', 'Latif', 'Lasmanto',
      'Lukman', 'Luthfi', 'Leo', 'Luis', 'Lutfan', 'Lasmono', 'Laswi',
      'Mahesa', 'Makara', 'Makuta', 'Manah', 'Maras', 'Margana', 'Mariadi',
      'Marsudi', 'Martaka', 'Martana', 'Martani', 'Marwata', 'Maryadi',
      'Maryanto', 'Mitra', 'Mujur', 'Mulya', 'Mulyanto', 'Mulyono', 'Mumpuni',
      'Muni', 'Mursita', 'Murti', 'Mustika', 'Maman', 'Mahmud', 'Mahdi',
      'Mahfud', 'Malik', 'Muhammad', 'Mustofa', 'Marsito', 'Mursinin',
      'Nalar', 'Naradi', 'Nardi', 'Niyaga', 'Nrima', 'Nugraha', 'Nyana',
      'Narji', 'Nasab', 'Nasrullah', 'Nasim', 'Najib', 'Najam', 'Nyoman',
      'Olga', 'Ozy', 'Omar', 'Opan', 'Oskar', 'Oman', 'Okto', 'Okta', 'Opung',
      'Paiman', 'Panca', 'Pangeran', 'Pangestu', 'Pardi', 'Parman', 'Perkasa',
      'Praba', 'Prabu', 'Prabawa', 'Prabowo', 'Prakosa', 'Pranata', 'Pranawa',
      'Prasetya', 'Prasetyo', 'Prayitna', 'Prayoga', 'Prayogo', 'Purwadi',
      'Purwa', 'Purwanto', 'Panji', 'Pandu', 'Paiman', 'Prima', 'Putu',
      'Raden', 'Raditya', 'Raharja', 'Rama', 'Rangga', 'Reksa', 'Respati',
      'Rusman', 'Rosman', 'Rahmat', 'Rahman', 'Rendy', 'Reza', 'Rizki',
      'Ridwan', 'Rudi', 'Raden', 'Radit', 'Radika', 'Rafi', 'Rafid', 'Raihan',
      'Salman', 'Saadat', 'Saiful', 'Surya', 'Slamet', 'Samsul', 'Soleh',
      'Simon', 'Sabar', 'Sabri', 'Sidiq', 'Satya', 'Setya', 'Saka', 'Sakti',
      'Taswir', 'Tedi', 'Teddy', 'Taufan', 'Taufik', 'Tomi', 'Tasnim',
      'Teguh', 'Tasdik', 'Timbul', 'Tirta', 'Tirtayasa', 'Tri', 'Tugiman',
      'Umar', 'Usman', 'Uda', 'Umay', 'Unggul', 'Utama', 'Umaya', 'Upik',
      'Viktor', 'Vino', 'Vinsen', 'Vero', 'Vega', 'Viman', 'Virman',
      'Wahyu', 'Wira', 'Wisnu', 'Wadi', 'Wardi', 'Warji', 'Waluyo', 'Wakiman',
      'Wage', 'Wardaya', 'Warsa', 'Warsita', 'Warta', 'Wasis', 'Wawan',
      'Xanana', 'Yahya', 'Yusuf', 'Yosef', 'Yono', 'Yoga'),

    # From http://namafb.com/2010/08/12/top-1000-nama-populer-indonesia/
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
    first_names_female = c(
      'Ade', 'Agnes', 'Ajeng', 'Amalia', 'Anita', 'Ayu', 'Aisyah', 'Ana',
      'Ami', 'Ani', 'Azalea', 'Aurora', 'Alika', 'Anastasia', 'Amelia',
      'Almira', 'Bella', 'Betania', 'Belinda', 'Citra', 'Cindy', 'Chelsea',
      'Clara', 'Cornelia', 'Cinta', 'Cinthia', 'Ciaobella', 'Cici', 'Carla',
      'Calista', 'Devi', 'Dewi', 'Dian', 'Diah', 'Diana', 'Dina', 'Dinda',
      'Dalima', 'Eka', 'Eva', 'Endah', 'Elisa', 'Eli', 'Ella', 'Ellis',
      'Elma', 'Elvina', 'Fitria', 'Fitriani', 'Febi', 'Faizah', 'Farah',
      'Farhunnisa', 'Fathonah', 'Gabriella', 'Gasti', 'Gawati', 'Genta',
      'Ghaliyati', 'Gina', 'Gilda', 'Halima', 'Hesti', 'Hilda', 'Hafshah',
      'Hamima', 'Hana', 'Hani', 'Hasna', 'Humaira', 'Ika', 'Indah', 'Intan',
      'Irma', 'Icha', 'Ida', 'Ifa', 'Ilsa', 'Ina', 'Ira', 'Iriana', 'Jamalia',
      'Janet', 'Jane', 'Julia', 'Juli', 'Jessica', 'Jasmin', 'Jelita',
      'Kamaria', 'Kamila', 'Kani', 'Karen', 'Karimah', 'Kartika', 'Kasiyah',
      'Keisha', 'Kezia', 'Kiandra', 'Kayla', 'Kania', 'Lala', 'Lalita',
      'Latika', 'Laila', 'Laras', 'Lidya', 'Lili', 'Lintang', 'Maria', 'Mala',
      'Maya', 'Maida', 'Maimunah', 'Melinda', 'Mila', 'Mutia', 'Michelle',
      'Malika', 'Nadia', 'Nadine', 'Nabila', 'Natalia', 'Novi', 'Nova',
      'Nurul', 'Nilam', 'Najwa', 'Olivia', 'Ophelia', 'Oni', 'Oliva', 'Padma',
      'Putri', 'Paramita', 'Paris', 'Patricia', 'Paulin', 'Puput', 'Puji',
      'Pia', 'Puspa', 'Puti', 'Putri', 'Padmi', 'Qori', 'Queen', 'Ratih',
      'Ratna', 'Restu', 'Rini', 'Rika', 'Rina', 'Rahayu', 'Rahmi', 'Rachel',
      'Rahmi', 'Raisa', 'Raina', 'Sarah', 'Sari', 'Siti', 'Siska', 'Suci',
      'Syahrini', 'Septi', 'Sadina', 'Safina', 'Sakura', 'Salimah', 'Salwa',
      'Salsabila', 'Samiah', 'Shania', 'Sabrina', 'Silvia', 'Shakila',
      'Talia', 'Tami', 'Tira', 'Tiara', 'Titin', 'Tania', 'Tina', 'Tantri',
      'Tari', 'Titi', 'Uchita', 'Unjani', 'Ulya', 'Uli', 'Ulva', 'Umi',
      'Usyi', 'Vanya', 'Vanesa', 'Vivi', 'Vera', 'Vicky', 'Victoria',
      'Violet', 'Winda', 'Widya', 'Wulan', 'Wirda', 'Wani', 'Yani', 'Yessi',
      'Yulia', 'Yuliana', 'Yuni', 'Yunita', 'Yance', 'Zahra', 'Zalindra',
      'Zaenab', 'Zulfa', 'Zizi', 'Zulaikha', 'Zamira', 'Zelda', 'Zelaya'),

    first_names = c(
      'Abyasa', 'Ade', 'Adhiarja', 'Adiarja', 'Adika', 'Adikara', 'Adinata',
      'Aditya', 'Agus', 'Ajiman', 'Ajimat', 'Ajimin', 'Ajiono', 'Akarsana',
      'Alambana', 'Among', 'Anggabaya', 'Anom', 'Argono', 'Aris', 'Arta',
      'Artanto', 'Artawan', 'Arsipatra', 'Asirwada', 'Asirwanda', 'Aslijan',
      'Asmadi', 'Asman', 'Asmianto', 'Asmuni', 'Aswani', 'Atma', 'Atmaja',
      'Bagas', 'Bagiya', 'Bagus', 'Bagya', 'Bahuraksa', 'Bahuwarna',
      'Bahuwirya', 'Bajragin', 'Bakda', 'Bakiadi', 'Bakianto', 'Bakidin',
      'Bakijan', 'Bakiman', 'Bakiono', 'Bakti', 'Baktiadi', 'Baktianto',
      'Baktiono', 'Bala', 'Balamantri', 'Balangga', 'Balapati', 'Balidin',
      'Balijan', 'Bambang', 'Banara', 'Banawa', 'Banawi', 'Bancar', 'Budi',
      'Cagak', 'Cager', 'Cahyadi', 'Cahyanto', 'Cahya', 'Cahyo', 'Cahyono',
      'Caket', 'Cakrabirawa', 'Cakrabuana', 'Cakrajiya', 'Cakrawala',
      'Cakrawangsa', 'Candra', 'Chandra', 'Candrakanta', 'Capa', 'Caraka',
      'Carub', 'Catur', 'Caturangga', 'Cawisadi', 'Cawisono', 'Cawuk',
      'Cayadi', 'Cecep', 'Cemani', 'Cemeti', 'Cemplunk', 'Cengkal', 'Cengkir',
      'Dacin', 'Dadap', 'Dadi', 'Dagel', 'Daliman', 'Dalimin', 'Daliono',
      'Damar', 'Damu', 'Danang', 'Daniswara', 'Danu', 'Danuja', 'Dariati',
      'Darijan', 'Darimin', 'Darmaji', 'Darman', 'Darmana', 'Darmanto',
      'Darsirah', 'Dartono', 'Daru', 'Daruna', 'Daryani', 'Dasa', 'Digdaya',
      'Dimas', 'Dimaz', 'Dipa', 'Dirja', 'Drajat', 'Dwi', 'Dono', 'Dodo',
      'Edi', 'Eka', 'Elon', 'Eluh', 'Eman', 'Emas', 'Embuh', 'Emong',
      'Empluk', 'Endra', 'Enteng', 'Estiawan', 'Estiono', 'Eko', 'Edi',
      'Edison', 'Edward', 'Elvin', 'Erik', 'Emil', 'Ega', 'Emin', 'Eja',
      'Gada', 'Gadang', 'Gaduh', 'Gaiman', 'Galak', 'Galang', 'Galar',
      'Galih', 'Galiono', 'Galuh', 'Galur', 'Gaman', 'Gamani', 'Gamanto',
      'Gambira', 'Gamblang', 'Ganda', 'Gandewa', 'Gandi', 'Gandi', 'Ganep',
      'Gangsa', 'Gangsar', 'Ganjaran', 'Gantar', 'Gara', 'Garan', 'Garang',
      'Garda', 'Gatot', 'Gatra', 'Gilang', 'Galih', 'Ghani', 'Gading',
      'Hairyanto', 'Hardana', 'Hardi', 'Harimurti', 'Harja', 'Harjasa',
      'Harjaya', 'Harjo', 'Harsana', 'Harsanto', 'Harsaya', 'Hartaka',
      'Hartana', 'Harto', 'Hasta', 'Heru', 'Himawan', 'Hadi', 'Halim',
      'Hasim', 'Hasan', 'Hendra', 'Hendri', 'Heryanto', 'Hamzah', 'Hari',
      'Imam', 'Indra', 'Irwan', 'Irsad', 'Ikhsan', 'Irfan', 'Ian', 'Ibrahim',
      'Ibrani', 'Ismail', 'Irnanto', 'Ilyas', 'Ibun', 'Ivan', 'Ikin', 'Ihsan',
      'Jabal', 'Jaeman', 'Jaga', 'Jagapati', 'Jagaraga', 'Jail', 'Jaiman',
      'Jaka', 'Jarwa', 'Jarwadi', 'Jarwi', 'Jasmani', 'Jaswadi', 'Jati',
      'Jatmiko', 'Jaya', 'Jayadi', 'Jayeng', 'Jinawi', 'Jindra', 'Joko',
      'Jumadi', 'Jumari', 'Jamal', 'Jamil', 'Jais', 'Jefri', 'Johan', 'Jono',
      'Kacung', 'Kajen', 'Kambali', 'Kamidin', 'Kariman', 'Karja', 'Karma',
      'Karman', 'Karna', 'Karsa', 'Karsana', 'Karta', 'Kasiran', 'Kasusra',
      'Kawaca', 'Kawaya', 'Kayun', 'Kemba', 'Kenari', 'Kenes', 'Kuncara',
      'Kunthara', 'Kusuma', 'Kadir', 'Kala', 'Kalim', 'Kurnia', 'Kanda',
      'Kardi', 'Karya', 'Kasim', 'Kairav', 'Kenzie', 'Kemal', 'Kamal', 'Koko',
      'Labuh', 'Laksana', 'Lamar', 'Lanang', 'Langgeng', 'Lanjar', 'Lantar',
      'Lega', 'Legawa', 'Lembah', 'Liman', 'Limar', 'Luhung', 'Lukita',
      'Luluh', 'Lulut', 'Lurhur', 'Luwar', 'Luwes', 'Latif', 'Lasmanto',
      'Lukman', 'Luthfi', 'Leo', 'Luis', 'Lutfan', 'Lasmono', 'Laswi',
      'Mahesa', 'Makara', 'Makuta', 'Manah', 'Maras', 'Margana', 'Mariadi',
      'Marsudi', 'Martaka', 'Martana', 'Martani', 'Marwata', 'Maryadi',
      'Maryanto', 'Mitra', 'Mujur', 'Mulya', 'Mulyanto', 'Mulyono', 'Mumpuni',
      'Muni', 'Mursita', 'Murti', 'Mustika', 'Maman', 'Mahmud', 'Mahdi',
      'Mahfud', 'Malik', 'Muhammad', 'Mustofa', 'Marsito', 'Mursinin',
      'Nalar', 'Naradi', 'Nardi', 'Niyaga', 'Nrima', 'Nugraha', 'Nyana',
      'Narji', 'Nasab', 'Nasrullah', 'Nasim', 'Najib', 'Najam', 'Nyoman',
      'Olga', 'Ozy', 'Omar', 'Opan', 'Oskar', 'Oman', 'Okto', 'Okta', 'Opung',
      'Paiman', 'Panca', 'Pangeran', 'Pangestu', 'Pardi', 'Parman', 'Perkasa',
      'Praba', 'Prabu', 'Prabawa', 'Prabowo', 'Prakosa', 'Pranata', 'Pranawa',
      'Prasetya', 'Prasetyo', 'Prayitna', 'Prayoga', 'Prayogo', 'Purwadi',
      'Purwa', 'Purwanto', 'Panji', 'Pandu', 'Paiman', 'Prima', 'Putu',
      'Raden', 'Raditya', 'Raharja', 'Rama', 'Rangga', 'Reksa', 'Respati',
      'Rusman', 'Rosman', 'Rahmat', 'Rahman', 'Rendy', 'Reza', 'Rizki',
      'Ridwan', 'Rudi', 'Raden', 'Radit', 'Radika', 'Rafi', 'Rafid', 'Raihan',
      'Salman', 'Saadat', 'Saiful', 'Surya', 'Slamet', 'Samsul', 'Soleh',
      'Simon', 'Sabar', 'Sabri', 'Sidiq', 'Satya', 'Setya', 'Saka', 'Sakti',
      'Taswir', 'Tedi', 'Teddy', 'Taufan', 'Taufik', 'Tomi', 'Tasnim',
      'Teguh', 'Tasdik', 'Timbul', 'Tirta', 'Tirtayasa', 'Tri', 'Tugiman',
      'Umar', 'Usman', 'Uda', 'Umay', 'Unggul', 'Utama', 'Umaya', 'Upik',
      'Viktor', 'Vino', 'Vinsen', 'Vero', 'Vega', 'Viman', 'Virman',
      'Wahyu', 'Wira', 'Wisnu', 'Wadi', 'Wardi', 'Warji', 'Waluyo', 'Wakiman',
      'Wage', 'Wardaya', 'Warsa', 'Warsita', 'Warta', 'Wasis', 'Wawan',
      'Xanana', 'Yahya', 'Yusuf', 'Yosef', 'Yono', 'Yoga',

      'Ade', 'Agnes', 'Ajeng', 'Amalia', 'Anita', 'Ayu', 'Aisyah', 'Ana',
      'Ami', 'Ani', 'Azalea', 'Aurora', 'Alika', 'Anastasia', 'Amelia',
      'Almira', 'Bella', 'Betania', 'Belinda', 'Citra', 'Cindy', 'Chelsea',
      'Clara', 'Cornelia', 'Cinta', 'Cinthia', 'Ciaobella', 'Cici', 'Carla',
      'Calista', 'Devi', 'Dewi', 'Dian', 'Diah', 'Diana', 'Dina', 'Dinda',
      'Dalima', 'Eka', 'Eva', 'Endah', 'Elisa', 'Eli', 'Ella', 'Ellis',
      'Elma', 'Elvina', 'Fitria', 'Fitriani', 'Febi', 'Faizah', 'Farah',
      'Farhunnisa', 'Fathonah', 'Gabriella', 'Gasti', 'Gawati', 'Genta',
      'Ghaliyati', 'Gina', 'Gilda', 'Halima', 'Hesti', 'Hilda', 'Hafshah',
      'Hamima', 'Hana', 'Hani', 'Hasna', 'Humaira', 'Ika', 'Indah', 'Intan',
      'Irma', 'Icha', 'Ida', 'Ifa', 'Ilsa', 'Ina', 'Ira', 'Iriana', 'Jamalia',
      'Janet', 'Jane', 'Julia', 'Juli', 'Jessica', 'Jasmin', 'Jelita',
      'Kamaria', 'Kamila', 'Kani', 'Karen', 'Karimah', 'Kartika', 'Kasiyah',
      'Keisha', 'Kezia', 'Kiandra', 'Kayla', 'Kania', 'Lala', 'Lalita',
      'Latika', 'Laila', 'Laras', 'Lidya', 'Lili', 'Lintang', 'Maria', 'Mala',
      'Maya', 'Maida', 'Maimunah', 'Melinda', 'Mila', 'Mutia', 'Michelle',
      'Malika', 'Nadia', 'Nadine', 'Nabila', 'Natalia', 'Novi', 'Nova',
      'Nurul', 'Nilam', 'Najwa', 'Olivia', 'Ophelia', 'Oni', 'Oliva', 'Padma',
      'Putri', 'Paramita', 'Paris', 'Patricia', 'Paulin', 'Puput', 'Puji',
      'Pia', 'Puspa', 'Puti', 'Putri', 'Padmi', 'Qori', 'Queen', 'Ratih',
      'Ratna', 'Restu', 'Rini', 'Rika', 'Rina', 'Rahayu', 'Rahmi', 'Rachel',
      'Rahmi', 'Raisa', 'Raina', 'Sarah', 'Sari', 'Siti', 'Siska', 'Suci',
      'Syahrini', 'Septi', 'Sadina', 'Safina', 'Sakura', 'Salimah', 'Salwa',
      'Salsabila', 'Samiah', 'Shania', 'Sabrina', 'Silvia', 'Shakila',
      'Talia', 'Tami', 'Tira', 'Tiara', 'Titin', 'Tania', 'Tina', 'Tantri',
      'Tari', 'Titi', 'Uchita', 'Unjani', 'Ulya', 'Uli', 'Ulva', 'Umi',
      'Usyi', 'Vanya', 'Vanesa', 'Vivi', 'Vera', 'Vicky', 'Victoria',
      'Violet', 'Winda', 'Widya', 'Wulan', 'Wirda', 'Wani', 'Yani', 'Yessi',
      'Yulia', 'Yuliana', 'Yuni', 'Yunita', 'Yance', 'Zahra', 'Zalindra',
      'Zaenab', 'Zulfa', 'Zizi', 'Zulaikha', 'Zamira', 'Zelda', 'Zelaya'),

    # From http://namafb.com/2010/08/12/top-1000-nama-populer-indonesia/
    # From http://id.wikipedia.org/wiki/Daftar_marga_suku_Batak_di_Toba
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
    last_names_male = c(
      'Adriansyah', 'Ardianto', 'Anggriawan', 'Budiman', 'Budiyanto',
      'Damanik', 'Dongoran', 'Dabukke', 'Firmansyah', 'Firgantoro',
      'Gunarto', 'Gunawan', 'Hardiansyah', 'Habibi', 'Hakim', 'Halim',
      'Haryanto', 'Hidayat', 'Hidayanto', 'Hutagalung', 'Hutapea', 'Hutasoit',
      'Irawan', 'Iswahyudi', 'Kuswoyo', 'Januar', 'Jailani', 'Kurniawan',
      'Kusumo', 'Latupono', 'Lazuardi', 'Maheswara', 'Mahendra', 'Mustofa',
      'Mansur', 'Mandala', 'Megantara', 'Maulana', 'Maryadi', 'Mangunsong',
      'Manullang', 'Marpaung', 'Marbun', 'Narpati', 'Natsir', 'Nugroho',
      'Najmudin', 'Nashiruddin', 'Nainggolan', 'Nababan', 'Napitupulu',
      'Pangestu', 'Putra', 'Pranowo', 'Prabowo', 'Pratama', 'Prasetya',
      'Prasetyo', 'Pradana', 'Pradipta', 'Prakasa', 'Permadi', 'Prasasta',
      'Prayoga', 'Ramadan', 'Rajasa', 'Rajata', 'Saptono', 'Santoso',
      'Saputra', 'Saefullah', 'Setiawan', 'Suryono', 'Suwarno', 'Siregar',
      'Sihombing', 'Salahudin', 'Sihombing', 'Samosir', 'Saragih', 'Sihotang',
      'Simanjuntak', 'Sinaga', 'Simbolon', 'Sitompul', 'Sitorus', 'Sirait',
      'Siregar', 'Situmorang', 'Tampubolon', 'Thamrin', 'Tamba', 'Tarihoran',
      'Utama', 'Uwais', 'Wahyudin', 'Waluyo', 'Wibowo', 'Winarno', 'Wibisono',
      'Wijaya', 'Widodo', 'Wacana', 'Waskita', 'Wasita', 'Zulkarnain'),

    # From http://namafb.com/2010/08/12/top-1000-nama-populer-indonesia/
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
    last_names_female = c(
      'Agustina', 'Andriani', 'Anggraini', 'Aryani', 'Astuti',
      'Fujiati', 'Farida', 'Handayani', 'Hassanah', 'Hartati', 'Hasanah',
      'Haryanti', 'Hariyah', 'Hastuti', 'Halimah', 'Kusmawati', 'Kuswandari',
      'Laksmiwati', 'Laksita', 'Lestari', 'Lailasari', 'Mandasari',
      'Mardhiyah', 'Mayasari', 'Melani', 'Mulyani', 'Maryati', 'Nurdiyanti',
      'Novitasari', 'Nuraini', 'Nasyidah', 'Nasyiah', 'Namaga', 'Palastri',
      'Pudjiastuti', 'Puspasari', 'Puspita', 'Purwanti', 'Pratiwi',
      'Purnawati', 'Pertiwi', 'Permata', 'Prastuti', 'Padmasari', 'Rahmawati',
      'Rahayu', 'Riyanti', 'Rahimah', 'Suartini', 'Sudiati', 'Suryatmi',
      'Susanti', 'Safitri', 'Oktaviani', 'Utami', 'Usamah', 'Usada',
      'Uyainah', 'Yuniar', 'Yuliarti', 'Yulianti', 'Yolanda', 'Wahyuni',
      'Wijayanti', 'Widiastuti', 'Winarsih', 'Wulandari', 'Wastuti', 'Zulaika'),

    last_names = c(
      'Adriansyah', 'Ardianto', 'Anggriawan', 'Budiman', 'Budiyanto',
      'Damanik', 'Dongoran', 'Dabukke', 'Firmansyah', 'Firgantoro',
      'Gunarto', 'Gunawan', 'Hardiansyah', 'Habibi', 'Hakim', 'Halim',
      'Haryanto', 'Hidayat', 'Hidayanto', 'Hutagalung', 'Hutapea', 'Hutasoit',
      'Irawan', 'Iswahyudi', 'Kuswoyo', 'Januar', 'Jailani', 'Kurniawan',
      'Kusumo', 'Latupono', 'Lazuardi', 'Maheswara', 'Mahendra', 'Mustofa',
      'Mansur', 'Mandala', 'Megantara', 'Maulana', 'Maryadi', 'Mangunsong',
      'Manullang', 'Marpaung', 'Marbun', 'Narpati', 'Natsir', 'Nugroho',
      'Najmudin', 'Nashiruddin', 'Nainggolan', 'Nababan', 'Napitupulu',
      'Pangestu', 'Putra', 'Pranowo', 'Prabowo', 'Pratama', 'Prasetya',
      'Prasetyo', 'Pradana', 'Pradipta', 'Prakasa', 'Permadi', 'Prasasta',
      'Prayoga', 'Ramadan', 'Rajasa', 'Rajata', 'Saptono', 'Santoso',
      'Saputra', 'Saefullah', 'Setiawan', 'Suryono', 'Suwarno', 'Siregar',
      'Sihombing', 'Salahudin', 'Sihombing', 'Samosir', 'Saragih', 'Sihotang',
      'Simanjuntak', 'Sinaga', 'Simbolon', 'Sitompul', 'Sitorus', 'Sirait',
      'Siregar', 'Situmorang', 'Tampubolon', 'Thamrin', 'Tamba', 'Tarihoran',
      'Utama', 'Uwais', 'Wahyudin', 'Waluyo', 'Wibowo', 'Winarno', 'Wibisono',
      'Wijaya', 'Widodo', 'Wacana', 'Waskita', 'Wasita', 'Zulkarnain',

      'Agustina', 'Andriani', 'Anggraini', 'Aryani', 'Astuti',
      'Fujiati', 'Farida', 'Handayani', 'Hassanah', 'Hartati', 'Hasanah',
      'Haryanti', 'Hariyah', 'Hastuti', 'Halimah', 'Kusmawati', 'Kuswandari',
      'Laksmiwati', 'Laksita', 'Lestari', 'Lailasari', 'Mandasari',
      'Mardhiyah', 'Mayasari', 'Melani', 'Mulyani', 'Maryati', 'Nurdiyanti',
      'Novitasari', 'Nuraini', 'Nasyidah', 'Nasyiah', 'Namaga', 'Palastri',
      'Pudjiastuti', 'Puspasari', 'Puspita', 'Purwanti', 'Pratiwi',
      'Purnawati', 'Pertiwi', 'Permata', 'Prastuti', 'Padmasari', 'Rahmawati',
      'Rahayu', 'Riyanti', 'Rahimah', 'Suartini', 'Sudiati', 'Suryatmi',
      'Susanti', 'Safitri', 'Oktaviani', 'Utami', 'Usamah', 'Usada',
      'Uyainah', 'Yuniar', 'Yuliarti', 'Yulianti', 'Yolanda', 'Wahyuni',
      'Wijayanti', 'Widiastuti', 'Winarsih', 'Wulandari', 'Wastuti', 'Zulaika'),

    prefixes_male = c(
      'Dt.', 'R.', 'R.M.', 'Sutan', 'T.', 'Tgk.',

      # From http://id.wikipedia.org/wiki/Gelar_akademik
      # via
      # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
      # plus noble titles
      'dr.', 'drg.', 'Dr.', 'Drs.', 'Ir.', 'H.', 'KH.'),

    prefixes_female = c(
      'Cut', 'Puti', 'R.', 'R.A.', 'Tgk.',

      # From http://id.wikipedia.org/wiki/Gelar_akademik
      # via
      # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
      # plus noble titles
      'dr.', 'drg.', 'Dr.', 'Drs.', 'Ir.', 'Hj.'),

    # From http://id.wikipedia.org/wiki/Gelar_akademik
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Person.php
    suffixes = c(
      'S.Ked', 'S.Gz', 'S.Pt', 'S.IP', 'S.E.I', 'S.E.', 'S.Kom', 'S.H.',
      'S.T.', 'S.Pd', 'S.Psi', 'S.I.Kom', 'S.Sos', 'S.Farm', 'M.M.', 'M.Kom.',
      'M.TI.', 'M.Pd', 'M.Farm', 'M.Ak')
  )
)

# company ------------------------------------------
company_id_ID = R6Class(
  "company_id_ID",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_id_ID$new())$.__enclos_env__$private$first_names,
    first_name = (person_id_ID$new())$first_name,
    last_names = (person_id_ID$new())$.__enclos_env__$private$last_names,
    last_name = (person_id_ID$new())$last_name,

    formats = c(
      '{company_prefix} {last_name}',
      '{company_prefix} {last_name} {last_name}',
      '{company_prefix} {last_name} {company_suffix}',
      '{company_prefix} {last_name} {last_name} {company_suffix}'),

    # From http://id.wikipedia.org/wiki/Jenis_badan_usaha
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Company.php
    company_prefixes = c('PT', 'CV', 'UD', 'PD', 'Perum'),

    # From http://id.wikipedia.org/wiki/Jenis_badan_usaha
    # via
    # https://github.com/fzaninotto/faker/blob/master/src/Faker/Provider/id_ID/Company.php
    company_suffixes = c('(Persero) Tbk', 'Tbk')
  ),

  public = list(
    company_prefix = function(){
      return(private$random_element(private$company_prefixes))
    }
  )
)

# date_time --------------------------------------------------
date_time_id_ID = R6Class(
  "date_time_id_ID",
  inherit = date_time_init,
  cloneable = FALSE,
  private = list(
    DAY_NAMES = c(
      "0" = "Senin",
      "1" = "Selasa",
      "2" = "Rabu",
      "3" = "Kamis",
      "4" = "Jumat",
      "5" = "Sabtu",
      "6" = "Minggu"
    ),

    MONTH_NAMES = c(
      "01" = "Januari",
      "02" = "Februari",
      "03" = "Maret",
      "04" = "April",
      "05" = "Mei",
      "06" = "Juni",
      "07" = "Juli",
      "08" = "Agustus",
      "09" = "September",
      "10" = "Oktober",
      "11" = "November",
      "12" = "Desember"
    )
  ),

  public = list(
    day_of_week = function() {
      day = self$date(format = "%w")
      return(unname(private$DAY_NAMES[day]))
    },

    month_name = function() {
      month = self$month()
      return(unname(private$MONTH_NAMES[month]))
    }
  )
)

# address -------------------------------------------
address_id_ID = R6Class(
  "address_id_ID",
  inherit = address_init,
  cloneable = FALSE,
  private = list(
    building_number_formats = c('###', '##', '#'),
    city_formats = '{city_name}',
    postcode_formats = '#####',
    street_name_formats = c(
      '{street_prefix_short} {street}',
      '{street_prefix_long} {street}'),

    street_address_formats = '{street_name} No. {building_number}',


    address_formats = c(
      '{street_address}\n{city}, {state} {postcode}',
      '{street_address}\n{city}, {state_abbr} {postcode}'),

    # From
    # http://elibrary.dephub.go.id/elibrary/media/catalog/0010-021500000000135/swf/618/Lampiran%20E%20Data%20Bandung.pdf
    # https://www.surabaya.go.id/id/info-penting/47601/daftar-nama-jalan-dan-status-ja
    # https://www.streetdirectory.com/indonesia/jakarta/asia_travel/street/popular/
    streets = c(
      'Abdul Muis', 'Antapani Lama', 'Asia Afrika', 'Astana Anyar', 'BKR',
      'Cihampelas', 'Cikapayang', 'Cikutra Barat', 'Cikutra Timur',
      'Ciumbuleuit', 'Ciwastra', 'Dipatiukur', 'Dipenogoro', 'Dr. Djunjunan',
      'Gardujati', 'Gedebage Selatan', 'Gegerkalong Hilir',
      'HOS. Cokroaminoto', 'Ir. H. Djuanda', 'Jakarta', 'Jamika',
      'Jend. A. Yani', 'Jend. Sudirman', 'K.H. Wahid Hasyim', 'Kebonjati',
      'Kiaracondong', 'Laswi', 'Lembong', 'Merdeka', 'Moch. Ramdan',
      'Moch. Toha', 'Pacuan Kuda', 'Pasir Koja', 'Pasirkoja', 'Pasteur',
      'Pelajar Pejuang', 'Peta', 'PHH. Mustofa', 'Rajawali Barat',
      'Rajawali Timur', 'Raya Setiabudhi', 'Raya Ujungberung', 'Rumah Sakit',
      'Sadang Serang', 'Sentot Alibasa', 'Setiabudhi', 'Siliwangi',
      'Soekarno Hatta', 'Sukabumi', 'Sukajadi', 'Suniaraja', 'Surapati',
      'Tubagus Ismail', 'Veteran', 'W.R. Supratman', 'Bangka Raya', 'Cempaka',
      'Cihampelas', 'Erlangga', 'Rawamangun', 'Waringin', 'Ronggowarsito',
      'Rajiman', 'Yos Sudarso', 'S. Parman', 'Monginsidi', 'M.T Haryono',
      'Ahmad Dahlan', 'Jayawijaya', 'R.E Martadinata', 'M.H Thamrin',
      'Stasiun Wonokromo', 'Ahmad Yani', 'Joyoboyo', 'Indragiri', 'Kutai',
      'Kutisari Selatan', 'Rungkut Industri', 'Kendalsari', 'Wonoayu',
      'Medokan Ayu', 'KH Amin Jasuta', 'H.J Maemunah', 'Suryakencana',
      'Kapten Muslihat', 'Otto Iskandardinata', 'Tebet Barat Dalam'),

    street_prefixes_long = c('Jalan', 'Gang'),

    street_prefixes_short = c('Jl.', 'Gg.'),

    # From
    # https://id.wikipedia.org/wiki/Daftar_kabupaten_dan_kota_di_Indonesia#Daftar_kota
    cities = c(
      'Ambon', 'Balikpapan', 'Banda Aceh', 'Bandar Lampung', 'Bandung',
      'Banjar', 'Banjarbaru', 'Banjarmasin', 'Batam', 'Batu', 'Bau-Bau',
      'Bekasi', 'Bengkulu', 'Bima', 'Binjai', 'Bitung', 'Blitar', 'Bogor',
      'Bontang', 'Bukittinggi', 'Cilegon', 'Cimahi', 'Cirebon', 'Denpasar',
      'Depok', 'Dumai', 'Gorontalo', 'Jambi', 'Jayapura', 'Kediri', 'Kendari',
      'Kota Administrasi Jakarta Barat', 'Kota Administrasi Jakarta Pusat',
      'Kota Administrasi Jakarta Selatan', 'Kota Administrasi Jakarta Timur',
      'Kota Administrasi Jakarta Utara', 'Kotamobagu', 'Kupang', 'Langsa',
      'Lhokseumawe', 'Lubuklinggau', 'Madiun', 'Magelang', 'Makassar',
      'Malang', 'Manado', 'Mataram', 'Medan', 'Metro', 'Meulaboh',
      'Mojokerto', 'Padang', 'Padang Sidempuan', 'Padangpanjang', 'Pagaralam',
      'Palangkaraya', 'Palembang', 'Palopo', 'Palu', 'Pangkalpinang',
      'Parepare', 'Pariaman', 'Pasuruan', 'Payakumbuh', 'Pekalongan',
      'Pekanbaru', 'Pematangsiantar', 'Pontianak', 'Prabumulih',
      'Probolinggo', 'Purwokerto', 'Sabang', 'Salatiga', 'Samarinda',
      'Sawahlunto', 'Semarang', 'Serang', 'Sibolga', 'Singkawang', 'Solok',
      'Sorong', 'Subulussalam', 'Sukabumi', 'Sungai Penuh', 'Surabaya',
      'Surakarta', 'Tangerang', 'Tangerang Selatan', 'Tanjungbalai',
      'Tanjungpinang', 'Tarakan', 'Tasikmalaya', 'Tebingtinggi', 'Tegal',
      'Ternate', 'Tidore Kepulauan', 'Tomohon', 'Tual', 'Yogyakarta'),

    # From https://id.wikipedia.org/wiki/Daftar_provinsi_di_Indonesia
    states = c(
      'Aceh', 'Bali', 'Banten', 'Bengkulu', 'DI Yogyakarta', 'DKI Jakarta',
      'Gorontalo', 'Jambi', 'Jawa Barat', 'Jawa Tengah', 'Jawa Timur',
      'Kalimantan Barat', 'Kalimantan Selatan', 'Kalimantan Tengah',
      'Kalimantan Timur', 'Kalimantan Utara', 'Kepulauan Bangka Belitung',
      'Kepulauan Riau', 'Lampung', 'Maluku', 'Maluku Utara',
      'Nusa Tenggara Barat', 'Nusa Tenggara Timur', 'Papua', 'Papua Barat',
      'Riau', 'Sulawesi Barat', 'Sulawesi Selatan', 'Sulawesi Tengah',
      'Sulawesi Tenggara', 'Sulawesi Utara', 'Sumatera Barat',
      'Sumatera Selatan', 'Sumatera Utara'),

    # https://id.wikipedia.org/wiki/Daftar_provinsi_di_Indonesia
    states_abbr = c(
      'AC', 'BA', 'BT', 'BE', 'YO', 'JK', 'GO',
      'JA', 'JB', 'JT', 'JI', 'KB', 'KS', 'KT',
      'KI', 'KU', 'BB', 'KR', 'LA', 'MA', 'MU',
      'NB', 'NT', 'PA', 'PB', 'RI', 'SR', 'SN', 'ST',
      'SG', 'SU', 'SB', 'SS', 'SU'),

    # From https://id.wikipedia.org/wiki/Daftar_negara-negara_di_dunia
    countries = c(
      'Afganistan', 'Afrika Selatan', 'Afrika Tengah', 'Albania', 'Aljazair',
      'Amerika Serikat', 'Andorra', 'Angola', 'Antigua dan Barbuda',
      'Arab Saudi', 'Argentina', 'Armenia', 'Australia', 'Austria',
      'Azerbaijan', 'Bahama', 'Bahrain', 'Bangladesh', 'Barbados', 'Belanda',
      'Belarus', 'Belgia', 'Belize', 'Benin', 'Bhutan', 'Bolivia',
      'Bosnia dan Herzegovina', 'Botswana', 'Brasil', 'Britania Raya',
      'Brunei', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Ceko', 'Chad',
      'Chili', 'Denmark', 'Djibouti', 'Dominika', 'Ekuador', 'El Salvador',
      'Eritrea', 'Estonia', 'Ethiopia', 'Federasi Mikronesia', 'Fiji',
      'Filipina', 'Finlandia', 'Gabon', 'Gambia', 'Georgia', 'Ghana',
      'Grenada', 'Guatemala', 'Guinea', 'Guinea Khatulistiwa',
      'Guinea-Bissau', 'Guyana', 'Haiti', 'Honduras', 'Hongaria', 'India',
      'Indonesia', 'Irak', 'Iran', 'Islandia', 'Israel', 'Italia', 'Jamaika',
      'Jepang', 'Jerman', 'Kamboja', 'Kamerun', 'Kanada', 'Kazakhstan',
      'Kenya', 'Kepulauan Marshall', 'Kepulauan Solomon', 'Kirgizstan',
      'Kiribati', 'Kolombia', 'Komoro', 'Korea Selatan', 'Korea Utara',
      'Kosta Rika', 'Kroasia', 'Kuba', 'Kuwait', 'Laos', 'Latvia', 'Lebanon',
      'Lesotho', 'Liberia', 'Libya', 'Liechtenstein', 'Lituania',
      'Luksemburg', 'Madagaskar', 'Maladewa', 'Malawi', 'Malaysia', 'Mali',
      'Malta', 'Maroko', 'Mauritania', 'Mauritius', 'Meksiko', 'Mesir',
      'Moldova', 'Monako', 'Mongolia', 'Montenegro', 'Mozambik', 'Myanmar',
      'Namibia', 'Nauru', 'Nepal', 'Niger', 'Nigeria', 'Nikaragua',
      'Norwegia', 'Oman', 'Pakistan', 'Palau', 'Panama', 'Pantai Gading',
      'Papua Nugini', 'Paraguay', 'Perancis', 'Peru', 'Polandia', 'Portugal',
      'Qatar', 'Republik Demokratik Kongo', 'Republik Dominika',
      'Republik Irlandia', 'Republik Kongo', 'Republik Makedonia',
      'Republik Rakyat Tiongkok', 'Rumania', 'Rusia', 'Rwanda',
      'Saint Kitts dan Nevis', 'Saint Lucia', 'Saint Vincent dan Grenadine',
      'Samoa', 'San Marino', 'S\u00e3o Tom\u00e9 dan Pr\u00edncipe', 'Selandia Baru',
      'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapura',
      'Siprus', 'Slovenia', 'Slowakia', 'Somalia', 'Spanyol', 'Sri Lanka',
      'Sudan', 'Sudan Selatan', 'Suriah', 'Suriname', 'Swaziland', 'Swedia',
      'Swiss', 'Tajikistan', 'Tanjung Verde', 'Tanzania', 'Thailand',
      'Timor Leste', 'Togo', 'Tonga', 'Trinidad dan Tobago', 'Tunisia',
      'Turki', 'Turkmenistan', 'Tuvalu', 'Uganda', 'Ukraina',
      'Uni Emirat Arab', 'Uruguay', 'Uzbekistan', 'Vanuatu', 'Vatikan',
      'Venezuela', 'Vietnam', 'Yaman', 'Yordania', 'Yunani', 'Zambia',
      'Zimbabwe')

  ),
  public = list(
    street = function(){
      return(private$random_element(private$streets))
    },

    street_prefix_short = function(){
      return(private$random_element(private$street_prefixes_short))
    },

    street_prefix_long = function(){
      return(private$random_element(private$street_prefixes_long))
    },

    city_name = function(){
      return(private$random_element(private$cities))
    },

    state = function(){
      return(private$random_element(private$states))
    },

    state_abbr = function(){
      return(private$random_element(private$states_abbr))
    },

    country = function(){
      return(private$random_element(private$countries))
    }
  )
)
# credit_card -----------------
credit_card_id_ID = R6Class(
  "credit_card_id_ID",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_id_ID$new())$.__enclos_env__$private$first_names,
    first_name = (person_id_ID$new())$first_name,
    last_names = (person_id_ID$new())$.__enclos_env__$private$last_names,
    last_name = (person_id_ID$new())$last_name
  )
)




# internet --------------------------------
internet_id_ID = R6Class(
  "internet_id_ID",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_id_ID$new())$.__enclos_env__$private$first_names,
    last_names = (person_id_ID$new())$.__enclos_env__$private$last_names,
    first_name = (person_id_ID$new())$first_name,
    last_name = (person_id_ID$new())$last_name,
    tlds = c(
      # From https://en.wikipedia.org/wiki/List_of_Internet_top-level_domains
      'com', 'org', 'net', 'int', 'edu', 'gov', 'mil',

      # From https://id.wikipedia.org/wiki/.id
      'id', 'ac.id', 'biz.id', 'co.id', 'desa.id', 'go.id', 'mil.id',
      'my.id', 'net.id', 'or.id', 'ponpes.id', 'sch.id', 'web.id'
    )
  ),
  public = list(
    domain_word = function() {
      company = (company_id_ID$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    }
  )
)
# phone_number  --------------------------------------------
phone_number_id_ID = R6Class(
  "phone_number_id_ID",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+62-##-###-####',
      '+62-0##-###-####',

      '+62 (0##) ### ####',
      '+62 (0##) ###-####',

      '+62 (##) ### ####',
      '+62 (##) ###-####',

      '+62-###-###-####',
      '+62-0###-###-####',

      '+62 (0###) ### ####',
      '+62 (0###) ###-####',

      '+62 (###) ### ####',
      '+62 (###) ###-####',

      '(0##) ### ####',
      '(0##) ###-####',

      '(0###) ### ####',
      '(0###) ###-####',

      '08# ### ####',
      '08########'
    )
  )
)

# profile ------------------
profile_id_ID = R6Class(
  "profile_id_ID",
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
                    (person_id_ID$new())$name_female(),
                    (person_id_ID$new())$name_male())
      temp = list(
        "username" = (internet_id_ID$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_id_ID$new())$address(),
        "mail" = (internet_id_ID$new())$free_email(),
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
        "company" = (company_id_ID$new())$company(),
        "ssn" = (ssn_en_US$new())$ssn(),
        "residence" = (address_id_ID$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_id_ID$new())$url())
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

