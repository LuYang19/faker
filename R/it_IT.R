# bank --------------------------------------
bank_it_IT = R6Class(
  "bank_it_IT",
  inherit = bank_init,
  cloneable = FALSE,
  private = list(
    bban_format = '?######################',
    country_code = 'IT'
  )
)
# person ---------------------------------------
person_it_IT = R6Class(
  "person_it_IT",
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
      'Aaron', 'Akira', 'Alberto', 'Alessandro', 'Alighieri',
      'Amedeo', 'Amos', 'Anselmo', 'Antonino', 'Arcibaldo',
      'Armando', 'Artes',
      'Audenico', 'Ausonio', 'Bacchisio', 'Battista', 'Bernardo',
      'Boris', 'Caio', 'Carlo', 'Cecco', 'Cirino',
      'Cleros', 'Costantino',
      'Damiano', 'Danny', 'Davide', 'Demian', 'Dimitri', 'Domingo',
      'Dylan', 'Edilio', 'Egidio', 'Elio', 'Emanuel',
      'Enrico', 'Ercole',
      'Ermes', 'Ethan', 'Eusebio', 'Evangelista', 'Fabiano',
      'Ferdinando', 'Fiorentino', 'Flavio', 'Fulvio',
      'Gabriele', 'Gastone', 'Germano',
      'Giacinto', 'Gianantonio', 'Gianleonardo', 'Gianmarco',
      'Gianriccardo', 'Gioacchino', 'Giordano', 'Giuliano',
      'Graziano', 'Guido', 'Harry',
      'Iacopo', 'Ilario', 'Ione', 'Italo', 'Jack', 'Jari',
      'Joey', 'Joseph', 'Kai', 'Kociss', 'Laerte', 'Lauro',
      'Leonardo', 'Liborio', 'Lorenzo',
      'Ludovico', 'Maggiore', 'Manuele', 'Mariano', 'Marvin',
      'Matteo', 'Mauro', 'Michael', 'Mirco', 'Modesto',
      'Muzio', 'Nabil', 'Nathan',
      'Nick', 'Noah', 'Odino', 'Olo', 'Oreste', 'Osea', 'Pablo',
      'Patrizio', 'Piererminio', 'Pierfrancesco',
      'Piersilvio', 'Priamo', 'Quarto',
      'Quirino', 'Radames', 'Raniero', 'Renato', 'Rocco',
      'Romeo', 'Rosalino', 'Rudy', 'Sabatino', 'Samuel', 'Santo',
      'Sebastian', 'Serse',
      'Silvano', 'Sirio', 'Tancredi', 'Terzo', 'Timoteo',
      'Tolomeo', 'Trevis', 'Ubaldo', 'Ulrico', 'Valdo', 'Neri',
      'Vinicio', 'Walter', 'Xavier', 'Yago', 'Zaccaria', 'Abramo',
      'Adriano', 'Alan', 'Albino', 'Alessio',
      'Alighiero',
      'Amerigo', 'Anastasio', 'Antimo', 'Antonio', 'Arduino',
      'Aroldo', 'Arturo', 'Augusto', 'Avide', 'Baldassarre',
      'Bettino',
      'Bortolo', 'Caligola', 'Carmelo', 'Celeste', 'Ciro',
      'Costanzo', 'Dante', 'Danthon', 'Davis', 'Demis', 'Dindo',
      'Domiziano', 'Edipo', 'Egisto', 'Eliziario', 'Emidio',
      'Enzo', 'Eriberto', 'Erminio', 'Ettore', 'Eustachio',
      'Fabio', 'Fernando',
      'Fiorenzo', 'Folco', 'Furio', 'Gaetano', 'Gavino',
      'Gerlando', 'Giacobbe', 'Giancarlo', 'Gianmaria', 'Giobbe',
      'Giorgio', 'Giulio',
      'Gregorio', 'Hector', 'Ian', 'Ippolito', 'Ivano', 'Jacopo',
      'Jarno', 'Joannes', 'Joshua', 'Karim', 'Kris',
      'Lamberto',
      'Lazzaro', 'Leone', 'Lino', 'Loris', 'Luigi', 'Manfredi',
      'Marco', 'Marino', 'Marzio', 'Mattia', 'Max',
      'Michele', 'Mirko', 'Moreno',
      'Nadir', 'Nazzareno', 'Nestore', 'Nico', 'Noel', 'Odone',
      'Omar', 'Orfeo', 'Osvaldo', 'Pacifico', 'Pericle',
      'Pietro', 'Primo',
      'Quasimodo', 'Radio', 'Raoul', 'Renzo', 'Rodolfo', 'Romolo',
      'Rosolino', 'Rufo', 'Sabino', 'Sandro', 'Sasha',
      'Secondo', 'Sesto',
      'Silverio', 'Siro', 'Tazio', 'Teseo', 'Timothy', 'Tommaso',
      'Tristano', 'Umberto', 'Ariel', 'Artemide', 'Assia',
      'Azue', 'Benedetta',
      'Bibiana', 'Brigitta', 'Carmela', 'Cassiopea', 'Cesidia',
      'Cira', 'Clea', 'Cleopatra', 'Clodovea', 'Concetta',
      'Cosetta', 'Cristyn',
      'Damiana', 'Danuta', 'Deborah', 'Demi', 'Diamante', 'Diana',
      'Donatella', 'Doriana', 'Edvige', 'Elda', 'Elga',
      'Elsa', 'Emilia', 'Enrica',
      'Erminia', 'Eufemia', 'Evita', 'Fatima', 'Felicia',
      'Filomena', 'Flaviana', 'Fortunata', 'Gelsomina',
      'Genziana', 'Giacinta', 'Gilda',
      'Giovanna', 'Giulietta', 'Grazia', 'Guendalina', 'Helga',
      'Ileana', 'Ingrid', 'Irene', 'Isabel', 'Isira',
      'Ivonne', 'Jelena', 'Jole',
      'Claudia', 'Kayla', 'Kristel', 'Laura', 'Lucia', 'Lia',
      'Lidia', 'Lisa', 'Loredana', 'Loretta', 'Luce',
      'Lucrezia', 'Luna', 'Maika',
      'Marcella', 'Maria', 'Mariagiulia', 'Marianita', 'Mariapia',
      'Marieva', 'Marina', 'Maristella', 'Maruska',
      'Matilde', 'Mecren',
      'Mercedes', 'Mietta', 'Miriana', 'Miriam', 'Monia',
      'Morgana', 'Naomi', 'Nayade', 'Nicoletta', 'Ninfa', 'Noemi',
      'Nunzia', 'Olimpia',
      'Oretta', 'Ortensia', 'Penelope', 'Piccarda', 'Prisca',
      'Rebecca', 'Rita', 'Rosalba', 'Rosaria', 'Rosita',
      'Ruth', 'Samira',
      'Sarita', 'Selvaggia', 'Shaira', 'Sibilla', 'Soriana',
      'Sue ellen', 'Thea', 'Tosca', 'Ursula', 'Vania', 'Vera',
      'Vienna', 'Violante', 'Vitalba', 'Zelida'),


    last_names = c(
      'Rossi',
      'Russo',
      'Ferrari',
      'Esposito',
      'Bianchi',
      'Romano',
      'Colombo',
      'Ricci',
      'Marino',
      'Greco',
      'Bruno',
      'Gallo',
      'Conti',
      'De luca',
      'Mancini',
      'Costa',
      'Giordano',
      'Rizzo',
      'Lombardi',
      'Moretti',
      'Barbieri',
      'Fontana',
      'Santoro',
      'Mariani',
      'Rinaldi',
      'Caruso',
      'Ferrara',
      'Galli',
      'Martini',
      'Leone',
      'Longo',
      'Gentile',
      'Martinelli',
      'Vitale',
      'Lombardo',
      'Serra',
      'Coppola',
      'De Santis',
      'D\'angelo',
      'Marchetti',
      'Parisi',
      'Villa',
      'Conte',
      'Ferraro',
      'Ferri',
      'Fabbri',
      'Bianco',
      'Marini',
      'Grasso',
      'Valentini',
      'Messina',
      'Sala',
      'De Angelis',
      'Gatti',
      'Pellegrini',
      'Palumbo',
      'Sanna',
      'Farina',
      'Rizzi',
      'Monti',
      'Cattaneo',
      'Morelli',
      'Amato',
      'Silvestri',
      'Mazza',
      'Testa',
      'Grassi',
      'Pellegrino',
      'Carbone',
      'Giuliani',
      'Benedetti',
      'Barone',
      'Rossetti',
      'Caputo',
      'Montanari',
      'Guerra',
      'Palmieri',
      'Bernardi',
      'Martino',
      'Fiore',
      'De rosa',
      'Ferretti',
      'Bellini',
      'Basile',
      'Riva',
      'Donati',
      'Piras',
      'Vitali',
      'Battaglia',
      'Sartori',
      'Neri',
      'Costantini',
      'Milani',
      'Pagano',
      'Ruggiero',
      'Sorrentino',
      'D\'amico',
      'Orlando',
      'Damico',
      'Negri'),

    prefixes_female = c('Dott.', 'Sig.ra'),
    prefixes_male = c('Dott.', 'Sig.'),

    prefixes = c('Dott.', 'Sig.', 'Sig.ra')
  )
)

