# automotive -----------------------------------
automotive_hu_HU = R6Class(
  "automotive_hu_HU",
  inherit = automotive_init,
  cloneable = FALSE,
  private = list(
    # from https://en.wikipedia.org/wiki/Vehicle_registration_plates_of_Hungary
    license_formats = '???-###'
  )
)

# person -----------------------------------
person_hu_HU = R6Class(
  "person_hu_HU",
  inherit = person_init,
  cloneable = FALSE,
  private = list(

    formats_male = list(
      c("{last_name} {first_name_male}", 0.1),
      c("{last_name} {last_name} {first_name_male}", 0.1),
      c("{last_name} {first_name_male} {first_name_male}", 0.1),
      c("{first_name_male_abbreviated} {last_name} {first_name_male}", 0.1),
      c("{last_name} {first_name_male_abbreviated} {first_name_male}", 0.1),
      c("{prefix} {last_name} {first_name_male}", 0.05),
      c("{prefix} {last_name} {last_name} {first_name_male}", 0.05),
      c("{prefix} {last_name} {first_name_male} {first_name_male}", 0.05),
      c("{prefix} {first_name_male_abbreviated} {last_name} {first_name_male}", 0.05),
      c("{prefix} {last_name} {first_name_male_abbreviated} {first_name_male}", 0.05)),

    formats_female = list(
      c("{last_name} {first_name_female}", 0.1),
      c("{last_name} {last_name} {first_name_female}", 0.1),
      c("{last_name} {first_name_female} {first_name_female}", 0.1),
      c("{first_name_female_abbreviated} {last_name} {first_name_female}", 0.1),
      c("{last_name} {first_name_female_abbreviated} {first_name_female}", 0.1),
      c("{prefix} {last_name} {first_name_female}", 0.05),
      c("{prefix} {last_name} {last_name} {first_name_female}", 0.05),
      c("{prefix} {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{prefix} {first_name_female_abbreviated} {last_name} {first_name_female}", 0.05),
      c("{prefix} {last_name} {first_name_female_abbreviated} {first_name_female}", 0.05),
      c("{last_name}n\u00e9 {last_name} {first_name_female}", 0.1),
      c("{last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.1),
      c("{last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{last_name} {first_name_male}n\u00e9", 0.05),
      c("{last_name} {first_name_male}n\u00e9 {last_name} {first_name_female}", 0.1),
      c("{prefix} {last_name}n\u00e9 {last_name} {first_name_female}", 0.1),
      c("{prefix} {last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{prefix} {last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{prefix} {last_name} {first_name_male}n\u00e9", 0.1),
      c("{prefix} {last_name} {first_name_male}n\u00e9 {last_name} {first_name_female}'", 0.05),
      c("{last_name}n\u00e9 {prefix} {last_name} {first_name_female}", 0.1 ),
      c("{last_name}n\u00e9 {prefix} {last_name} {first_name_female} {first_name_female}", 0.05)),


    formats = list(
      c("{last_name} {first_name_male}", 0.1),
      c("{last_name} {last_name} {first_name_male}", 0.1),
      c("{last_name} {first_name_male} {first_name_male}", 0.1),
      c("{first_name_male_abbreviated} {last_name} {first_name_male}", 0.1),
      c("{last_name} {first_name_male_abbreviated} {first_name_male}", 0.1),
      c("{prefix} {last_name} {first_name_male}", 0.05),
      c("{prefix} {last_name} {last_name} {first_name_male}", 0.05),
      c("{prefix} {last_name} {first_name_male} {first_name_male}", 0.05),
      c("{prefix} {first_name_male_abbreviated} {last_name} {first_name_male}", 0.05),
      c("{prefix} {last_name} {first_name_male_abbreviated} {first_name_male}", 0.05),

      c("{last_name} {first_name_female}", 0.1),
      c("{last_name} {last_name} {first_name_female}", 0.1),
      c("{last_name} {first_name_female} {first_name_female}", 0.1),
      c("{first_name_female_abbreviated} {last_name} {first_name_female}", 0.1),
      c("{last_name} {first_name_female_abbreviated} {first_name_female}", 0.1),
      c("{prefix} {last_name} {first_name_female}", 0.05),
      c("{prefix} {last_name} {last_name} {first_name_female}", 0.05),
      c("{prefix} {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{prefix} {first_name_female_abbreviated} {last_name} {first_name_female}", 0.05),
      c("{prefix} {last_name} {first_name_female_abbreviated} {first_name_female}", 0.05),
      c("{last_name}n\u00e9 {last_name} {first_name_female}", 0.1),
      c("{last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.1),
      c("{last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{last_name} {first_name_male}n\u00e9", 0.05),
      c("{last_name} {first_name_male}n\u00e9 {last_name} {first_name_female}", 0.1),
      c("{prefix} {last_name}n\u00e9 {last_name} {first_name_female}", 0.1),
      c("{prefix} {last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{prefix} {last_name}n\u00e9 {last_name} {first_name_female} {first_name_female}", 0.05),
      c("{prefix} {last_name} {first_name_male}n\u00e9", 0.1),
      c("{prefix} {last_name} {first_name_male}n\u00e9 {last_name} {first_name_female}'", 0.05),
      c("{last_name}n\u00e9 {prefix} {last_name} {first_name_female}", 0.1 ),
      c("{last_name}n\u00e9 {prefix} {last_name} {first_name_female} {first_name_female}", 0.05)),

    last_names = list(
      c('Nagy', 0.0699),
      c('Kov\u00e1cs', 0.0646),
      c('T\u00f3th', 0.0632),
      c('Szab\u00f3', 0.0623),
      c('Horv\u00e1th', 0.06),
      c('Varga', 0.041),
      c('Kiss', 0.0389),
      c('Moln\u00e1r', 0.0319),
      c('N\u00e9meth', 0.0272),
      c('Farkas', 0.025),
      c('Balogh', 0.0247),
      c('Papp', 0.0157),
      c('Tak\u00e1cs', 0.0154),
      c('Juh\u00e1sz', 0.0152),
      c('Lakatos', 0.0149),
      c('M\u00e9sz\u00e1ros', 0.0118),
      c('Ol\u00e1h', 0.0116),
      c('Simon', 0.0113),
      c('R\u00e1cz', 0.0106),
      c('Fekete', 0.0102),
      c('Szil\u00e1gyi', 0.0096),
      c('T\u00f6r\u00f6k', 0.0079),
      c('Feh\u00e9r', 0.0079),
      c('Bal\u00e1zs', 0.0077),
      c('G\u00e1l', 0.0076),
      c('Kis', 0.0073),
      c('Sz\u0171cs', 0.0071),
      c('Kocsis', 0.007),
      c('Ors\u00f3s', 0.0069),
      c('Pint\u00e9r', 0.006),
      c('Fodor', 0.0069),
      c('Szalai', 0.0063),
      c('Sipos', 0.0062),
      c('Magyar', 0.0061),
      c('Luk\u00e1cs', 0.0061),
      c('Guly\u00e1s', 0.0059),
      c('Bir\u00f3', 0.0058),
      c('Kir\u00e1ly', 0.0056),
      c('L\u00e1szl\u00f3', 0.0055),
      c('Katona', 0.0055),
      c('Jakab', 0.0054),
      c('Bogd\u00e1n', 0.0054),
      c('Balog', 0.0053),
      c('S\u00e1ndor', 0.0052),
      c('Boros', 0.0052),
      c('Fazekas', 0.005),
      c('Kelemen', 0.005),
      c('V\u00e1radi', 0.005),
      c('Antal', 0.0049),
      c('Somogyi', 0.0049),
      c('Orosz', 0.0048),
      c('F\u00fcl\u00f6p', 0.0048),
      c('Veres', 0.0047),
      c('Vincze', 0.0047),
      c('Heged\u0171s', 0.0046),
      c('Budai', 0.0045),
      c('De\u00e1k', 0.0045),
      c('Pap', 0.0044),
      c('B\u00e1lint', 0.0044),
      c('P\u00e1l', 0.0043),
      c('Ill\u00e9s', 0.0042),
      c('Vass', 0.0042),
      c('Sz\u0151ke', 0.0042),
      c('V\u00f6r\u00f6s', 0.0042),
      c('Bogn\u00e1r', 0.0042),
      c('F\u00e1bi\u00e1n', 0.0042),
      c('Lengyel', 0.0041),
      c('Bodn\u00e1r', 0.0041),
      c('Sz\u00fccs', 0.004),
      c('Hajdu', 0.0039),
      c('Hal\u00e1sz', 0.0039),
      c('J\u00f3n\u00e1s', 0.0039),
      c('M\u00e1t\u00e9', 0.0037),
      c('Sz\u00e9kely', 0.0037),
      c('Kozma', 0.0037),
      c('G\u00e1sp\u00e1r', 0.0036),
      c('P\u00e1sztor', 0.0036),
      c('Bakos', 0.0035),
      c('Dud\u00e1s', 0.0035),
      c('Major', 0.0035),
      c('Orb\u00e1n', 0.0034),
      c('Heged\u00fcs', 0.0034),
      c('Vir\u00e1g', 0.0034),
      c('Barna', 0.0034),
      c('Nov\u00e1k', 0.0033),
      c('So\u00f3s', 0.0033),
      c('Tam\u00e1s', 0.0033),
      c('Nemes', 0.0033),
      c('Pataki', 0.0032),
      c('Balla', 0.0031),
      c('Farag\u00f3', 0.0031),
      c('Kerekes', 0.0031),
      c('Borb\u00e9ly', 0.0031),
      c('Barta', 0.0031),
      c('P\u00e9ter', 0.003),
      c('Szekeres', 0.0031),
      c('Csonka', 0.0031),
      c('Mezei', 0.003),
      c('M\u00e1rton', 0.003),
      c('S\u00e1rk\u00f6zi', 0.003)),

    first_names_male = list(
      c('L\u00e1szl\u00f3', 0.0664),
      c('Istv\u00e1n', 0.0609),
      c('J\u00f3zsef', 0.0545),
      c('J\u00e1nos', 0.0475),
      c('Zolt\u00e1n', 0.0456),
      c('S\u00e1ndor', 0.0372),
      c('G\u00e1bor', 0.0355),
      c('Ferenc', 0.0341),
      c('Attila', 0.0321),
      c('P\u00e9ter', 0.0308),
      c('Tam\u00e1s', 0.0303),
      c('Zsolt', 0.0252),
      c('Tibor', 0.0233),
      c('Andr\u00e1s', 0.0217),
      c('Csaba', 0.0204),
      c('Imre', 0.0193),
      c('Lajos', 0.0179),
      c('Gy\u00f6rgy', 0.017),
      c('Bal\u00e1zs', 0.0156),
      c('Gyula', 0.0143),
      c('Mih\u00e1ly', 0.0136),
      c('R\u00f3bert', 0.0134),
      c('K\u00e1roly', 0.0132),
      c('D\u00e1vid', 0.0132),
      c('D\u00e1niel', 0.0124),
      c('\u00e1d\u00e1m', 0.0123),
      c('B\u00e9la', 0.0123),
      c('Kriszti\u00e1n', 0.0116),
      c('Mikl\u00f3s', 0.011),
      c('Norbert', 0.0107),
      c('Bence', 0.0104),
      c('M\u00e1t\u00e9', 0.0095),
      c('P\u00e1l', 0.0079),
      c('Gerg\u0151', 0.0076),
      c('Roland', 0.0075),
      c('Szabolcs', 0.0075),
      c('B\u00e1lint', 0.007),
      c('Levente', 0.0069),
      c('M\u00e1rk', 0.0069),
      c('Rich\u00e1rd', 0.0068),
      c('Antal', 0.0066),
      c('Gergely', 0.0064),
      c('\u00e1kos', 0.0063),
      c('Viktor', 0.0059),
      c('\u00e1rp\u00e1d', 0.0052),
      c('M\u00e1rton', 0.0051),
      c('G\u00e9za', 0.005),
      c('Krist\u00f3f', 0.0045),
      c('Mil\u00e1n', 0.004),
      c('Dominik', 0.0039),
      c('Patrik', 0.0039),
      c('Martin', 0.0037),
      c('Barnab\u00e1s', 0.0036),
      c('Jen\u0151', 0.0036),
      c('K\u00e1lm\u00e1n', 0.0036),
      c('Marcell', 0.0036),
      c('\u00e1ron', 0.0032),
      c('M\u00e1ty\u00e1s', 0.003),
      c('Ern\u0151', 0.003),
      c('Endre', 0.0028),
      c('Botond', 0.0028),
      c('Zsombor', 0.0028),
      c('Dezs\u0151', 0.0026),
      c('Oliv\u00e9r', 0.0025),
      c('N\u00e1ndor', 0.0025),
      c('Szil\u00e1rd', 0.0024),
      c('Erik', 0.0024),
      c('Alex', 0.0023),
      c('Benedek', 0.0021),
      c('Vilmos', 0.0021),
      c('Korn\u00e9l', 0.002),
      c('Zal\u00e1n', 0.002),
      c('D\u00e9nes', 0.0019),
      c('Ott\u00f3', 0.0019),
      c('Benj\u00e1min', 0.0017),
      c('Bertalan', 0.0017),
      c('Kevin', 0.0017),
      c('Adri\u00e1n', 0.0016),
      c('Rudolf', 0.0014),
      c('Noel', 0.0014),
      c('Albert', 0.0014),
      c('Vince', 0.0014),
      c('Ervin', 0.0012),
      c('Gy\u0151z\u0151', 0.0011),
      c('Zsigmond', 0.0011),
      c('Andor', 0.0011),
      c('Iv\u00e1n', 0.001),
      c('Szilveszter', 0.001),
      c('Guszt\u00e1v', 0.001),
      c('Barna', 0.001),
      c('\u00e1bel', 0.001),
      c('Hunor', 0.0009),
      c('Arnold', 0.0009),
      c('Csongor', 0.0009),
      c('Elem\u00e9r', 0.0009),
      c('Krisztofer', 0.0009),
      c('Bendeg\u00faz', 0.0009),
      c('Emil', 0.0008),
      c('Tivadar', 0.0008),
      c('Henrik', 0.0008)),

    first_names_female = list(
      c('M\u00e1ria', 0.0762),
      c('Erzs\u00e9bet', 0.058),
      c('Katalin', 0.043),
      c('\u00e9va', 0.039),
      c('Ilona', 0.038),
      c('Anna', 0.0308),
      c('Zsuzsanna', 0.0297),
      c('Margit', 0.0241),
      c('Judit', 0.021),
      c('\u00e1gnes', 0.0209),
      c('Andrea', 0.0208),
      c('Ildik\u00f3', 0.0199),
      c('Julianna', 0.0195),
      c('Erika', 0.019),
      c('Krisztina', 0.0175),
      c('Ir\u00e9n', 0.0155),
      c('Eszter', 0.0144),
      c('M\u00f3nika', 0.0141),
      c('Magdolna', 0.0135),
      c('Edit', 0.0131),
      c('Gabriella', 0.0129),
      c('Szilvia', 0.0127),
      c('Anita', 0.0116),
      c('Vikt\u00f3ria', 0.0114),
      c('Anik\u00f3', 0.0112),
      c('M\u00e1rta', 0.0109),
      c('T\u00edmea', 0.0103),
      c('Roz\u00e1lia', 0.0098),
      c('Piroska', 0.0097),
      c('Ibolya', 0.0092),
      c('Kl\u00e1ra', 0.009),
      c('T\u00fcnde', 0.0088),
      c('D\u00f3ra', 0.0088),
      c('Zs\u00f3fia', 0.0086),
      c('Alexandra', 0.0079),
      c('Veronika', 0.0078),
      c('Gizella', 0.0076),
      c('Csilla', 0.0074),
      c('Nikolett', 0.007),
      c('Melinda', 0.0069),
      c('R\u00e9ka', 0.0068),
      c('N\u00f3ra', 0.0068),
      c('Ter\u00e9zia', 0.0068),
      c('Adrienn', 0.0068),
      c('Be\u00e1ta', 0.0065),
      c('Marianna', 0.0065),
      c('Vivien', 0.0063),
      c('Ren\u00e1ta', 0.0063),
      c('Barbara', 0.0061),
      c('Enik\u0151', 0.0061),
      c('Bernadett', 0.006),
      c('Rita', 0.0059),
      c('Brigitta', 0.0059),
      c('Edina', 0.0057),
      c('Hajnalka', 0.0057),
      c('Gy\u00f6ngyi', 0.0056),
      c('Petra', 0.0056),
      c('Bogl\u00e1rka', 0.0053),
      c('Orsolya', 0.0053),
      c('Jol\u00e1n', 0.0052),
      c('No\u00e9mi', 0.0051),
      c('Etelka', 0.0048),
      c('Val\u00e9ria', 0.0047),
      c('Fanni', 0.0047),
      c('Borb\u00e1la', 0.0047),
      c('Annam\u00e1ria', 0.0045),
      c('Kitti', 0.0044),
      c('Ter\u00e9z', 0.0044),
      c('Nikoletta', 0.0043),
      c('Laura', 0.0043),
      c('Emese', 0.0042),
      c('Lilla', 0.0042),
      c('Hanna', 0.0039),
      c('Aranka', 0.0039),
      c('Kinga', 0.0038),
      c('Klaudia', 0.0037),
      c('Anett', 0.0037),
      c('R\u00f3za', 0.0036),
      c('Lili', 0.0034),
      c('Zita', 0.0034),
      c('Dorina', 0.0034),
      c('Emma', 0.0034),
      c('Beatrix', 0.0034),
      c('Zsanett', 0.0033),
      c('S\u00e1ra', 0.0032),
      c('Bianka', 0.0031),
      c('R\u00f3zsa', 0.003),
      c('J\u00e1zmin', 0.003),
      c('Luca', 0.0029),
      c('J\u00falia', 0.0029),
      c('Di\u00e1na', 0.0028),
      c('Henrietta', 0.0028),
      c('Gy\u00f6rgyi', 0.0027),
      c('Irma', 0.0027),
      c('Dorottya', 0.0026),
      c('Bettina', 0.0026),
      c('Mariann', 0.0026),
      c('Vir\u00e1g', 0.0026),
      c('Gr\u00e9ta', 0.0025),
      c('Rebeka', 0.0025)),

    first_names = list(
      c('L\u00e1szl\u00f3', 0.0664),
      c('Istv\u00e1n', 0.0609),
      c('J\u00f3zsef', 0.0545),
      c('J\u00e1nos', 0.0475),
      c('Zolt\u00e1n', 0.0456),
      c('S\u00e1ndor', 0.0372),
      c('G\u00e1bor', 0.0355),
      c('Ferenc', 0.0341),
      c('Attila', 0.0321),
      c('P\u00e9ter', 0.0308),
      c('Tam\u00e1s', 0.0303),
      c('Zsolt', 0.0252),
      c('Tibor', 0.0233),
      c('Andr\u00e1s', 0.0217),
      c('Csaba', 0.0204),
      c('Imre', 0.0193),
      c('Lajos', 0.0179),
      c('Gy\u00f6rgy', 0.017),
      c('Bal\u00e1zs', 0.0156),
      c('Gyula', 0.0143),
      c('Mih\u00e1ly', 0.0136),
      c('R\u00f3bert', 0.0134),
      c('K\u00e1roly', 0.0132),
      c('D\u00e1vid', 0.0132),
      c('D\u00e1niel', 0.0124),
      c('\u00e1d\u00e1m', 0.0123),
      c('B\u00e9la', 0.0123),
      c('Kriszti\u00e1n', 0.0116),
      c('Mikl\u00f3s', 0.011),
      c('Norbert', 0.0107),
      c('Bence', 0.0104),
      c('M\u00e1t\u00e9', 0.0095),
      c('P\u00e1l', 0.0079),
      c('Gerg\u0151', 0.0076),
      c('Roland', 0.0075),
      c('Szabolcs', 0.0075),
      c('B\u00e1lint', 0.007),
      c('Levente', 0.0069),
      c('M\u00e1rk', 0.0069),
      c('Rich\u00e1rd', 0.0068),
      c('Antal', 0.0066),
      c('Gergely', 0.0064),
      c('\u00e1kos', 0.0063),
      c('Viktor', 0.0059),
      c('\u00e1rp\u00e1d', 0.0052),
      c('M\u00e1rton', 0.0051),
      c('G\u00e9za', 0.005),
      c('Krist\u00f3f', 0.0045),
      c('Mil\u00e1n', 0.004),
      c('Dominik', 0.0039),
      c('Patrik', 0.0039),
      c('Martin', 0.0037),
      c('Barnab\u00e1s', 0.0036),
      c('Jen\u0151', 0.0036),
      c('K\u00e1lm\u00e1n', 0.0036),
      c('Marcell', 0.0036),
      c('\u00e1ron', 0.0032),
      c('M\u00e1ty\u00e1s', 0.003),
      c('Ern\u0151', 0.003),
      c('Endre', 0.0028),
      c('Botond', 0.0028),
      c('Zsombor', 0.0028),
      c('Dezs\u0151', 0.0026),
      c('Oliv\u00e9r', 0.0025),
      c('N\u00e1ndor', 0.0025),
      c('Szil\u00e1rd', 0.0024),
      c('Erik', 0.0024),
      c('Alex', 0.0023),
      c('Benedek', 0.0021),
      c('Vilmos', 0.0021),
      c('Korn\u00e9l', 0.002),
      c('Zal\u00e1n', 0.002),
      c('D\u00e9nes', 0.0019),
      c('Ott\u00f3', 0.0019),
      c('Benj\u00e1min', 0.0017),
      c('Bertalan', 0.0017),
      c('Kevin', 0.0017),
      c('Adri\u00e1n', 0.0016),
      c('Rudolf', 0.0014),
      c('Noel', 0.0014),
      c('Albert', 0.0014),
      c('Vince', 0.0014),
      c('Ervin', 0.0012),
      c('Gy\u0151z\u0151', 0.0011),
      c('Zsigmond', 0.0011),
      c('Andor', 0.0011),
      c('Iv\u00e1n', 0.001),
      c('Szilveszter', 0.001),
      c('Guszt\u00e1v', 0.001),
      c('Barna', 0.001),
      c('\u00e1bel', 0.001),
      c('Hunor', 0.0009),
      c('Arnold', 0.0009),
      c('Csongor', 0.0009),
      c('Elem\u00e9r', 0.0009),
      c('Krisztofer', 0.0009),
      c('Bendeg\u00faz', 0.0009),
      c('Emil', 0.0008),
      c('Tivadar', 0.0008),
      c('Henrik', 0.0008),
      c('M\u00e1ria', 0.0762),
      c('Erzs\u00e9bet', 0.058),
      c('Katalin', 0.043),
      c('\u00e9va', 0.039),
      c('Ilona', 0.038),
      c('Anna', 0.0308),
      c('Zsuzsanna', 0.0297),
      c('Margit', 0.0241),
      c('Judit', 0.021),
      c('\u00e1gnes', 0.0209),
      c('Andrea', 0.0208),
      c('Ildik\u00f3', 0.0199),
      c('Julianna', 0.0195),
      c('Erika', 0.019),
      c('Krisztina', 0.0175),
      c('Ir\u00e9n', 0.0155),
      c('Eszter', 0.0144),
      c('M\u00f3nika', 0.0141),
      c('Magdolna', 0.0135),
      c('Edit', 0.0131),
      c('Gabriella', 0.0129),
      c('Szilvia', 0.0127),
      c('Anita', 0.0116),
      c('Vikt\u00f3ria', 0.0114),
      c('Anik\u00f3', 0.0112),
      c('M\u00e1rta', 0.0109),
      c('T\u00edmea', 0.0103),
      c('Roz\u00e1lia', 0.0098),
      c('Piroska', 0.0097),
      c('Ibolya', 0.0092),
      c('Kl\u00e1ra', 0.009),
      c('T\u00fcnde', 0.0088),
      c('D\u00f3ra', 0.0088),
      c('Zs\u00f3fia', 0.0086),
      c('Alexandra', 0.0079),
      c('Veronika', 0.0078),
      c('Gizella', 0.0076),
      c('Csilla', 0.0074),
      c('Nikolett', 0.007),
      c('Melinda', 0.0069),
      c('R\u00e9ka', 0.0068),
      c('N\u00f3ra', 0.0068),
      c('Ter\u00e9zia', 0.0068),
      c('Adrienn', 0.0068),
      c('Be\u00e1ta', 0.0065),
      c('Marianna', 0.0065),
      c('Vivien', 0.0063),
      c('Ren\u00e1ta', 0.0063),
      c('Barbara', 0.0061),
      c('Enik\u0151', 0.0061),
      c('Bernadett', 0.006),
      c('Rita', 0.0059),
      c('Brigitta', 0.0059),
      c('Edina', 0.0057),
      c('Hajnalka', 0.0057),
      c('Gy\u00f6ngyi', 0.0056),
      c('Petra', 0.0056),
      c('Bogl\u00e1rka', 0.0053),
      c('Orsolya', 0.0053),
      c('Jol\u00e1n', 0.0052),
      c('No\u00e9mi', 0.0051),
      c('Etelka', 0.0048),
      c('Val\u00e9ria', 0.0047),
      c('Fanni', 0.0047),
      c('Borb\u00e1la', 0.0047),
      c('Annam\u00e1ria', 0.0045),
      c('Kitti', 0.0044),
      c('Ter\u00e9z', 0.0044),
      c('Nikoletta', 0.0043),
      c('Laura', 0.0043),
      c('Emese', 0.0042),
      c('Lilla', 0.0042),
      c('Hanna', 0.0039),
      c('Aranka', 0.0039),
      c('Kinga', 0.0038),
      c('Klaudia', 0.0037),
      c('Anett', 0.0037),
      c('R\u00f3za', 0.0036),
      c('Lili', 0.0034),
      c('Zita', 0.0034),
      c('Dorina', 0.0034),
      c('Emma', 0.0034),
      c('Beatrix', 0.0034),
      c('Zsanett', 0.0033),
      c('S\u00e1ra', 0.0032),
      c('Bianka', 0.0031),
      c('R\u00f3zsa', 0.003),
      c('J\u00e1zmin', 0.003),
      c('Luca', 0.0029),
      c('J\u00falia', 0.0029),
      c('Di\u00e1na', 0.0028),
      c('Henrietta', 0.0028),
      c('Gy\u00f6rgyi', 0.0027),
      c('Irma', 0.0027),
      c('Dorottya', 0.0026),
      c('Bettina', 0.0026),
      c('Mariann', 0.0026),
      c('Vir\u00e1g', 0.0026),
      c('Gr\u00e9ta', 0.0025),
      c('Rebeka', 0.0025)),


    prefixes = list(c('Dr.', 0.95), c('Prof. Dr.', 0.05))

  ),
  public = list(
    first_name_male_abbreviated = function() {
      temp = try(eval(parse(text = "self$first_name_male")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(str_sub(self$first_name(), 1, 1))
      } else {
        return(str_c(str_sub(temp(), 1, 1), "."))
      }
    },
    first_name_female_abbreviated = function() {
      temp = try(eval(parse(text = "self$first_name_female")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(str_sub(self$first_name(), 1, 1))
      } else {
        return(str_c(str_sub(temp(), 1, 1), "."))
      }
    }
  )
)

# company ---------------------------------------------------------
company_hu_HU = R6Class(
  "company_hu_HU",
  inherit = company_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_hu_HU$new())$.__enclos_env__$private$first_names,
    last_names = (person_hu_HU$new())$.__enclos_env__$private$last_names,
    first_name = (person_hu_HU$new())$first_name,
    last_name = (person_hu_HU$new())$last_name,

    formats = c(
      '{last_name} {company_suffix}',
      '{last_name} {last_name} {company_suffix}',
      '{last_name} \u00e9s {last_name} {company_suffix}',
      '{last_name} \u00e9s t\u00e1rsa {company_suffix}'),

    company_suffixes = c('Kft.', 'Kht.', 'Zrt.', 'Bt.', 'Nyrt.', 'Kkt.')
  ),

  public = list(
    company_suffix = function(){
      return(private$random_element(private$company_suffixes))
    }
  )
)
# date_time -----------------------------
date_time_hu_HU = R6Class(
  "date_time_hu_HU",
  inherit = date_time_init,
  cloneable = FALSE,
  private = list(
    DAY_NAMES = c(
      "0" = "h\u00e9tf\u0151",
      "1" = "kedd",
      "2" = "szerda",
      "3" = "cs\u00fct\u00f6rt\u00f6k",
      "4" = "p\u00e9ntek",
      "5" = "szombat",
      "6" = "vas\u00e1rnap"
    ),

    MONTH_NAMES = c(
      "01" = "janu\u00e1r",
      "02" = "febru\u00e1r",
      "03" = "m\u00e1rcius",
      "04" = "\u00e1prilis",
      "05" = "m\u00e1jus",
      "06" = "junius",
      "07" = "julius",
      "08" = "augusztus",
      "09" = "szeptember",
      "10" = "okt\u00f3ber",
      "11" = "november",
      "12" = "december"
    )
  )
)
# address ---------------------------------------
address_hu_HU = R6Class(
  "address_hu_HU",
  inherit = address_init,
  cloneable = FALSE,
  private = list(
    locale = "hu_HU",
    first_names = (person_hu_HU$new())$.__enclos_env__$private$first_names,
    last_names = (person_hu_HU$new())$.__enclos_env__$private$last_names,
    first_name = (person_hu_HU$new())$first_name,
    last_name = (person_hu_HU$new())$last_name,

    street_suffixes = list(
      c('utca', 0.75), c('\u00fat', 0.1), c('t\u00e9r', 0.1),
      c('k\u00f6z', 0.001), c('k\u00f6r\u00fat', 0.001), c('s\u00e9t\u00e1ny', 0.001)),

    street_name_formats = c(
      '{frequent_street_name} {street_suffix}',
      '{real_city_name}i {street_suffix}',
      '{city_part}{city_suffix}i {street_suffix}',
      '{city_prefix}{city_part}i {street_suffix}'),

    #   Currently deprecated.
    #   secondary_address_formats = ("#.em #.", "##. em. #.")

    city_formats = c('{city_prefix}{city_part}{city_suffix}',
                     '{city_part}{city_suffix}', '{real_city_name}'),

    street_address_formats = '{street_name} {building_number}',

    address_formats = "{street_address}\n{postcode} {city}",

    frequent_street_names = c(
      'Ady Endre',
      'D\u00f3zsa Gy\u00f6rgy',
      'Pet\u0151fi',
      'Pet\u0151fi S\u00e1ndor',
      'Arany J\u00e1nos',
      'B\u00e9ke',
      'Szabads\u00e1g',
      'Kossuth',
      'J\u00f3zsef Attila'),

    # The 'real city name' generator includes a number of real cities of
    # Hungary that no generator could feasibly dispense. Please note that the
    # post code generator is, at this point, not capable of generating a
    # fitting post code. In Hungary, post codes are determined by the county of
    # the place (see the county generator), and for this reason, often there
    # will be a discrepancy. A patch is in the works - until then, use
    # Wikipedia to resolve postcode issues.
    #
    # This generator was created by collecting the 30 largest Hungarian places
    # by population, based on the Hungarian Gazetteer generated with effect as
    # of 01 January 2016 (http://www.ksh.hu/docs/hun/hnk/hnk_2016.pdf).

    real_city_names = str_to_title(c(
      "Budapest",
      "Debrecen",
      "Szeged",
      "Miskolc",
      "P\u00e9cs",
      "Gy\u0151r",
      "Ny\u00edregyh\u00e1za",
      "Kecskem\u00e9t",
      "Sz\u00e9kesfeh\u00e9rv\u00e1r",
      "Szombathely",
      "Szolnok",
      "Tatab\u00e1nya",
      "\u00e9rd",
      "Kaposv\u00e1r",
      "Sopron",
      "Veszpr\u00e9m",
      "B\u00e9k\u00e9scsaba",
      "Zalaegerszeg",
      "Eger",
      "Nagykanizsa",
      "Duna\u00fajv\u00e1ros",
      "H\u00f3dmez\u0151v\u00e1s\u00e1rhely",
      "Dunakeszi",
      "Szigetszentmikl\u00f3s",
      "Cegl\u00e9d",
      "Baja",
      "Salg\u00f3tarj\u00e1n",
      "\u00f3zd",
      "V\u00e1c",
      "Mosonmagyar\u00f3v\u00e1r"
    ), locale = "hu_HU"),

    city_prefs = c(
      "kis",
      "nagy",
      "szent",
      "duna",
      "tisza",
      "als\u00f3",
      "fels\u0151",
      "bels\u0151",
      "bakony",
      "v\u00e1c",
      "mez\u0151",
      "ny\u00e9k",
      "ny\u00edr",
      "balaton",
      "borsod",
      "buda",
      "hajd\u00fa",
      "kun",
      "moson",
      "pilis",
      "\u00faj",
      "egyh\u00e1zas",
      "dr\u00e1va",
      "magyar",
      "m\u00e1tra",
      "somogy",
      "lajos",
      "b\u00e1cs",
      "b\u00e9k\u00e9s",
      "puszta",
      "orosz",
      "r\u00e1c",
      "szerb",
      "n\u00e9met",
      "t\u00f6r\u00f6k"
    ),

    city_parts = c(
      "h\u00edd",
      "gy\u00f6rgy",
      "mindszent",
      "kereszt",
      "m\u00e1rton",
      "h\u00e1t",
      "hetven",
      "mell\u00e9k",
      "tam\u00e1si",
      "tapolca",
      "f\u00fcrd\u0151",
      "liget",
      "sz\u00e9k",
      "t\u00f3t",
      ""),

    city_suffixes = c(
      "h\u00e1za",
      "n\u00e9meti",
      "devecser",
      "fa",
      "n\u00e1dasd",
      "ap\u00e1ti",
      "falu",
      "falva",
      "v\u00e9g",
      "v\u00e1r",
      "v\u00e1ra",
      "v\u00e1rad",
      "hida",
      "k\u00f6vesd",
      "b\u00e1nya",
      "halas",
      "ber\u00e9ny",
      "k\u0151r\u00f6s",
      "haraszti",
      "v\u00e1ros"
    ),

    counties = c(
      "B\u00e1cs-Kiskun",
      "Baranya",
      "B\u00e9k\u00e9s",
      "Borsod-Aba\u00faj-Zempl\u00e9n",
      "Csongr\u00e1d",
      "Fej\u00e9r",
      "Gy\u0151r-Moson-Sopron",
      "Hajd\u00fa-Bihar",
      "Heves",
      "J\u00e1sz-Nagykun-Szolnok",
      "Kom\u00e1rom-Esztergom",
      "N\u00f3gr\u00e1d",
      "Pest",
      "Somogy",
      "Szabolcs-Szatm\u00e1r-Bereg",
      "Tolna",
      "Vas",
      "Veszpr\u00e9m",
      "Zala"
    ),

    countries = c(
      "Afganiszt\u00e1n",
      "Aland-szigetek",
      "Alb\u00e1nia",
      "Alg\u00e9ria",
      "Amerikai Szamoa",
      "Amerikai Virgin-szigetek",
      "Andorra",
      "Angola",
      "Anguilla",
      "Antarktisz",
      "Antigua \u00e9s Barbuda",
      "Apostoli Szentsz\u00e9k",
      "Argent\u00edna",
      "Aruba",
      "Ausztr\u00e1lia",
      "Ausztria",
      "Amerikai Egyes\u00fclt \u00e1llamok K\u00fcls\u0151 Szigetei",
      "Azerbajdzs\u00e1n",
      "Bahama-szigetek",
      "Bahrein",
      "Banglades",
      "Barbados",
      "Feh\u00e9roroszorsz\u00e1g",
      "Belgium",
      "Belize",
      "Benin",
      "Bermuda",
      "Bhut\u00e1n",
      "Bissa -Guinea",
      "Bol\u00edvia",
      "Bosznia-Hercegovina",
      "Botswana",
      "Bouvet-sziget",
      "Braz\u00edlia",
      "Brit Indiai-\u00f3ce\u00e1ni Ter\u00fclet",
      "Brit Virgin - szigetek",
      "Brunei",
      "Bulg\u00e1ria",
      "Burkina Faso",
      "Burundi",
      "Chile",
      "Ciprus",
      "Comore-szigetek",
      "Cook-szigetek",
      "Costa Rica",
      "Cs\u00e1d",
      "Csehorsz\u00e1g",
      "D\u00e1nia",
      "D\u00e9l-Afrika",
      "D\u00e9l-Korea",
      "Dominika",
      "Dominikai K\u00f6zt\u00e1rsas\u00e1g",
      "Dzsibuti",
      "Ecuador",
      "Egyenl\u00edt\u0151i-Guinea",
      "Egyes\u00fclt \u00e1llamok",
      "Egyes\u00fclt Arab Em\u00edrs\u00e9gek",
      "Egyes\u00fclt Kir\u00e1lys\u00e1g",
      "Egyiptom",
      "Elef\u00e1ntcsontpart",
      "Eritrea",
      "\u00c9szaki Mariana-szigetek",
      "\u00c9szak-Korea",
      "\u00c9sztorsz\u00e1g",
      "Eti\u00f3pia",
      "Falkland-szigetek",
      "Fer\u00f6er szigetek",
      "Fidzsi-szigetek",
      "Finnorsz\u00e1g",
      "Francia D\u00e9li Ter\u00fcletek",
      "Francia Guyana",
      "Francia Polin\u00e9zia",
      "Franciaorsz\u00e1g",
      "F\u00fcl\u00f6p-szigetek",
      "Gabon",
      "Gambia",
      "Gh\u00e1na",
      "Gibralt\u00e1r",
      "G\u00f6r\u00f6gorsz\u00e1g",
      "Grenada",
      "Gr\u00f6nland",
      "Gr\u00fazia",
      "Guadeloupe",
      "Guam",
      "Guatemala",
      "Guinea",
      "Guyana",
      "Haiti",
      "Holland Antill\u00e1k",
      "Hollandia",
      "Honduras",
      "Hongkong",
      "Horv\u00e1torsz\u00e1g",
      "India",
      "Indon\u00e9zia",
      "Irak",
      "Ir\u00e1n",
      "\u00edrorsz\u00e1g",
      "Izland",
      "Izrael",
      "Jamaica",
      "Jap\u00e1n",
      "Jemen",
      "Jord\u00e1nia",
      "Kajm\u00e1n-szigetek",
      "Kambodzsa",
      "Kamerun",
      "Kanada",
      "Kar\u00e1csony-sziget",
      "Katar",
      "Kazahszt\u00e1n",
      "Kelet-Timor",
      "Kenya",
      "K\u00edna",
      "Kirgiziszt\u00e1n",
      "Kiribati",
      "Keeling-szigetek",
      "Kolumbia",
      "Kong\u00f3",
      "Kong\u00f3i Demokratikus K\u00f6zt\u00e1rsas\u00e1g",
      "K\u00f6z\u00e9p-afrikai K\u00f6zt\u00e1rsas\u00e1g",
      "Kuba",
      "Kuvait",
      "Laosz",
      "Lengyelorsz\u00e1g",
      "Lesotho",
      "Lettorsz\u00e1g",
      "Libanon",
      "Lib\u00e9ria",
      "L\u00edbia",
      "Liechtenstein",
      "Litv\u00e1nia",
      "Luxemburg",
      "Maced\u00f3nia",
      "Madagaszk\u00e1r",
      "Magyarorsz\u00e1g",
      "Maka\u00f3",
      "Malajzia",
      "Malawi",
      "Mald\u00edv-szigetek",
      "Mali",
      "M\u00e1lta",
      "Marokk\u00f3",
      "Marshall-szigetek",
      "Martinique",
      "Maurit\u00e1nia",
      "Mauritius",
      "Mayotte",
      "Mexik\u00f3",
      "Mianmar",
      "Mikron\u00e9zia",
      "Moldova",
      "Monaco",
      "Mong\u00f3lia",
      "Montenegr\u00f3",
      "Montserrat",
      "Mozambik",
      "Nam\u00edbia",
      "Nauru",
      "N\u00e9metorsz\u00e1g",
      "Nep\u00e1l",
      "Nicaragua",
      "Niger",
      "Nig\u00e9ria",
      "Niue",
      "Norfolk-sziget",
      "Norv\u00e9gia",
      "Nyugat-Szahara",
      "Olaszorsz\u00e1g",
      "Om\u00e1n",
      "Oroszorsz\u00e1g",
      "\u00d6rm\u00e9nyorsz\u00e1g",
      "Pakiszt\u00e1n",
      "Palau",
      "Panama",
      "P\u00e1pua",
      "\u00faj-Guinea",
      "Paraguay",
      "Peru",
      "Pitcairn-szigetek",
      "Portug\u00e1lia",
      "Puerto Rico",
      "R\u00e9union",
      "Rom\u00e1nia",
      "Ruanda",
      "Saint Kitts \u00e9s Nevis",
      "Saint Lucia",
      "Saint-Pierre \u00e9s Miquelon",
      "Saint Vincent \u00e9s Grenadine-szigetek",
      "Salamon-szigetek",
      "Salvador",
      "San Marino",
      "S\u00e3o Tom\u00e9 \u00e9s Pr\u00edncipe",
      "Seychelle-szigetek",
      "Sierra Leone",
      "Spanyolorsz\u00e1g",
      "Sr\u00ed Lanka",
      "Suriname",
      "Sv\u00e1jc",
      "Svalbard szigetek",
      "Sv\u00e9dorsz\u00e1g",
      "Szamoa",
      "Sza\u00fadi-Ar\u00e1bia",
      "Szeneg\u00e1l",
      "Szent Ilona",
      "Szerbia",
      "Szingap\u00far",
      "Sz\u00edria",
      "Szlov\u00e1kia",
      "Szlov\u00e9nia",
      "Szom\u00e1lia",
      "Szud\u00e1n",
      "Szv\u00e1zif\u00f6ld",
      "T\u00e1dzsikiszt\u00e1n",
      "Tajvan",
      "Tanz\u00e1nia",
      "Thaif\u00f6ld",
      "Togo",
      "Tokelau-szigetek",
      "Tonga",
      "T\u00f6r\u00f6korsz\u00e1g",
      "Trinidad \u00e9s Tobago",
      "Tun\u00e9zia",
      "Turks- \u00e9s Caicos-szigetek",
      "Tuvalu",
      "T\u00fcrkmeniszt\u00e1n",
      "Uganda",
      "\u00daj-Kaled\u00f3nia",
      "\u00daj-Z\u00e9land",
      "Ukrajna",
      "Uruguay",
      "\u00fczbegiszt\u00e1n",
      "Vanuatu",
      "Venezuela",
      "Vietnam",
      "Wallis \u00e9s Futuna",
      "Zambia",
      "Zimbabwe",
      "Z\u00f6ld-foki szigetek"
    )
  ),

  public = list(
    county = function(){
      return(private$random_element(private$counties))
    },

    street_address_with_county = function(){
      street_address = self$street_address()
      county = self$county()
      postcode = self$postcode()
      city = str_to_title(self$city(), locale = private$locale)

      paste_char = str_c(street_address,
                          "\n", county, "megye\n",
                          postcode, " ", city)
      return(paste_char)
    },

    city_prefix = function(){
      return(private$random_element(private$city_prefs))
    },

    city_part = function(){
      return(private$random_element(private$city_parts))
    },

    real_city_name = function(){
      return(private$random_element(private$real_city_names))
    },

    frequent_street_name = function(){
      return(private$random_element(private$frequent_street_names))
    },

    postcode = function(){
      digit1 = private$random_digit_not_null()
      digit2 = private$random_digit()
      digit3 = private$random_digit()
      digit4 = private$random_digit()
      return(str_c("H-", digit1, digit2, digit3, digit4))
    },

    street_name = function(){
      return(str_to_title(super$street_name(), locale = private$locale))
    },

    building_number = function(){
      numeric_part = private$random_int(1, 250)
      return(str_c(numeric_part, "."))
    }

  )
)

# internet ----------------------------------------------------
internet_hu_HU = R6Class(
  "internet_hu_HU",
  inherit = internet_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_hu_HU$new())$.__enclos_env__$private$first_names,
    last_names = (person_hu_HU$new())$.__enclos_env__$private$last_names,
    first_name = (person_hu_HU$new())$first_name,
    last_name = (person_hu_HU$new())$last_name,
    free_email_domains = c(
      'gmail.com',
      'hotmail.com',
      'yahoo.com'),

    tlds = c(
      'hu',
      'com',
      'com.hu',
      'info',
      'org',
      'net',
      'biz'),

    replacements = list(
      c("\u00f6","o"),
      c("\u00fc","u"),
      c("\u00e1","a"),
      c("\u00e9","e"),
      c("\u00ed","i"),
      c("\u00f3","i"),
      c("\u0151","o"),
      c("\u00fa","u"),
      c("\u0171","u")
    )
  ),
  public = list(
    domain_word = function() {
      company = (company_hu_HU$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    }
  )
)
# job -------------------------------------------
job_hu_HU = R6Class(
  "job_hu_HU",
  inherit = job_init,
  cloneable = FALSE,
  private = list(
    jobs = c(
      "Titk\u00e1r(n\u0151)",
      "\u00c9rt\u00e9kbecsl\u0151",
      "K\u00f6zter\u00fclet-fel\u00fcgyel\u0151",
      "\u00c9p\u00edt\u0151m\u00e9rn\u00f6k",
      "K\u00f6sz\u00f6r\u0171s",
      "G\u00e9pj\u00e1rm\u0171- \u00e9s motorkarbantart\u00f3",
      "Mez\u0151gazdas\u00e1gi m\u00e9rn\u00f6k",
      "Sz\u00e1m\u00edt\u00f3g\u00e9ph\u00e1l\u00f3zat- \u00e9s rendszertechnikus",
      "Ad\u00f3ss\u00e1gbehajt\u00f3",
      "F\u00e9m\u00f6nt\u0151minta-k\u00e9sz\u00edt\u0151",
      "Gy\u00fcm\u00f6lcs- \u00e9s z\u00f6lds\u00e9gfeldolgoz\u00f3",
      "Telekommunik\u00e1ci\u00f3s m\u00e9rn\u00f6k",
      "K\u00f6nyv- \u00e9s lapkiad\u00f3 szerkeszt\u0151je",
      "Geol\u00f3gus",
      "Manik\u0171r\u00f6s",
      "Energetikus",
      "K\u00e9zbes\u00edt\u0151",
      "Kontroller",
      "Ment\u0151tiszt",
      "H\u00e1ztart\u00e1si takar\u00edt\u00f3 \u00e9s kiseg\u00edt\u0151",
      "Dekorat\u0151r",
      "Tejfeldolgoz\u00f3",
      "Gy\u00f3gytorn\u00e1sz",
      "Csomagkihord\u00f3",
      "K\u00e1d\u00e1r",
      "Sz\u00edn\u00e9sz",
      "Anyaggazd\u00e1lkod\u00f3",
      "Szoftverfejleszt\u0151",
      "Ad\u00f3- \u00e9s illet\u00e9khivatali \u00fcgyint\u00e9z\u0151",
      "Utask\u00eds\u00e9r\u0151",
      "T\u00e1j- \u00e9s kert\u00e9p\u00edt\u00e9szm\u00e9rn\u00f6k",
      "Muzeol\u00f3gus",
      "Koreogr\u00e1fus",
      "Tet\u0151fed\u0151",
      "Telep\u0151r",
      "Pedik\u0171r\u00f6s",
      "F\u00e9mfeldolgoz\u00f3",
      "Int\u00e9zm\u00e9nyi takar\u00edt\u00f3 \u00e9s kiseg\u00edt\u0151",
      "Irodai szakmai ir\u00e1ny\u00edt\u00f3",
      "Recepci\u00f3s",
      "G\u00e9p\u00edr\u00f3, sz\u00f6vegszerkeszt\u0151",
      "Ifj\u00fas\u00e1gseg\u00edt\u0151",
      "Pap",
      "Adatb\u00e1zis- \u00e9s h\u00e1l\u00f3zati elemz\u0151",
      "Szoftver- \u00e9s alkalmaz\u00e1sfejleszt\u0151",
      "Burkol\u00f3",
      "T\u00f6rt\u00e9n\u00e9sz",
      "Int\u00e9zm\u00e9nyi takar\u00edt\u00f3 \u00e9s kiseg\u00edt\u0151 ",
      "Koh\u00f3- \u00e9s anyagtechnikus",
      "Jogi asszisztens",
      "T\u0151zsde- \u00e9s p\u00e9nz\u00fcgyi \u00fcgyn\u00f6k",
      "Varr\u00f3",
      "Bolti p\u00e9nzt\u00e1ros",
      "K\u00e9mikus",
      "K\u0151m\u0171ves",
      "Szakorvos",
      "Elemz\u0151 k\u00f6zgazd\u00e1sz",
      "K\u00e9zi mos\u00f3, vasal\u00f3",
      "Iratt\u00e1ros",
      "F\u00f6ldm\u00e9r\u0151 \u00e9s t\u00e9rinformatikus",
      "Vend\u00e9gl\u0151s",
      "\u00c9lelmiszer-ipari m\u00e9rn\u00f6k",
      "Kis\u00e1llattart\u00f3 \u00e9s -teny\u00e9szt\u0151",
      "Szociol\u00f3gus",
      "Lakatos",
      "Pszichol\u00f3gus",
      "Utcasepr\u0151",
      "Adatb\u00e1zis-tervez\u0151 \u00e9s -\u00fczemeltet\u0151",
      "Gyermekfel\u00fcgyel\u0151",
      "Metr\u00f3vezet\u0151",
      "H\u00e1ztart\u00e1si alkalmazott",
      "K\u00f6nyvel\u0151",
      "\u00c1ltal\u00e1nos irodai adminisztr\u00e1tor",
      "\u00c9p\u00fcletasztalos",
      "\u00c9kszerk\u00e9sz\u00edt\u0151",
      "\u00dcvegez\u0151",
      "K\u00f6nyvt\u00e1ri, lev\u00e9lt\u00e1ri nyilv\u00e1ntart\u00f3",
      "\u00c1ltal\u00e1nos iskolai tan\u00e1r, tan\u00edt\u00f3",
      "Szem\u00e9tgy\u0171jt\u0151",
      "Rend\u0151r",
      "Orvosi laborat\u00f3riumi asszisztens",
      "Kubikos",
      "Adatr\u00f6gz\u00edt\u0151",
      "Informatikatan\u00e1r",
      "Fizikus",
      "Vegy\u00e9sztechnikus",
      "H\u00edmz\u0151",
      "\u00dcgyn\u00f6k",
      "Kalapos",
      "Egy\u00e9b m\u0171v\u00e9szetek tan\u00e1ra",
      "Z\u00f6lds\u00e9gtermeszt\u0151",
      "D\u00edszn\u00f6v\u00e9ny-, vir\u00e1g- \u00e9s faiskolai kert\u00e9sz, csemetenevel\u0151",
      "Csipkever\u0151",
      "Postai \u00fcgyf\u00e9lkapcsolati foglalkoz\u00e1s\u00fa",
      "Tolm\u00e1cs",
      "K\u00f3dol\u00f3",
      "Fa- \u00e9s k\u00f6nny\u0171ipari m\u00e9rn\u00f6k",
      "Szarvasmarha-, l\u00f3-, sert\u00e9s-, juhtart\u00f3 \u00e9s -teny\u00e9szt\u0151 ",
      "Telep\u00fcl\u00e9s- \u00e9s k\u00f6zleked\u00e9stervez\u0151 m\u00e9rn\u00f6k",
      "Rendszergazda",
      "\u00c1llatorvosi asszisztens",
      "\u00dajs\u00e1g\u00edr\u00f3",
      "Piaci, utcai \u00e9tel- \u00e9s ital\u00e1rus",
      "N\u00e9prajzkutat\u00f3",
      "V\u00e1m- \u00e9s p\u00e9nz\u00fcgy\u0151r",
      "Hord\u00e1r",
      "Webrendszer-technikus",
      "Hivatalseg\u00e9d",
      "\u00dczletpolitikai elemz\u0151",
      "Fogorvos",
      "Statisztikus",
      "Stukk\u00f3z\u00f3",
      "Utaz\u00e1sszervez\u0151",
      "\u00c9p\u00fcletb\u00e1dogos",
      "Szoci\u00e1lis gondoz\u00f3",
      "Villamosipari technikus (elektronikai technikus)",
      "Iratkezel\u0151",
      "Matr\u00f3z",
      "Trolibuszvezet\u0151",
      "Banki p\u00e9nzt\u00e1ros",
      "Szikv\u00edzk\u00e9sz\u00edt\u0151",
      "Kov\u00e1cs",
      "Min\u0151s\u00e9gbiztos\u00edt\u00e1si m\u00e9rn\u00f6k",
      "Csillag\u00e1sz",
      "\u00edr\u00f3",
      "K\u00f6nyvt\u00e1ros",
      "F\u00e9nyk\u00e9p\u00e9sz",
      "B\u00e1ny\u00e1szati technikus",
      "\u00dczletpolitikai elemz\u0151, szervez\u0151",
      "Jelnyelvi tolm\u00e1cs",
      "Alkalmaz\u00e1sprogramoz\u00f3",
      "Cip\u0151k\u00e9sz\u00edt\u0151",
      "Dr\u00e1gak\u0151csiszol\u00f3",
      "Botanikus",
      "J\u00e1rm\u0171takar\u00edt\u00f3",
      "Biztos\u00edt\u00e1si \u00fcgyn\u00f6k",
      "G\u00e9p\u00e9szm\u00e9rn\u00f6k",
      "L\u00e9giforgalmi ir\u00e1ny\u00edt\u00f3",
      "\u00dcveggy\u00e1rt\u00f3",
      "Gumiterm\u00e9kgy\u00e1rt\u00f3",
      "Rep\u00fcl\u0151g\u00e9pmotor-karbantart\u00f3",
      "\u00c9p\u00edt\u00e9szm\u00e9rn\u00f6k",
      "T\u0171zolt\u00f3",
      "K\u00f6nyvk\u00f6t\u0151",
      "Pultos",
      "Bor\u00e1sz",
      "Gy\u00f3gyszer\u00e9sz",
      "Kozmetikus",
      "Seg\u00e9d\u00e1pol\u00f3",
      "\u00c1pol\u00f3",
      "Ford\u00edt\u00f3",
      "Munkav\u00e9delmi \u00e9s \u00fczembiztons\u00e1gi foglalkoz\u00e1s\u00fa",
      "V\u00e9grehajt\u00f3, ad\u00f3ss\u00e1gbehajt\u00f3",
      "Gy\u00f3gyszert\u00e1ri asszisztens",
      "Sz\u0151rmefest\u0151",
      "B\u0151rterm\u00e9kk\u00e9sz\u00edt\u0151",
      "M\u0171sorsz\u00f3r\u00f3 \u00e9s audiovizu\u00e1lis technikus",
      "K\u00e1rtev\u0151irt\u00f3",
      "Rakod\u00f3munk\u00e1s",
      "Szab\u00e1sminta-k\u00e9sz\u00edt\u0151",
      "Hullad\u00e9koszt\u00e1lyoz\u00f3",
      "Erd\u0151- \u00e9s term\u00e9szetv\u00e9delmi m\u00e9rn\u00f6k",
      "K\u00e9szlet- \u00e9s anyagnyilv\u00e1ntart\u00f3",
      "Fog\u00e1szati asszisztens",
      "S\u00e9f",
      "K\u00f6nyvszak\u00e9rt\u0151",
      "Br\u00f3ker",
      "\u00c1ru- \u00e9s divatbemutat\u00f3",
      "K\u00f6lcs\u00f6nz\u0151",
      "\u00c9p\u00fcletgondnok",
      "Telekommunik\u00e1ci\u00f3s technikus",
      "K\u00f6rnyezetv\u00e9delmi technikus",
      "H\u00e1zvezet\u0151",
      "Famegmunk\u00e1l\u00f3",
      "Sz\u00e1llodai recepci\u00f3s",
      "K\u00e9zi csomagol\u00f3",
      "\u00d6tv\u00f6s",
      "Csecsem\u0151- \u00e9s kisgyermeknevel\u0151",
      "Ker\u00e9kp\u00e1r-karbantart\u00f3",
      "Operat\u0151r",
      "\u00dcgyv\u00e9d",
      "Szigetel\u0151",
      "Fizioter\u00e1pi\u00e1s asszisztens",
      "Keresked\u0151",
      "Biol\u00f3gus",
      "Ruh\u00e1zati g\u00e9p kezel\u0151je \u00e9s gy\u00e1rt\u00f3sor mellett dolgoz\u00f3",
      "Sz\u0171cs",
      "\u00dcgyf\u00e9lt\u00e1j\u00e9koztat\u00f3",
      "Gy\u00f3gyn\u00f6v\u00e9nytermeszt\u0151",
      "Lelk\u00e9sz",
      "\u00c9nekes",
      "Munka- \u00e9s termel\u00e9sszervez\u0151 ",
      "L\u00e9giforgalmi ir\u00e1ny\u00edt\u00e1stechnikus",
      "Sz\u00e1m\u00edt\u00f3g\u00e9p-h\u00e1l\u00f3zati elemz\u0151",
      "Szab\u00f3",
      "Szak\u00e1cs",
      "N\u00f6v\u00e9nyorvos ",
      "Test\u0151r",
      "Erd\u0151- \u00e9s term\u00e9szetv\u00e9delmi technikus",
      "K\u0151farag\u00f3",
      "B\u00e1ny\u00e1szati szakmai ir\u00e1ny\u00edt\u00f3",
      "R\u00e9g\u00e9sz",
      "Lakoss\u00e1gi k\u00e9rdez\u0151",
      "Sz\u00e1mviteli \u00fcgyint\u00e9z\u0151",
      "Term\u00e9szetv\u00e9delmi \u0151r",
      "Egyetemi, f\u0151iskolai oktat\u00f3",
      "\u00d3vodapedag\u00f3gus",
      "Gyom\u00edrt\u00f3",
      "N\u00f6v\u00e9nyv\u00e9delmi szak\u00e9rt\u0151",
      "V\u00e9d\u0151n\u0151",
      "Eg\u00e9szs\u00e9g\u00fcgyi dokument\u00e1tor ",
      "Finommechanikai m\u0171szer\u00e9sz",
      "M\u0171szaki rajzol\u00f3",
      "Demogr\u00e1fus",
      "\u00c1ltal\u00e1nos orvos",
      "Fed\u00e9lzeti tiszt",
      "Vagyon\u0151r",
      "Rendszerelemz\u0151",
      "T\u00edm\u00e1r",
      "Haj\u00f3z\u00f3m\u00e9rn\u00f6k",
      "H\u00e1l\u00f3zat- \u00e9s multim\u00e9dia-fejleszt\u0151",
      "Konyhai kiseg\u00edt\u0151",
      "Mozig\u00e9p\u00e9sz",
      "\u00c9p\u00fcletvillamoss\u00e1gi szerel\u0151",
      "Bion\u00f6v\u00e9ny-termeszt\u0151",
      "Fogtechnikus",
      "B\u00fcntet\u00e9s-v\u00e9grehajt\u00e1si \u0151r",
      "Erd\u00e9sz",
      "V\u00edzgazd\u00e1lkod\u00e1si g\u00e9pkezel\u0151",
      "Szersz\u00e1mk\u00e9sz\u00edt\u0151",
      "Vegy\u00e9szm\u00e9rn\u00f6k",
      "Fest\u0151",
      "Iratkezel\u0151, iratt\u00e1ros",
      "L\u00e9giforgalmi ir\u00e1ny\u00edt\u00e1stechnikai berendez\u00e9sek \u00fczemeltet\u0151je",
      "Massz\u0151r",
      "Zenetan\u00e1r",
      "Z\u00e1logh\u00e1zi \u00fcgyint\u00e9z\u0151 \u00e9s p\u00e9nzk\u00f6lcs\u00f6nz\u0151",
      "Jogtan\u00e1csos",
      "Teherg\u00e9pkocsi-vezet\u0151",
      "Bolti elad\u00f3",
      "P\u00e9nzint\u00e9zeti \u00fcgyint\u00e9z\u0151",
      "N\u00f6v\u00e9nyorvosi asszisztens",
      "Fitnesz- \u00e9s rekre\u00e1ci\u00f3s program ir\u00e1ny\u00edt\u00f3ja",
      "Zeneszerz\u0151",
      "\u00c9p\u00edtm\u00e9nyszerkezet-szerel\u0151",
      "Vegyes profil\u00fa gazd\u00e1lkod\u00f3",
      "Pultfelt\u00f6lt\u0151",
      "K\u00e9pz\u0151m\u0171v\u00e9sz",
      "V\u00e9grehajt\u00f3",
      "Szerencsej\u00e1t\u00e9k-szervez\u0151",
      "Jegyp\u00e9nzt\u00e1ros",
      "Konyhaf\u0151n\u00f6k",
      "M\u0171t\u0151sseg\u00e9d",
      "Ad\u00f3tan\u00e1csad\u00f3",
      "Jog\u00e1sz",
      "Orvosi k\u00e9palkot\u00f3 diagnosztikai asszisztens",
      "Zool\u00f3gus",
      "L\u00e1tszer\u00e9sz",
      "Sz\u00e1ll\u00edt\u00e1si, sz\u00e1ll\u00edtm\u00e1nyoz\u00e1si nyilv\u00e1ntart\u00f3",
      "K\u00e1rpitos",
      "H\u00e1zi gondoz\u00f3",
      "T\u00e1ncm\u0171v\u00e9sz",
      "Cip\u00e9sz",
      "\u00d3lelmiszer-ipari technikus",
      "Zen\u00d3sz",
      "K\u00f6nyvel\u0151 (analitikus)",
      "Felv\u00e1s\u00e1rl\u00f3",
      "Szem\u00d3lyzeti \u00e9s p\u00e1lyav\u00e1laszt\u00e1si szak\u00e9rt\u0151",
      "B\u00e1nyam\u00e9rn\u00f6k",
      "Pinc\u00e9r",
      "Mosodai g\u00e9p kezel\u0151je",
      "Dietetikus",
      "Rendez\u0151",
      "Bogn\u00e1r",
      "Targoncavezet\u0151",
      "Hobbi\u00e1llat-gondoz\u00f3",
      "Seg\u00e9drendez\u0151",
      "Marketing- \u00e9s PR-\u00fcgyint\u00e9z\u0151",
      "B\u0151rd\u00edszm\u0171ves",
      "Darukezel\u0151",
      "Hall\u00e1s- \u00e9s besz\u00e9dterapeuta",
      "Konduktor",
      "Villamosm\u00e9rn\u00f6k (energetikai m\u00e9rn\u00f6k)",
      "Meteorol\u00f3gus",
      "T\u00e1pl\u00e1lkoz\u00e1si tan\u00e1csad\u00f3",
      "Cirkuszi el\u0151ad\u00f3m\u0171v\u00e9sz",
      "H\u00fasfeldolgoz\u00f3",
      "Vezet\u0151 elad\u00f3",
      "K\u00f6nyvvizsg\u00e1l\u00f3",
      "Feldolgoz\u00f3ipari szakmai ir\u00e1ny\u00edt\u00f3",
      "Pedag\u00f3giai szak\u00e9rt\u0151",
      "Telefonos \u00e9rt\u00e9kes\u00edt\u00e9si \u00fcgyn\u00f6k",
      "Villamosvezet\u0151",
      "Baromfitart\u00f3 \u00e9s -teny\u00e9szt\u0151",
      "Politol\u00f3gus",
      "M\u00e9r\u0151\u00f3ra-leolvas\u00f3",
      "Egy\u00e9b n\u00f6v\u00e9nytermeszt\u00e9si foglalkoz\u00e1s\u00fa",
      "M\u00e9h\u00e9sz",
      "Felvon\u00f3szerel\u0151",
      "Szem\u00e9lyg\u00e9pkocsi-vezet\u0151",
      "Textilm\u0171ves",
      "\u00c9p\u00edt\u0151- \u00e9s \u00e9p\u00edt\u00e9sztechnikus",
      "B\u0151r\u00f6nd\u00f6s",
      "Gipszkartonoz\u00f3",
      "Kalauz",
      "J\u00e1rm\u0171vezet\u0151-oktat\u00f3",
      "B\u00e9relsz\u00e1mol\u00f3",
      "B\u00fatorasztalos",
      "Villanyszerel\u0151",
      "Keszty\u0171s",
      "Nyomdai el\u0151k\u00e9sz\u00edt\u0151",
      "Mez\u0151gazdas\u00e1gi technikus",
      "Sz\u0151l\u0151-, gy\u00fcm\u00f6lcstermeszt\u0151",
      "Oktat\u00e1si asszisztens",
      "\u00c9desipariterm\u00e9k-gy\u00e1rt\u00f3",
      "Fodr\u00e1sz",
      "Nyomd\u00e1sz",
      "Keramikus",
      "\u00c1ltal\u00e1nos eg\u00e9szs\u00e9g\u00fcgyi asszisztens",
      "\u00c1cs",
      "Kereskedelmi \u00fcgyint\u00e9z\u0151",
      "K\u00f6rnyezetfelm\u00e9r\u0151",
      "K\u00e9m\u00e9nysepr\u0151",
      "Fot\u00f3- \u00e9s mozg\u00f3filmlabor\u00e1ns",
      "Statisztikai \u00fcgyint\u00e9z\u0151",
      "Szakk\u00e9pzett edz\u0151",
      "Fa- \u00e9s k\u00f6nny\u0171ipari technikus",
      "M\u00fazeumi gy\u0171jtem\u00e9nygondnok",
      "\u00c1rufelt\u00f6lt\u0151",
      "Idegenvezet\u0151",
      "Mozdonyvezet\u0151",
      "Koh\u00f3- \u00e9s anyagm\u00e9rn\u00f6k",
      "M\u0171k\u00f6ves",
      "\u00c1llatorvos",
      "F\u00f6ldm\u00e9r\u0151 \u00e9s t\u00e9rinformatikai technikus ",
      "Nyelvtan\u00e1r",
      "\u00dcgy\u00e9sz",
      "Sportol\u00f3",
      "C\u00edmfest\u0151",
      "Nyelv\u00e9sz",
      "Gy\u00f3gypedag\u00f3gus",
      "\u00dczemanyagt\u00f6lt\u0151 \u00e1llom\u00e1s kezel\u0151je",
      "F\u00e9mcsiszol\u00f3",
      "Kultur\u00e1lis szervez\u0151",
      "Lakberendez\u0151",
      "Grafikus \u00e9s multim\u00e9dia-tervez\u0151 ",
      "K\u00f6z\u00e9piskolai tan\u00e1r",
      "Cukr\u00e1sz",
      "L\u00e9gij\u00e1rm\u0171-vezet\u0151",
      "Sportszervez\u0151",
      "Parkol\u00f3\u0151r",
      "Fav\u00e1g\u00f3",
      "Matematikus",
      "P\u00e9nz\u00fcgyi elemz\u0151 \u00e9s befektet\u00e9si tan\u00e1csad\u00f3",
      "Konferencia- \u00e9s rendezv\u00e9nyszervez\u0151",
      "Faeszterg\u00e1lyos",
      "K\u00e1lyha- \u00e9s kandall\u00f3\u00e9p\u00edt\u0151",
      "K\u00f6zjegyz\u0151",
      "Fest\u00e9ksz\u00f3r\u00f3",
      "Statiszta",
      "Min\u0151s\u00e9gbiztos\u00edt\u00e1si technikus",
      "\u00c9p\u00fcletszerkezet-tiszt\u00edt\u00f3",
      "Menetjegyellen\u0151r",
      "Kereskedelmi tervez\u0151 ",
      "Munkaer\u0151-piaci szolg\u00e1ltat\u00e1si \u00fcgyint\u00e9z\u0151",
      "Ad\u00f3szak\u00e9rt\u0151",
      "Hegeszt\u0151",
      "Gyors\u00e9ttermi elad\u00f3",
      "Iparm\u0171v\u00e9sz",
      "D\u00edsz\u00edt\u0151",
      "Szoci\u00e1lpolitikus",
      "Gy\u00e1rtm\u00e1ny- \u00e9s ruhatervez\u0151",
      "Ingatlanforgalmaz\u00e1si \u00fcgyint\u00e9z\u0151",
      "Korm\u00e1nyos",
      "D\u00edszletez\u0151",
      "Seg\u00e9dsz\u00edn\u00e9sz",
      "Lev\u00e9lt\u00e1ros",
      "Robbant\u00f3mester",
      "Villamosipari technikus (energetikai technikus)",
      "Ortop\u00e9diai eszk\u00f6zk\u00e9sz\u00edt\u0151",
      "G\u00e9p\u00e9sztechnikus",
      "Szoci\u00e1lis seg\u00edt\u0151",
      "P\u00e9k",
      "Ipari alpinista",
      "Villamosm\u00e9rn\u00f6k (elektronikai m\u00e9rn\u00f6k)",
      "Szem\u00e9lyi asszisztens",
      "Ablaktiszt\u00edt\u00f3",
      "Port\u00e1s",
      "Filoz\u00f3fus",
      "Forg\u00e1csol\u00f3",
      "B\u00e1bm\u0171v\u00e9sz",
      "K\u00e1rszak\u00e9rt\u0151",
      "Hum\u00e1npolitikai adminisztr\u00e1tor",
      "Hangszerk\u00e9sz\u00edt\u0151",
      "T\u00e1rsadalombiztos\u00edt\u00e1si \u00e9s seg\u00e9lyez\u00e9si hat\u00f3s\u00e1gi \u00fcgyint\u00e9z\u0151",
      "Optometrista",
      "Sz\u00e1nt\u00f3f\u00f6ldin\u00f6v\u00e9ny-termeszt\u0151",
      "Ingatlan\u00fcgyn\u00f6k",
      "Nyomoz\u00f3",
      "Egy\u00e9b, m\u00e1shova nem sorolhat\u00f3 technikus",
      "Vezet\u0151 takar\u00edt\u00f3",
      "Aut\u00f3buszvezet\u0151",
      "K\u00e1rbecsl\u0151",
      "Piaci \u00e1rus",
      "B\u00edr\u00f3",
      "\u00c1ltal\u00e1nos iskolai tan\u00e1r",
      "Szersz\u00e1mk\u00f6sz\u00f6r\u0171s",
      "\u00c9p\u00edt\u0151ipari szakmai ir\u00e1ny\u00edt\u00f3"
    )
  )
)

# phone_number ---------------------------------
phone_number_hu_HU = R6Class(
  "phone_number_hu_HU",
  inherit = phone_number_init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '+36 ## ###-####',
      '(06)##/###-####',
      '(##)/###-####',
      '##/###-####',
      '##/### ####',
      '06-#/### ####',
      '06-##/### ####'
    )
  )
)

# ssn -----------------------------------------------
ssn_hu_HU = R6Class(
  "ssn_hu_HU",
  inherit = ssn_init,
  cloneable = FALSE,
  private = list(
    vat_id_formats = 'HU########',

    zfix = function(d){
      if (d < 10) return(str_c(0, d))
      else return(d)
    }
  ),

  public = list(
    ssn = function(dob, gender){

      # Hungarian SSNs consist of 11 decimal characters, of the following
      # schema:
      #
      #       M EEHHNN SSSK
      #       ↑    ↑    ↑ ↑
      #  gender  bday ser check digit
      #
      #
      #  The M (gender) character
      #  ------------------------
      #
      #  Born <= 1999        Born > 1999
      #  Male  Female        Male Female
      #   1      2             3     4
      #
      #  It also includes information on original citizenship,but this is
      #  ignored for the sake of simplicity.
      #
      #  Birthday
      #  --------
      #
      #  Simply encoded as EEHHNN.
      #
      #
      #  Serial
      #  ------
      #
      #  These digits differentiate persons born on the same date.
      #
      #
      #  Check digit
      #  -----------
      #
      #  For those born before 1996:
      #
      #  k11 = (1k1 + 2k2 + 3k3... 10k10) mod 11
      #
      #  That is, you multiply each digit with its ordinal, add it up and
      #  take it mod 11. After 1996:
      #
      #  k11 = (10k1 + 9k2 + 8k3... 1k10) mod 11
      #

      if (!missing(dob)){
        E = as.integer(str_sub(dob, 1, 2))
        H = as.integer(str_sub(dob, 3, 4))
        N = as.integer(str_sub(dob, 5, 6))

        if (E <= 17){
          # => person born after '99 in all likelihood...
          if(!missing(gender)) {
            if (str_to_upper(gender) == "F") {
              M = 4
            } else if (str_to_upper(gender) == "M") {
              M = 3
            } else {
              stop("Unknown gender - specify M or F.")
            }
          } else {
            M = sample(c(3, 4), 1)
          }
        } else {
          # => person born before '99.
          if(!missing(gender)) {
            if (str_to_upper(gender) == "F") {
              M = 2
            } else if (str_to_upper(gender) == "M") {
              M = 1
            } else {
              stop("Unknown gender - specify M or F.")
            }
          } else {
            M = sample(c(1, 2), 1)
          }
        }
      } else {
        if (!missing(gender)) {
          # => assume statistically that the person will be born before '99.
          E = private$random_int(17, 99)
          H = private$random_int(1, 12)
          N = private$random_int(1, 30)

          if (str_to_upper(gender) == "F") {
            M = 2
          } else if (str_to_upper(gender) == "M") {
            M = 1
          } else {
            stop("Unknown gender - specify M or F")
          }

        } else {
          M = private$random_int(1, 2)
          E = private$random_int(17, 99)
          H = private$random_int(1, 12)
          N = private$random_int(1, 30)
        }
      }

      H = private$zfix(H)
      N = private$zfix(N)

      S = str_c(replicate(3, private$random_digit()), collapse = "")
      vdig = str_c(M, E, H, N, S)

      digits = as.integer(str_split(vdig, "")[[1]])
      if (E > 17 & E < 97){
        cum = seq_along(digits) * digits
      } else {
        cum = (11 - seq_along(digits)) * digits
      }
      K = sum(cum) %% 11
      return(str_c(vdig, K))
    },

    vat_id = function(){
      # http://ec.europa.eu/taxation_customs/vies/faq.html#item_11
      # :return: A random Hungarian VAT ID
      return(private$bothify(private$random_element(private$vat_id_formats)))
    }
  )
)

# credit_card -----------------
credit_card_hu_HU = R6Class(
  "credit_card_hu_HU",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_hu_HU$new())$.__enclos_env__$private$first_names,
    first_name = (person_hu_HU$new())$first_name,
    last_names = (person_hu_HU$new())$.__enclos_env__$private$last_names,
    last_name = (person_hu_HU$new())$last_name
  )
)




## profile ------------------
profile_hu_HU = R6Class(
  "profile_hu_HU",
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
                    (person_hu_HU$new())$name_female(),
                    (person_hu_HU$new())$name_male())
      temp = list(
        "username" = (internet_hu_HU$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_hu_HU$new())$address(),
        "mail" = (internet_hu_HU$new())$free_email(),
        "birthdate" = (date_time_init$new())$date_of_birth()
      )
      return(temp)
    },

    profile = function(fields, sex) {
      # Generates a complete profile.
      # If "fields" is not empty, only the fields in the list will be returned

      if (missing(fields)) fields = c()

      field = list(
        "job" = (job_hu_HU$new())$job(),
        "company" = (company_hu_HU$new())$company(),
        "ssn" = (ssn_hu_HU$new())$ssn(),
        "residence" = (address_hu_HU$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_hu_HU$new())$url())
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