# company --------------------------------------------
company_it_IT = R6Class(
  "company_it_IT",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_it_IT$new())$.__enclos_env__$private$first_names,
    first_name = (person_it_IT$new())$first_name,
    last_names = (person_it_IT$new())$.__enclos_env__$private$last_names,
    last_name = (person_it_IT$new())$last_name,

    formats = c(
      '{last_name} {company_suffix}',
      '{last_name}-{last_name} {company_suffix}',
      '{last_name}, {last_name} e {last_name} {company_suffix}'),

    catch_phrase_words = list(
      c('Abilit\u00e0',
        'Access',
        'Adattatore',
        'Algoritmo',
        'Alleanza',
        'Analizzatore',
        'Applicazione',
        'Approccio',
        'Architettura',
        'Archivio',
        'Intelligenza artificiale',
        'Array',
        'Attitudine',
        'Benchmark',
        'Capacit\u00e0',
        'Sfida',
        'Circuito',
        'Collaborazione',
        'Complessit\u00e0',
        'Concetto',
        'Conglomerato',
        'Contingenza',
        'Core',
        'Database',
        'Data-warehouse',
        'Definizione',
        'Emulazione',
        'Codifica',
        'Criptazione',
        'Firmware',
        'Flessibilit\u00e0',
        'Previsione',
        'Frame',
        'framework',
        'Funzione',
        'Funzionalit\u00e0',
        'Interfaccia grafica',
        'Hardware',
        'Help-desk',
        'Gerarchia',
        'Hub',
        'Implementazione',
        'Infrastruttura',
        'Iniziativa',
        'Installazione',
        'Set di istruzioni',
        'Interfaccia',
        'Soluzione internet',
        'Intranet',
        'Conoscenza base',
        'Matrici',
        'Matrice',
        'Metodologia',
        'Middleware',
        'Migrazione',
        'Modello',
        'Moderazione',
        'Monitoraggio',
        'Moratoria',
        'Rete',
        'Architettura aperta',
        'Sistema aperto',
        'Orchestrazione',
        'Paradigma',
        'Parallelismo',
        'Policy',
        'Portale',
        'Struttura di prezzo',
        'Prodotto',
        'Produttivit\u00e0',
        'Progetto',
        'Proiezione',
        'Protocollo',
        'Servizio clienti',
        'Software',
        'Soluzione',
        'Standardizzazione',
        'Strategia',
        'Struttura',
        'Successo',
        'Sovrastruttura',
        'Supporto',
        'Sinergia',
        'Task-force',
        'Finestra temporale',
        'Strumenti',
        'Utilizzazione',
        'Sito web',
        'Forza lavoro'),
      c('adattiva',
        'avanzata',
        'migliorata',
        'assimilata',
        'automatizzata',
        'bilanciata',
        'centralizzata',
        'compatibile',
        'configurabile',
        'cross-platform',
        'decentralizzata',
        'digitalizzata',
        'distribuita',
        'piccola',
        'ergonomica',
        'esclusiva',
        'espansa',
        'estesa',
        'configurabile',
        'fondamentale',
        'orizzontale',
        'implementata',
        'innovativa',
        'integrata',
        'intuitiva',
        'inversa',
        'gestita',
        'obbligatoria',
        'monitorata',
        'multi-canale',
        'multi-laterale',
        'open-source',
        'operativa',
        'ottimizzata',
        'organica',
        'persistente',
        'polarizzata',
        'proattiva',
        'programmabile',
        'progressiva',
        'reattiva',
        'riallineata',
        'ricontestualizzata',
        'ridotta',
        'robusta',
        'sicura',
        'condivisibile',
        'stand-alone',
        'switchabile',
        'sincronizzata',
        'sinergica',
        'totale',
        'universale',
        'user-friendly',
        'versatile',
        'virtuale',
        'visionaria'),
      c('24 ore',
        '24/7',
        'terza generazione',
        'quarta generazione',
        'quinta generazione',
        'sesta generazione',
        'asimmetrica',
        'asincrona',
        'background',
        'bi-direzionale',
        'biforcata',
        'bottom-line',
        'coerente',
        'coesiva',
        'composita',
        'sensibile al contesto',
        'basta sul contesto',
        'basata sul contenuto',
        'dedicata',
        'didattica',
        'direzionale',
        'discreta',
        'dinamica',
        'eco-centrica',
        'esecutiva',
        'esplicita',
        'full-range',
        'globale',
        'euristica',
        'alto livello',
        'olistica',
        'omogenea',
        'ibrida',
        'impattante',
        'incrementale',
        'intangibile',
        'interattiva',
        'intermediaria',
        'locale',
        'logistica',
        'massimizzata',
        'metodica',
        'mission-critical',
        'mobile',
        'modulare',
        'motivazionale',
        'multimedia',
        'multi-tasking',
        'nazionale',
        'neutrale',
        'nextgeneration',
        'non-volatile',
        'object-oriented',
        'ottima',
        'ottimizzante',
        'radicale',
        'real-time',
        'reciproca',
        'regionale',
        'responsiva',
        'scalabile',
        'secondaria',
        'stabile',
        'statica',
        'sistematica',
        'sistemica',
        'tangibile',
        'terziaria',
        'uniforme',
        'valore aggiunto')),

    bs_words = list(
      c('partnerships',
        'comunit\u00e0',
        'ROI',
        'soluzioni',
        'e-services',
        'nicchie',
        'tecnologie',
        'contenuti',
        'supply-chains',
        'convergenze',
        'relazioni',
        'architetture',
        'interfacce',
        'mercati',
        'e-commerce',
        'sistemi',
        'modelli',
        'schemi',
        'reti',
        'applicazioni',
        'metriche',
        'e-business',
        'funzionalit\u00e0',
        'esperienze',
        'webservices',
        'metodologie'),
      c('implementate',
        'utilizzo',
        'integrate',
        'ottimali',
        'evolutive',
        'abilitate',
        'reinventate',
        'aggregate',
        'migliorate',
        'incentivate',
        'monetizzate',
        'sinergizzate',
        'strategiche',
        'deploy',
        'marchi',
        'accrescitive',
        'target',
        'sintetizzate',
        'spedizioni',
        'massimizzate',
        'innovazione',
        'guida',
        'estensioni',
        'generate',
        'exploit',
        'transizionali',
        'matrici',
        'ricontestualizzate'),
      c('valore aggiunto',
        'verticalizzate',
        'proattive',
        'forti',
        'rivoluzionari',
        'scalabili',
        'innovativi',
        'intuitivi',
        'strategici',
        'e-business',
        'mission-critical',
        '24/7',
        'globali',
        'B2B',
        'B2C',
        'granulari',
        'virtuali',
        'virali',
        'dinamiche',
        'magnetiche',
        'web',
        'interattive',
        'sexy',
        'back-end',
        'real-time',
        'efficienti',
        'front-end',
        'distributivi',
        'estensibili',
        'mondiali',
        'open-source',
        'cross-platform',
        'sinergiche',
        'out-of-the-box',
        'enterprise',
        'integrate',
        'di impatto',
        'wireless',
        'trasparenti',
        'next-generation',
        'cutting-edge',
        'visionari',
        'plug-and-play',
        'collaborative',
        'olistiche',
        'ricche')),

    company_suffixes = c('SPA', 'e figli', 'Group', 's.r.l.')
  )
)

# address -----------------------------------
address_it_IT = R6Class(
  "address_it_IT",
  inherit = address_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_it_IT$new())$.__enclos_env__$private$first_names,
    first_name = (person_it_IT$new())$first_name,
    last_names = (person_it_IT$new())$.__enclos_env__$private$last_names,
    last_name = (person_it_IT$new())$last_name,

    city_prefixes = c(
      'San', 'Borgo', 'Sesto', 'Quarto', 'Settimo'),

    city_suffixes = c(
      'a mare', 'lido', 'ligure', 'del friuli', 'salentino',
      'calabro', 'veneto', 'nell\'emilia', 'umbro', 'laziale',
      'terme', 'sardo'),

    building_number_formats = c('###', '##', '#'),

    street_suffixes = c(
      'Piazza', 'Strada', 'Via', 'Borgo', 'Contrada',
      'Rotonda', 'Incrocio', 'Viale', 'Stretto', 'Vicolo',
      'Canale'
    ),

    postcode_formats = '#####',
    states = c(
      'Agrigento', 'Alessandria', 'Ancona', 'Aosta', 'Arezzo',
      'Ascoli Piceno', 'Asti', 'Avellino', 'Bari',
      'Barletta-Andria-Trani', 'Belluno', 'Benevento', 'Bergamo',
      'Biella', 'Bologna', 'Bolzano', 'Brescia', 'Brindisi',
      'Cagliari', 'Caltanissetta', 'Campobasso', 'Carbonia-Iglesias',
      'Caserta', 'Catania', 'Catanzaro', 'Chieti', 'Como', 'Cosenza',
      'Cremona', 'Crotone', 'Cuneo', 'Enna', 'Fermo', 'Ferrara',
      'Firenze', 'Foggia', 'Forl\u00ec-Cesena', 'Frosinone', 'Genova',
      'Gorizia', 'Grosseto', 'Imperia', 'Isernia', 'La Spezia',
      'L\'Aquila', 'Latina', 'Lecce', 'Lecco', 'Livorno', 'Lodi',
      'Lucca', 'Macerata', 'Mantova', 'Massa-Carrara', 'Matera',
      'Messina', 'Milano', 'Modena', 'Monza e della Brianza', 'Napoli',
      'Novara', 'Nuoro', 'Olbia-Tempio', 'Oristano', 'Padova',
      'Palermo', 'Parma', 'Pavia', 'Perugia', 'Pesaro e Urbino',
      'Pescara', 'Piacenza', 'Pisa', 'Pistoia', 'Pordenone', 'Potenza',
      'Prato', 'Ragusa', 'Ravenna', 'Reggio Calabria', 'Reggio Emilia',
      'Rieti', 'Rimini', 'Roma', 'Rovigo', 'Salerno',
      'Medio Campidano', 'Sassari', 'Savona', 'Siena', 'Siracusa',
      'Sondrio', 'Taranto', 'Teramo', 'Terni', 'Torino', 'Ogliastra',
      'Trapani', 'Trento', 'Treviso', 'Trieste', 'Udine', 'Varese',
      'Venezia', 'Verbano-Cusio-Ossola', 'Vercelli', 'Verona',
      'Vibo Valentia', 'Vicenza', 'Viterbo'),

    states_abbr = c(
      'AG', 'AL', 'AN', 'AO', 'AR', 'AP', 'AT', 'AV', 'BA', 'BT',
      'BL', 'BN', 'BG', 'BI', 'BO', 'BZ', 'BS', 'BR', 'CA', 'CL',
      'CB', 'CI', 'CE', 'CT', 'CZ', 'CH', 'CO', 'CS', 'CR', 'KR',
      'CN', 'EN', 'FM', 'FE', 'FI', 'FG', 'FC', 'FR', 'GE', 'GO',
      'GR', 'IM', 'IS', 'SP', 'AQ', 'LT', 'LE', 'LC', 'LI', 'LO',
      'LU', 'MC', 'MN', 'MS', 'MT', 'ME', 'MI', 'MO', 'MB', 'NA',
      'NO', 'NU', 'OT', 'OR', 'PD', 'PA', 'PR', 'PV', 'PG', 'PU',
      'PE', 'PC', 'PI', 'PT', 'PN', 'PZ', 'PO', 'RG', 'RA', 'RC',
      'RE', 'RI', 'RN', 'RM', 'RO', 'SA', 'VS', 'SS', 'SV', 'SI',
      'SR', 'SO', 'TA', 'TE', 'TR', 'TO', 'OG', 'TP', 'TN', 'TV',
      'TS', 'UD', 'VA', 'VE', 'VB', 'VC', 'VR', 'VV', 'VI', 'VT'),

    countries = c(
      'Afghanistan', 'Albania', 'Algeria', 'American Samoa', 'Andorra',
      'Angola', 'Anguilla', 'Antartide (territori a sud del 60\u00b0 parallelo)',
      'Antigua e Barbuda', 'Argentina', 'Armenia', 'Aruba', 'Australia',
      'Austria', 'Azerbaijan', 'Bahamas', 'Bahrain', 'Bangladesh',
      'Barbados', 'Bielorussia', 'Belgio', 'Belize', 'Benin', 'Bermuda',
      'Bhutan', 'Bolivia', 'Bosnia e Herzegovina', 'Botswana',
      'Bouvet Island (Bouvetoya)', 'Brasile',
      'Territorio dell\'arcipelago indiano', 'Isole Vergini Britanniche',
      'Brunei Darussalam', 'Bulgaria', 'Burkina Faso', 'Burundi', 'Cambogia',
      'Cameroon', 'Canada', 'Capo Verde', 'Isole Cayman',
      'Repubblica Centrale Africana', 'Chad', 'Cile', 'Cina',
      'Isola di Pasqua', 'Isola di Cocos (Keeling)', 'Colombia', 'Comoros',
      'Congo', 'Isole Cook', 'Costa Rica', 'Costa d\'Avorio', 'Croazia',
      'Cuba', 'Cipro', 'Repubblica Ceca', 'Danimarca', 'Gibuti',
      'Repubblica Dominicana', 'Equador', 'Egitto', 'El Salvador',
      'Guinea Equatoriale', 'Eritrea', 'Estonia', 'Etiopia', 'Isole Faroe',
      'Isole Falkland (Malvinas)', 'Fiji', 'Finlandia', 'Francia',
      'Guyana Francese', 'Polinesia Francese', 'Territori Francesi del sud',
      'Gabon', 'Gambia', 'Georgia', 'Germania', 'Ghana', 'Gibilterra',
      'Grecia', 'Groenlandia', 'Grenada', 'Guadalupa', 'Guam', 'Guatemala',
      'Guernsey', 'Guinea', 'Guinea-Bissau', 'Guyana', 'Haiti',
      'Heard Island and McDonald Islands', 'Citt\u00e0 del Vaticano', 'Honduras',
      'Hong Kong', 'Ungheria', 'Islanda', 'India', 'Indonesia', 'Iran',
      'Iraq', 'Irlanda', 'Isola di Man', 'Israele', 'Italia', 'Giamaica',
      'Giappone', 'Jersey', 'Giordania', 'Kazakhstan', 'Kenya', 'Kiribati',
      'Korea', 'Kuwait', 'Republicca Kirgiza', 'Repubblica del Laos',
      'Latvia', 'Libano', 'Lesotho', 'Liberia', 'Libyan Arab Jamahiriya',
      'Liechtenstein', 'Lituania', 'Lussemburgo', 'Macao', 'Macedonia',
      'Madagascar', 'Malawi', 'Malesia', 'Maldive', 'Mali', 'Malta',
      'Isole Marshall', 'Martinica', 'Mauritania', 'Mauritius', 'Mayotte',
      'Messico', 'Micronesia', 'Moldova', 'Principato di Monaco', 'Mongolia',
      'Montenegro', 'Montserrat', 'Marocco', 'Mozambico', 'Myanmar',
      'Namibia', 'Nauru', 'Nepal', 'Antille Olandesi', 'Olanda',
      'Nuova Caledonia', 'Nuova Zelanda', 'Nicaragua', 'Niger', 'Nigeria',
      'Niue', 'Isole Norfolk', 'Northern Mariana Islands', 'Norvegia',
      'Oman', 'Pakistan', 'Palau', 'Palestina', 'Panama',
      'Papua Nuova Guinea', 'Paraguay', 'Peru', 'Filippine',
      'Pitcairn Islands', 'Polonia', 'Portogallo', 'Porto Rico', 'Qatar',
      'Reunion', 'Romania', 'Russia', 'Rwanda', 'San Bartolomeo',
      'Sant\'Elena', 'Saint Kitts and Nevis', 'Saint Lucia', 'Saint Martin',
      'Saint Pierre and Miquelon', 'Saint Vincent and the Grenadines',
      'Samoa', 'San Marino', 'Sao Tome and Principe', 'Arabia Saudita',
      'Senegal', 'Serbia', 'Seychelles', 'Sierra Leone', 'Singapore',
      'Slovenia', 'Isole Solomon', 'Somalia', 'Sud Africa',
      'Georgia del sud e South Sandwich Islands', 'Spagna', 'Sri Lanka',
      'Sudan', 'Suriname', 'Svalbard & Jan Mayen Islands', 'Swaziland',
      'Svezia', 'Svizzera', 'Siria', 'Taiwan', 'Tajikistan', 'Tanzania',
      'Tailandia', 'Timor-Leste', 'Togo', 'Tokelau', 'Tonga',
      'Trinidad e Tobago', 'Tunisia', 'Turchia', 'Turkmenistan',
      'Isole di Turks and Caicos', 'Tuvalu', 'Uganda', 'Ucraina',
      'Emirati Arabi Uniti', 'Regno Unito', 'Stati Uniti d\'America',
      'United States Minor Outlying Islands', 'Isole Vergini Statunitensi',
      'Uruguay', 'Uzbekistan', 'Vanuatu', 'Venezuela', 'Vietnam',
      'Wallis and Futuna', 'Western Sahara', 'Yemen', 'Zambia', 'Zimbabwe'),

    city_formats = c(
      '{city_prefix} {first_name} {city_suffix}',
      '{city_prefix} {first_name}',
      '{first_name} {city_suffix}',
      '{last_name} {city_suffix}'
    ),

    street_name_formats = c(
      '{street_suffix} {first_name}',
      '{street_suffix} {last_name}'
    ),

    street_address_formats = c(
      '{street_name} {building_number}',
      '{street_name} {building_number} {secondary_address}'),

    address_formats = c(
      "{street_address}\n{city}, {postcode} {state} ({state_abbr})"),

    secondary_address_formats = c('Appartamento ##', 'Piano #')
  ),

  public = list(
    city_prefix = function(){
      return(private$random_element(private$city_prefixes))
    },

    secondary_address = function(){
      return(private$numerify(private$random_element(
          private$secondary_address_formats)))
    },

    state = function(){
      return(private$random_element(private$states))
    },

    state_abbr = function(){
      return(private$random_element(private$states_abbr))
    }
  )
)
# internet --------------------------------------------
internet_it_IT = R6Class(
  "internet_it_IT",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_it_IT$new())$.__enclos_env__$private$first_names,
    first_name = (person_it_IT$new())$first_name,
    last_names = (person_it_IT$new())$.__enclos_env__$private$last_names,
    last_name = (person_it_IT$new())$last_name,

    safe_email_tlds = c('com', 'net', 'eu', 'it', 'it', 'it'),
    free_email_domains = c(
      'libero.it', 'libero.it', 'libero.it',
      'tim.it',
      'tin.it',
      'alice.it',
      'virgilio.it',
      'tiscali.it',
      'fastwebnet.it',
      'vodafone.it',
      'poste.it',
      'gmail.com', 'gmail.com', 'gmail.com',
      'outlook.com',
      'live.com',
      'hotmail.com',
      'hotmail.it',
      'yahoo.com',
      'tele2.it'
    ),
    tlds = c('com', 'com', 'com', 'net', 'org', 'eu', 'it', 'it', 'it', 'it'),
    replacements = list(
      c('\u00e0', 'a'), c('\u00e9', 'e'), c('\u00e8', 'e'),
      c('\u00ec', 'i'), c('\u00f2', 'o'), c('\u00f9', 'u')
    )
  ),
  public = list(
    domain_word = function() {
      company = (company_it_IT$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    }
  )
)
# phone_number -------------------------------------
phone_number_it_IT = R6Class(
  "phone_number_it_IT",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+39 ### ## ## ####',
      '+39 ## #######',
      '+39 ## ########',
      '+39 ### #######',
      '+39 ### ########',
      '+39 #### #######',
      '+39 #### ########'
    )
  )
)

# ssn -----------------------------------------
ssn_it_IT = R6Class(
  "ssn_it_IT",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    locale = "it_IT",
    fiscal_code_format = '??????##?##?###',
    vat_id_formats = 'IT###########',

    ALPHANUMERICS = c(seq(0, 9), LETTERS),
    CHECKSUM_TABLE = list(
      c(1, 0, 5, 7, 9, 13, 15, 17, 19, 21, 1, 0, 5, 7, 9, 13, 15, 17, 19,
        21, 2, 4, 18, 20, 11, 3, 6, 8, 12, 14, 16, 10, 22, 25, 24, 23),
      c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10,
        11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25)),

    checksum = function(value) {
      # Calculates the checksum char used for the 16th char.
      # Author: Vincenzo Palazzo
      temp = 0
      for (i in seq_along(value)){
        char = value[i]
        index = which(private$ALPHANUMERICS == char)
        temp = temp + private$CHECKSUM_TABLE[[(i %% 2) +1]][index]
      }
      return(str_count(65 + (temp %% 26)))
    }
  ),

  public = list(
    ssn = function(){
      code = str_to_upper(private$bothify(
        private$fiscal_code_format), locale = private$locale)
      return(str_c(code, private$checksum(code)))
    },

    vat_id = function(){
      # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
      # :return: A random Italian VAT ID

      return(private$bothify(private$random_element(private$vat_id_formats)))
    }
  )
)

# credit_card -----------------
credit_card_it_IT = R6Class(
  "credit_card_it_IT",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_it_IT$new())$.__enclos_env__$private$first_names,
    first_name = (person_it_IT$new())$first_name,
    last_names = (person_it_IT$new())$.__enclos_env__$private$last_names,
    last_name = (person_it_IT$new())$last_name
  )
)




# profile ------------------
profile_it_IT = R6Class(
  "profile_it_IT",
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
                    (person_it_IT$new())$name_female(),
                    (person_it_IT$new())$name_male())
      temp = list(
        "username" = (internet_it_IT$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_it_IT$new())$address(),
        "mail" = (internet_it_IT$new())$free_email(),
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
        "company" = (company_it_IT$new())$company(),
        "ssn" = (ssn_en_US$new())$ssn(),
        "residence" = (address_it_IT$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_it_IT$new())$url())
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

