## init ---------------------------------------------------------------------
init = R6Class(
  "init",
  cloneable = FALSE,
  private = list(
    language_locale_codes = list(
      aa = c('DJ', 'ER', 'ET'), af = 'ZA', ak = 'GH', am = 'ET',
      an = 'ES', apn = 'IN', ar = c(
      'AE', 'BH', 'DJ', 'DZ', 'EG',
      'EH', 'ER', 'IL', 'IN','IQ', 'JO', 'KM', 'KW', 'LB', 'LY',
      'MA', 'MR', 'OM', 'PS', 'QA', 'SA', 'SD', 'SO','SS', 'SY',
      'TD', 'TN', 'YE'), as = 'IN', ast = 'ES', ayc = 'PE',
      az = c('AZ', 'IN'), be = 'BY', bem = 'ZM', ber = c('DZ', 'MA'),
      bg = 'BG', bhb = 'IN', bho = 'IN', bn = c('BD', 'IN'),
      bo = c('CN', 'IN'), br = 'FR', brx = 'IN', bs = 'BA', byn = 'ER',
      ca = c('AD', 'ES', 'FR', 'IT'), ce = 'RU', ckb = 'IQ', cmn = 'TW',
      crh = 'UA', cs = 'CZ', csb = 'PL', cv = 'RU', cy = 'GB',
      da = 'DK', de = c('AT', 'BE', 'CH', 'DE', 'LI', 'LU'),
      doi = 'IN', dv = 'MV', dz = 'BT', el = c('GR', 'CY'),
      en = c('AG', 'AU', 'BW', 'CA', 'DK', 'GB', 'HK', 'IE',
             'IN', 'NG', 'NZ', 'PH', 'SG', 'US', 'ZA', 'ZM', 'ZW'),
      eo = 'US', es = c(
      'AR', 'BO', 'CL', 'CO', 'CR', 'CU',
      'DO', 'EC', 'ES', 'GT', 'HN', 'MX', 'NI', 'PA', 'PE',
      'PR', 'PY', 'SV', 'US', 'UY', 'VE'), et = 'EE',
      eu = c('ES', 'FR'), fa = 'IR', ff = 'SN', fi = 'FI',
      fil = 'PH', fo = 'FO', fr = c('CA', 'CH', 'FR', 'LU'),
      fur = 'IT', fy = c('NL', 'DE'), ga = 'IE', gd = 'GB',
      gez = c('ER', 'ET'), gl = 'ES', gu = 'IN', gv = 'GB',
      ha = 'NG', hak = 'TW', he = 'IL', hi = 'IN', hne = 'IN',
      hr = 'HR', hsb = 'DE', ht = 'HT', hu = 'HU', hy = 'AM',
      ia = 'FR', id = 'ID', ig = 'NG', ik = 'CA', is = 'IS',
      it = c('CH', 'IT'), iu = 'CA', iw = 'IL', ja = 'JP',
      ka = 'GE', kk = 'KZ', kl = 'GL', km = 'KH', kn = 'IN',
      ko = 'KR', kok = 'IN', ks = 'IN', ku = 'TR', kw = 'GB',
      ky = 'KG', lb = 'LU', lg = 'UG', li = c('BE', 'NL'),
      lij = 'IT', ln = 'CD', lo = 'LA', lt = 'LT', lv = 'LV',
      lzh = 'TW', mag = 'IN', mai = 'IN', mg = 'MG', mhr = 'RU',
      mi = 'NZ', mk = 'MK', ml = 'IN', mn = 'MN', mni = 'IN',
      mr = 'IN', ms = 'MY', mt = 'MT', my = 'MM', nan = 'TW',
      nb = 'NO', nds = c('DE', 'NL'), ne = 'NP', nhn = 'MX',
      niu = c('NU', 'NZ'), nl = c('AW', 'BE', 'NL'), nn = 'NO',
      nr = 'ZA', nso = 'ZA', oc = 'FR', om = c('ET', 'KE'),
      or = 'IN', os = 'RU', pa = c('IN', 'PK'), pap = c(
        'AN','AW', 'CW'), pl = 'PL', ps = 'AF', pt = c('BR', 'PT'),
      quz = 'PE', raj = 'IN', ro = 'RO', ru = c('RU', 'UA'),
      rw = 'RW', sa = 'IN', sat = 'IN', sc = 'IT', sd = c('IN', 'PK'),
      se = 'NO', shs = 'CA', si = 'LK', sid = 'ET', sk = 'SK',
      sl = 'SI', so = c('DJ', 'ET', 'KE', 'SO'), sq = c('AL', 'ML'),
      sr = c('ME', 'RS'), ss = 'ZA', st = 'ZA', sv = c('FI', 'SE'),
      sw = c('KE', 'TZ'), szl = 'PL', ta = c('IN', 'LK'), tcy = 'IN',
      te = 'IN', tg = 'TJ', th = 'TH', the = 'NP', ti = c('ER', 'ET'),
      tig = 'ER', tk = 'TM', tl = 'PH', tn = 'ZA', tr = c('CY', 'TR'),
      ts = 'ZA', tt = 'RU', ug = 'CN', uk = 'UA', unm = 'US',
      ur = c('IN', 'PK'), uz = 'UZ', ve = 'ZA', vi = 'VN', wa = 'BE',
      wae = 'CH', wal = 'ET', wo = 'SN', xh = 'ZA', yi = 'US',
      yo = 'NG', yue = 'HK', zh = c('CN', 'HK', 'SG', 'TW'), zu = 'ZA'
    ),

    locale = function() {
      lcode = private$language_code()
      locale = str_c(lcode,
                     sample(private$language_locale_codes[[lcode]], 1),
                     sep = "_")
      return(locale)
    },


    language_code = function() {
      return(sample(names(private$language_locale_codes), 1))
    },

    random_element = function(elements) {
      if (class(elements) == "list") {
        ele = sapply(elements, function(x) x[[1]])
        prob = sapply(elements, function(x) as.numeric(x[[2]]))
        return(sample(ele, 1, prob = prob))
      } else return(sample(elements, 1))
    },

    random_int = function(from = 0, to = 9999) {
      # Returns a random integer between two values.
      # :param min: lower bound value (inclusive; default=0)
      # :param max: upper bound value (inclusive; default=9999)
      # :returns: random integer between min and max
      temp = round(runif(n = 1, min = from, max = to))
      return(temp)
    },


    random_digit = function() {
      # Returns a random digit/number
      # between 0 and 9.
      return(private$random_int(0, 9))
    },

    random_digit_not_null = function() {
      # Returns a random non-zero digit/number
      # between 1 and 9.
      return(private$random_int(1, 9))
    },

    random_digit_or_empty = function(){
      # Returns a random digit/number
      # between 0 and 9 or an empty string.
      if (sample(c(0, 1), size = 1)) {
        return(private$random_digit())
      } else {return("")}
    },

    random_digit_not_null_or_empty = function() {
      # Returns a random non-zero digit/number
      # between 1 and 9 or and empty string.

      if (sample(c(0, 1), size = 1)){
        return(private$random_digit_not_null())
      } else {return("")}
    },

    random_number = function(digits, fix_len = FALSE){
      # Returns a random number with 1 digit (default),
      # a random number with 0 to given number of digits, or a random number
      # with given number to given number of digits (when fix_len == True).
      # :param digits: maximum number of digits
      # :param fix_len:  should the number have fixed length?
      # :returns: random number with 0 to given number of digits or
      # fixed length number
      if (missing(digits)) {
        digits = private$random_digit()
      }
      if (fix_len) {
        return(private$random_int(10^(digits - 1), (10^digits - 1)))
      } else {
        return(private$random_int(0, (10^digits - 1)))
      }
    },

    random_letter = function() {
      # Returns a random letter (between a-z and A-Z).
      return(sample(c(letters, LETTERS), size = 1))
    },

    random_letters = function(len = 16) {
      # Returns random letters (between a-z and A-Z)
      return(sample(c(letters, LETTERS), size = len))
    },

    random_lowercase_letter = function() {
      # Returns a random lowercase letter (between a-z).
      return(sample(letters, size = 1))
    },

    random_uppercase_letter = function() {
      # Returns a random uppercase letter (between A-Z).
      return(sample(LETTERS, size = 1))
    },


    randomize_nb_elements = function(number = 10, from , to,
                                     le = FALSE, ge = FALSE) {
      # Returns a random value near number.
      # :param number: value to which the result must be near
      # :param le: result must be lower or equal to number
      # :param ge: result must be greater or equal to number
      # :returns: a random int near number

      if (le & ge) return(number)
      if (ge) min_ = 100 else min_ = 60
      if (le) max_ = 100 else max_ = 140
      nb = as.integer(number * private$random_int(min_, max_) / 100)
      if (!missing(from)) nb = max(from, nb)
      if (!missing(to)) nb = min(to, nb)

      return (nb)
    },


    replace_symbol = function(x, symbol, FUN) {
      FUN = eval(parse(text = FUN))
      while (str_detect(x, symbol)) {
        x = str_replace(x, symbol, as.character(FUN()))
      }
      return(x)
    },

    numerify = function(text = "###") {
      # Replaces all placeholders in given text with randomized values,
      # replacing: all hash sign ('#') occurrences with a random digit
      # (from 0 to 9); all percentage sign ('%') occurrences with a
      # random non-zero digit (from 1 to 9); all exclamation mark ('!')
      # occurrences with a random digit (from 0 to 9) or an empty string;
      # and all at symbol ('@') occurrences with a random non-zero digit
      # (from 1 to 9) or an empty string.
      # :param text: string to be parsed
      # :returns: string with all numerical placeholders filled in

      text = private$replace_symbol(text, "#", "private$random_digit")
      text = private$replace_symbol(text, "%", "private$random_digit_not_null")
      text = private$replace_symbol(text, "!", "private$random_digit_or_empty")
      text = private$replace_symbol(text, "@", "private$random_digit_not_null_or_empty")
      return(text)
    },

    lexify = function(text = "????", full_letters = c(letters, LETTERS)) {
      # Replaces all question mark ('?') occurrences with a random letter.
      while (str_detect(text, "\\?")) {
        text = str_replace(text, "\\?", sample(full_letters, 1))
      }
      return(text)
    },

    bothify = function(text = "## ??", full_letters = c(letters, LETTERS)) {
      # Replaces all placeholders with random numbers and letters.
      # :param text: string to be parsed
      # :returns: string with all numerical and letter placeholders filled in

      text = private$lexify(text = private$numerify(text = text),
                            full_letters = full_letters)
      return(text)
    },

    hexify = function(text = "^^^^", upper = FALSE) {
      # Replaces all circumflex ('^') occurrences with a random
      # hexadecimal character.
      # :param text: string to be parsed
      # :param upper: Format as uppercase hexadecimal
      # :returns: string with all letter placeholders filled in
      hexadecimal = c(seq(0, 9), letters[seq(6)])
      if (upper) hexadecimal = str_to_upper(hexadecimal)

      while (str_detect(text, "\\^")) {
        text = str_replace(text, "\\^", sample(hexadecimal, 1))
      }
      return(text)
    },

    format_parse = function(string) {
      strs = str_extract_all(string, pattern = "\\{[a-zA-Z\\_]+\\}")[[1]]
      for (i in seq_along(strs)){
        sub_str = str_remove(str_remove(strs[i], "\\{"), "\\}")
        obj1 = try(eval(parse(text = str_c("private$", sub_str))), silent = TRUE)
        obj2 = try(eval(parse(text = str_c("self$", sub_str))),silent = TRUE)

        if (class(obj1) == "function") {
          replace_str = obj1()
          string = str_replace(string, "\\{[a-zA-Z\\_]+\\}", replace_str)
        } else {
          if (class(obj2) == "function") {
            replace_str = obj2()
            string = str_replace(string, "\\{[a-zA-Z\\_]+\\}", replace_str)
          } else {stop("Please cheack the format!")}
        }
      }
      return(string)
    }
  )
)


## automotive ----------------------------------
automotive_init = R6Class(
  "automotive_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    license_formats = c("init")
  ),
  public = list(
    license_plate = function() {
      temp_format = private$random_element(private$license_formats)
      return(private$numerify(private$lexify(temp_format, LETTERS)))
    }
  )
)

## bank ---------------------------------------------------
bank_init = R6Class(
  "bank_init",
  cloneable = FALSE,
  inherit = init,
  private = list(
    ALPHA = c(
      "A" = 10,
      "B" = 11,
      "C" = 12,
      "D" = 13,
      "E" = 14,
      "F" = 15,
      "G" = 16,
      "H" = 17,
      "I" = 18,
      "J" = 19,
      "K" = 20,
      "L" = 21,
      "M" = 22,
      "N" = 23,
      "O" = 24,
      "P" = 25,
      "Q" = 26,
      "R" = 27,
      "S" = 28,
      "T" = 29,
      "U" = 30,
      "V" = 31,
      "W" = 32,
      "X" = 33,
      "Y" = 34,
      "Z" = 35),

    bban_format = '????#############',
    country_code = 'GB'
  ),
  public = list(
    bank_country = function() {
      return(private$country_code)
    },

    bban = function() {
      temp = private$bothify(private$bban_format, LETTERS)
      return(temp)
    },

    iban = function() {
      bban = self$bban()

      check = str_c(bban, private$country_code, "00")

      for (i in seq_along(private$ALPHA)) {
        check = str_replace_all(check,
                                names(private$ALPHA)[i],
                                as.character(unname(private$ALPHA))[i])

      }
      check = 98 - as.integer(as.bigz(check, 97))
      check = sprintf("%02d", check)

      return(str_c(private$country_code, check, bban))
    }
  )
)

## barcode ----------------------------------------------
barcode_init = R6Class(
  "barcode_init",
  inherit = init,
  cloneable = FALSE,
  public = list(
    ean = function(len = 13){

      if (!(len %in% c(8, 13))) stop("len can only be 8 or 13")

      code = replicate(len-1, private$random_digit())
      if (len == 8){
        weights = c(3, 1, 3, 1, 3, 1, 3)
      } else{
        weights = c(1, 3, 1, 3, 1, 3, 1, 3, 1, 3, 1, 3)
      }

      weighted_sum = sum(code * weights)
      check_digit = (10 - (weighted_sum %% 10)) %% 10
      code = c(code, check_digit)
      return(str_c(code, collapse = ""))
    },

    ean8 = function(){
      return(self$ean(8))
    },

    ean13 = function(){
      return(self$ean(13))
    }
  )
)

## color  ---------------------------------------------
color_init = R6Class(
  "color_init",
  inherit = init,
  cloneable = FALSE,
  private = list(

    all_colors = list(
      c("AliceBlue", "#F0F8FF"),
      c("AntiqueWhite", "#FAEBD7"),
      c("Aqua", "#00FFFF"),
      c("Aquamarine", "#7FFFD4"),
      c("Azure", "#F0FFFF"),
      c("Beige", "#F5F5DC"),
      c("Bisque", "#FFE4C4"),
      c("Black", "#000000"),
      c("BlanchedAlmond", "#FFEBCD"),
      c("Blue", "#0000FF"),
      c("BlueViolet", "#8A2BE2"),
      c("Brown", "#A52A2A"),
      c("BurlyWood", "#DEB887"),
      c("CadetBlue", "#5F9EA0"),
      c("Chartreuse", "#7FFF00"),
      c("Chocolate", "#D2691E"),
      c("Coral", "#FF7F50"),
      c("CornflowerBlue", "#6495ED"),
      c("Cornsilk", "#FFF8DC"),
      c("Crimson", "#DC143C"),
      c("Cyan", "#00FFFF"),
      c("DarkBlue", "#00008B"),
      c("DarkCyan", "#008B8B"),
      c("DarkGoldenRod", "#B8860B"),
      c("DarkGray", "#A9A9A9"),
      c("DarkGreen", "#006400"),
      c("DarkKhaki", "#BDB76B"),
      c("DarkMagenta", "#8B008B"),
      c("DarkOliveGreen", "#556B2F"),
      c("DarkOrange", "#FF8C00"),
      c("DarkOrchid", "#9932CC"),
      c("DarkRed", "#8B0000"),
      c("DarkSalmon", "#E9967A"),
      c("DarkSeaGreen", "#8FBC8F"),
      c("DarkSlateBlue", "#483D8B"),
      c("DarkSlateGray", "#2F4F4F"),
      c("DarkTurquoise", "#00CED1"),
      c("DarkViolet", "#9400D3"),
      c("DeepPink", "#FF1493"),
      c("DeepSkyBlue", "#00BFFF"),
      c("DimGray", "#696969"),
      c("DodgerBlue", "#1E90FF"),
      c("FireBrick", "#B22222"),
      c("FloralWhite", "#FFFAF0"),
      c("ForestGreen", "#228B22"),
      c("Fuchsia", "#FF00FF"),
      c("Gainsboro", "#DCDCDC"),
      c("GhostWhite", "#F8F8FF"),
      c("Gold", "#FFD700"),
      c("GoldenRod", "#DAA520"),
      c("Gray", "#808080"),
      c("Green", "#008000"),
      c("GreenYellow", "#ADFF2F"),
      c("HoneyDew", "#F0FFF0"),
      c("HotPink", "#FF69B4"),
      c("IndianRed", "#CD5C5C"),
      c("Indigo", "#4B0082"),
      c("Ivory", "#FFFFF0"),
      c("Khaki", "#F0E68C"),
      c("Lavender", "#E6E6FA"),
      c("LavenderBlush", "#FFF0F5"),
      c("LawnGreen", "#7CFC00"),
      c("LemonChiffon", "#FFFACD"),
      c("LightBlue", "#ADD8E6"),
      c("LightCoral", "#F08080"),
      c("LightCyan", "#E0FFFF"),
      c("LightGoldenRodYellow", "#FAFAD2"),
      c("LightGray", "#D3D3D3"),
      c("LightGreen", "#90EE90"),
      c("LightPink", "#FFB6C1"),
      c("LightSalmon", "#FFA07A"),
      c("LightSeaGreen", "#20B2AA"),
      c("LightSkyBlue", "#87CEFA"),
      c("LightSlateGray", "#778899"),
      c("LightSteelBlue", "#B0C4DE"),
      c("LightYellow", "#FFFFE0"),
      c("Lime", "#00FF00"),
      c("LimeGreen", "#32CD32"),
      c("Linen", "#FAF0E6"),
      c("Magenta", "#FF00FF"),
      c("Maroon", "#800000"),
      c("MediumAquaMarine", "#66CDAA"),
      c("MediumBlue", "#0000CD"),
      c("MediumOrchid", "#BA55D3"),
      c("MediumPurple", "#9370DB"),
      c("MediumSeaGreen", "#3CB371"),
      c("MediumSlateBlue", "#7B68EE"),
      c("MediumSpringGreen", "#00FA9A"),
      c("MediumTurquoise", "#48D1CC"),
      c("MediumVioletRed", "#C71585"),
      c("MidnightBlue", "#191970"),
      c("MintCream", "#F5FFFA"),
      c("MistyRose", "#FFE4E1"),
      c("Moccasin", "#FFE4B5"),
      c("NavajoWhite", "#FFDEAD"),
      c("Navy", "#000080"),
      c("OldLace", "#FDF5E6"),
      c("Olive", "#808000"),
      c("OliveDrab", "#6B8E23"),
      c("Orange", "#FFA500"),
      c("OrangeRed", "#FF4500"),
      c("Orchid", "#DA70D6"),
      c("PaleGoldenRod", "#EEE8AA"),
      c("PaleGreen", "#98FB98"),
      c("PaleTurquoise", "#AFEEEE"),
      c("PaleVioletRed", "#DB7093"),
      c("PapayaWhip", "#FFEFD5"),
      c("PeachPuff", "#FFDAB9"),
      c("Peru", "#CD853F"),
      c("Pink", "#FFC0CB"),
      c("Plum", "#DDA0DD"),
      c("PowderBlue", "#B0E0E6"),
      c("Purple", "#800080"),
      c("Red", "#FF0000"),
      c("RosyBrown", "#BC8F8F"),
      c("RoyalBlue", "#4169E1"),
      c("SaddleBrown", "#8B4513"),
      c("Salmon", "#FA8072"),
      c("SandyBrown", "#F4A460"),
      c("SeaGreen", "#2E8B57"),
      c("SeaShell", "#FFF5EE"),
      c("Sienna", "#A0522D"),
      c("Silver", "#C0C0C0"),
      c("SkyBlue", "#87CEEB"),
      c("SlateBlue", "#6A5ACD"),
      c("SlateGray", "#708090"),
      c("Snow", "#FFFAFA"),
      c("SpringGreen", "#00FF7F"),
      c("SteelBlue", "#4682B4"),
      c("Tan", "#D2B48C"),
      c("Teal", "#008080"),
      c("Thistle", "#D8BFD8"),
      c("Tomato", "#FF6347"),
      c("Turquoise", "#40E0D0"),
      c("Violet", "#EE82EE"),
      c("Wheat", "#F5DEB3"),
      c("White", "#FFFFFF"),
      c("WhiteSmoke", "#F5F5F5"),
      c("Yellow", "#FFFF00"),
      c("YellowGreen", "#9ACD32")),


    safe_colors = c(
      'black', 'maroon', 'green', 'navy', 'olive',
      'purple', 'teal', 'lime', 'blue', 'silver',
      'gray', 'yellow', 'fuchsia', 'aqua', 'white')
  ),

  public = list(
    color_name = function(){
      return(sample(sapply(private$all_colors, function(x)x[1]), 1))
    },

    safe_color_name = function(){
      return(private$random_element(private$safe_colors))
    },

    hex_color = function(){
      temp = as.hexmode(private$random_int(1, 16777215))

      len = str_length(temp)
      if (len < 6){
        temp = str_c(temp, str_c(rep("0", 6 - len), collapse = ""))
      }

      return(str_c("#", temp))
    },

    safe_hex_color = function(){
      temp = as.hexmode(private$random_int(0, 255))

      len = str_length(temp)
      if (len < 3){
        temp = str_c(temp, str_c(rep("0", 3 - len), collapse = ""))
      }
      temp = rep(str_split(temp, "")[[1]], each = 2)
      return(str_c("#", str_c(temp, collapse = "")))
    },

    rgb_color = function(){
      temp = replicate(3, private$random_int(0, 255))
      return(str_c(temp, collapse = ","))
    },

    rgb_css_color = function(){
      return(sprintf("rgb(%s)", self$rgb_color()))
    }
  )
)

## person ---------------------------------------------------
person_init = R6Class(
  "person_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    formats = '{first_name} {last_name}',
    first_names = c('John', 'Jane'),
    last_names = 'Doe'
  ),

  public = list(
    name = function(){
      pattern = private$random_element(private$formats)
      return(private$format_parse(pattern))
    },

    first_name = function(){
      return(private$random_element(private$first_names))
    },

    last_name = function(){
      return(private$random_element(private$last_names))
    },

    name_male = function() {
      temp = try(eval(parse(text = "private$formats_male")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        formats = private$formats
      } else {
        formats = temp
      }
      pattern = private$random_element(formats)
      return(private$format_parse(pattern))
    },

    name_female = function() {
      temp = try(eval(parse(text = "private$formats_female")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        formats = private$formats
      } else {
        formats = temp
      }
      pattern = private$random_element(formats)
      return(private$format_parse(pattern))
    },

    first_name_male = function() {
      temp = try(eval(parse(text = "private$first_names_male")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$first_name())
      }
      return(private$random_element(temp))
    },

    first_name_female = function() {
      temp = try(eval(parse(text = "private$first_names_female")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$first_name())
      }
      return(private$random_element(temp))
    },

    last_name_male = function() {
      temp = try(eval(parse(text = "private$last_names_male")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$last_name())
      }
      return(private$random_element(temp))
    },

    last_name_female = function() {
      temp = try(eval(parse(text = "private$last_names_female")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$last_name())
      }
      return(private$random_element(temp))
    },

    prefix = function() {
      temp1 = try(eval(parse(text = "private$prefixes")), silent = TRUE)
      if (!(class(temp1) %in% c("try-error", "NULL"))) {
        return(private$random_element(temp1))
      }
      temp2 = try(eval(parse(text = "private$prefixes_male")), silent = TRUE)
      temp3 = try(eval(parse(text = "private$prefixes_female")), silent = TRUE)

      if (!sum(c(class(temp2), class(temp3)) %in% c("try-error", "NULL"))) {
        prefixes = sample(list(temp2, temp3), 1)[[1]]
        return(private$random_element(prefixes))
      }
      return("")
    },

    prefix_male = function() {
      temp = try(eval(parse(text = "private$prefixes_male")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$prefix())
      }
      return(private$random_element(temp))
    },

    prefix_female = function() {
      temp = try(eval(parse(text = "private$prefixes_female")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$prefix())
      }
      return(private$random_element(temp))
    },

    suffix = function() {
      temp1 = try(eval(parse(text = "private$suffixes")), silent = TRUE)
      if (!(class(temp1) %in% c("try-error", "NULL"))) {
        return(private$random_element(temp1))
      }

      temp2 = try(eval(parse(text = "private$suffixes_male")), silent = TRUE)
      temp3 = try(eval(parse(text = "private$suffixes_female")), silent = TRUE)

      if (!sum(c(class(temp2), class(temp3)) %in% c("try-error", "NULL"))) {
        suffixes = sample(list(temp2, temp3), 1)[[1]]
        return(private$random_element(suffixes))
      }
      return("")
    },

    suffix_male = function() {
      temp = try(eval(parse(text = "private$suffixes_male")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$suffix())
      }
      return(private$random_element(temp))
    },

    suffix_female = function() {
      temp = try(eval(parse(text = "private$suffixes_female")), silent = TRUE)
      if (class(temp) %in% c("try-error", "NULL")) {
        return(self$suffix())
      }
      return(private$random_element(temp))
    }
  )
)

## company  -------------------------------------------------
company_init = R6Class(
  "company_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    formats = c(
      '{last_name} {company_suffix}',
      '{last_name}-{last_name}',
      '{last_name}, {last_name} and {last_name}'),


    last_names = (person_init$new())$.__enclos_env__$private$last_names,
    last_name = (person_init$new())$last_name,

    company_suffixes = c('Inc', 'and Sons', 'LLC', 'Group', 'PLC', 'Ltd'),

    catch_phrase_words = list(
      c('Adaptive',
        'Advanced',
        'Ameliorated',
        'Assimilated',
        'Automated',
        'Balanced',
        'Business-focused',
        'Centralized',
        'Cloned',
        'Compatible',
        'Configurable',
        'Cross-group',
        'Cross-platform',
        'Customer-focused',
        'Customizable',
        'Decentralized',
        'De-engineered',
        'Devolved',
        'Digitized',
        'Distributed',
        'Diverse',
        'Down-sized',
        'Enhanced',
        'Enterprise-wide',
        'Ergonomic',
        'Exclusive',
        'Expanded',
        'Extended',
        'Face-to-face',
        'Focused',
        'Front-line',
        'Fully-configurable',
        'Function-based',
        'Fundamental',
        'Future-proofed',
        'Grass-roots',
        'Horizontal',
        'Implemented',
        'Innovative',
        'Integrated',
        'Intuitive',
        'Inverse',
        'Managed',
        'Mandatory',
        'Monitored',
        'Multi-channeled',
        'Multi-lateral',
        'Multi-layered',
        'Multi-tiered',
        'Networked',
        'Object-based',
        'Open-architected',
        'Open-source',
        'Operative',
        'Optimized',
        'Optional',
        'Organic',
        'Organized',
        'Persevering',
        'Persistent',
        'Phased',
        'Polarized',
        'Pre-emptive',
        'Proactive',
        'Profit-focused',
        'Profound',
        'Programmable',
        'Progressive',
        'Public-key',
        'Quality-focused',
        'Reactive',
        'Realigned',
        'Re-contextualized',
        'Re-engineered',
        'Reduced',
        'Reverse-engineered',
        'Right-sized',
        'Robust',
        'Seamless',
        'Secured',
        'Self-enabling',
        'Sharable',
        'Stand-alone',
        'Streamlined',
        'Switchable',
        'Synchronized',
        'Synergistic',
        'Synergized',
        'Team-oriented',
        'Total',
        'Triple-buffered',
        'Universal',
        'Up-sized',
        'Upgradable',
        'User-centric',
        'User-friendly',
        'Versatile',
        'Virtual',
        'Visionary',
        'Vision-oriented'
      ),
      c('24hour',
        '24/7',
        '3rdgeneration',
        '4thgeneration',
        '5thgeneration',
        '6thgeneration',
        'actuating',
        'analyzing',
        'asymmetric',
        'asynchronous',
        'attitude-oriented',
        'background',
        'bandwidth-monitored',
        'bi-directional',
        'bifurcated',
        'bottom-line',
        'clear-thinking',
        'client-driven',
        'client-server',
        'coherent',
        'cohesive',
        'composite',
        'context-sensitive',
        'contextually-based',
        'content-based',
        'dedicated',
        'demand-driven',
        'didactic',
        'directional',
        'discrete',
        'disintermediate',
        'dynamic',
        'eco-centric',
        'empowering',
        'encompassing',
        'even-keeled',
        'executive',
        'explicit',
        'exuding',
        'fault-tolerant',
        'foreground',
        'fresh-thinking',
        'full-range',
        'global',
        'grid-enabled',
        'heuristic',
        'high-level',
        'holistic',
        'homogeneous',
        'human-resource',
        'hybrid',
        'impactful',
        'incremental',
        'intangible',
        'interactive',
        'intermediate',
        'leadingedge',
        'local',
        'logistical',
        'maximized',
        'methodical',
        'mission-critical',
        'mobile',
        'modular',
        'motivating',
        'multimedia',
        'multi-state',
        'multi-tasking',
        'national',
        'needs-based',
        'neutral',
        'next generation',
        'non-volatile',
        'object-oriented',
        'optimal',
        'optimizing',
        'radical',
        'real-time',
        'reciprocal',
        'regional',
        'responsive',
        'scalable',
        'secondary',
        'solution-oriented',
        'stable',
        'static',
        'systematic',
        'systemic',
        'system-worthy',
        'tangible',
        'tertiary',
        'transitional',
        'uniform',
        'upward-trending',
        'user-facing',
        'value-added',
        'web-enabled',
        'well-modulated',
        'zero administration',
        'zero-defect',
        'zero tolerance'
      ),
      c('ability',
        'access',
        'adapter',
        'algorithm',
        'alliance',
        'analyzer',
        'application',
        'approach',
        'architecture',
        'archive',
        'artificial intelligence',
        'array',
        'attitude',
        'benchmark',
        'budgetary management',
        'capability',
        'capacity',
        'challenge',
        'circuit',
        'collaboration',
        'complexity',
        'concept',
        'conglomeration',
        'contingency',
        'core',
        'customer loyalty',
        'database',
        'data-warehouse',
        'definition',
        'emulation',
        'encoding',
        'encryption',
        'extranet',
        'firmware',
        'flexibility',
        'focus group',
        'forecast',
        'frame',
        'framework',
        'function',
        'functionalities',
        'Graphic Interface',
        'groupware',
        'Graphical User Interface',
        'hardware',
        'help-desk',
        'hierarchy',
        'hub',
        'implementation',
        'info-mediaries',
        'infrastructure',
        'initiative',
        'installation',
        'instruction set',
        'interface',
        'Internet solution',
        'intranet',
        'knowledge user',
        'knowledgebase',
        'Local Area Network',
        'leverage',
        'matrices',
        'matrix',
        'methodology',
        'middleware',
        'migration',
        'model',
        'moderator',
        'monitoring',
        'moratorium',
        'neural-net',
        'open architecture',
        'open system',
        'orchestration',
        'paradigm',
        'parallelism',
        'policy',
        'portal',
        'pricing structure',
        'process improvement',
        'product',
        'productivity',
        'project',
        'projection',
        'protocol',
        'secured line',
        'service-desk',
        'software',
        'solution',
        'standardization',
        'strategy',
        'structure',
        'success',
        'superstructure',
        'support',
        'synergy',
        'system engine',
        'task-force',
        'throughput',
        'time-frame',
        'toolset',
        'utilization',
        'website',
        'workforce'
      )),

    bs_words = list(
      c('implement',
        'utilize',
        'integrate',
        'streamline',
        'optimize',
        'evolve',
        'transform',
        'embrace',
        'enable',
        'orchestrate',
        'leverage',
        'reinvent',
        'aggregate',
        'architect',
        'enhance',
        'incentivize',
        'morph',
        'empower',
        'envisioneer',
        'monetize',
        'harness',
        'facilitate',
        'seize',
        'disintermediate',
        'synergize',
        'strategize',
        'deploy',
        'brand',
        'grow',
        'target',
        'syndicate',
        'synthesize',
        'deliver',
        'mesh',
        'incubate',
        'engage',
        'maximize',
        'benchmark',
        'expedite',
        're-intermediate',
        'whiteboard',
        'visualize',
        'repurpose',
        'innovate',
        'scale',
        'unleash',
        'drive',
        'extend',
        'engineer',
        'revolutionize',
        'generate',
        'exploit',
        'transition',
        'e-enable',
        'iterate',
        'cultivate',
        'matrix',
        'productize',
        'redefine',
        're-contextualize'
      ),
      c('clicks-and-mortar',
        'value-added',
        'vertical',
        'proactive',
        'robust',
        'revolutionary',
        'scalable',
        'leading-edge',
        'innovative',
        'intuitive',
        'strategic',
        'e-business',
        'mission-critical',
        'sticky',
        'one-to-one',
        '24/7',
        'end-to-end',
        'global',
        'B2B',
        'B2C',
        'granular',
        'frictionless',
        'virtual',
        'viral',
        'dynamic',
        '24/365',
        'best-of-breed',
        'killer',
        'magnetic',
        'bleeding-edge',
        'web-enabled',
        'interactive',
        'dot-com',
        'sexy',
        'back-end',
        'real-time',
        'efficient',
        'front-end',
        'distributed',
        'seamless',
        'extensible',
        'turn-key',
        'world-class',
        'open-source',
        'cross-platform',
        'cross-media',
        'synergistic',
        'bricks-and-clicks',
        'out-of-the-box',
        'enterprise',
        'integrated',
        'impactful',
        'wireless',
        'transparent',
        'next-generation',
        'cutting-edge',
        'user-centric',
        'visionary',
        'customized',
        'ubiquitous',
        'plug-and-play',
        'collaborative',
        'compelling',
        'holistic',
        'rich'
      ),
      c('synergies',
        'web-readiness',
        'paradigms',
        'markets',
        'partnerships',
        'infrastructures',
        'platforms',
        'initiatives',
        'channels',
        'eyeballs',
        'communities',
        'ROI',
        'solutions',
        'e-tailers',
        'e-services',
        'action-items',
        'portals',
        'niches',
        'technologies',
        'content',
        'vortals',
        'supply-chains',
        'convergence',
        'relationships',
        'architectures',
        'interfaces',
        'e-markets',
        'e-commerce',
        'systems',
        'bandwidth',
        'info-mediaries',
        'models',
        'mindshare',
        'deliverables',
        'users',
        'schemas',
        'networks',
        'applications',
        'metrics',
        'e-business',
        'functionalities',
        'experiences',
        'web services',
        'methodologies'
      ))
  ),

  public = list(
    company  = function(){
      pattern = private$random_element(private$formats)
      return(private$format_parse(pattern))
    },

    company_suffix = function(){
      return(private$random_element(private$company_suffixes))
    },

    catch_phrase = function(){
      result = sapply(private$catch_phrase_words,
                      FUN = function(x) {private$random_element(x)})
      return(str_c(result, collapse = " "))
    },

    bs = function(){
      result = sapply(private$bs_words,
                      FUN = function(x) {private$random_element(x)})
      return(str_c(result, collapse = " "))
    }

  )
)

## credit_score ---------------------------------------------------
credit_score_init = R6Class(
  "credit_score_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    credit_score_types = list(
      "fico" = list(name = "FICO Score 8",
                    providers = c("Equifax", "Experian", "TransUnion"),
                    score_range = c(300, 850)),
      "fico2" = list(name = "Experian/Fair Isaac Risk Model V2SM",
                     providers = "Experian",
                     score_range = c(320, 844)),
      "fico4" = list(name = "TransUnion FICO Risk Score, Classic 04",
                     providers = "TransUnion",
                     score_range = c(309, 839)),
      "fico5" = list(name = "Equifax Beacon 5.0",
                     providers = "Equifax",
                     score_range = c(334, 818)),
      "fico8" = list(name = "FICO Score 8",
                     providers = c("Equifax", "Experian", "TransUnion"),
                     score_range = c(300, 850))
    ),

    credit_score_type = function(credit_score) {
      if (missing(credit_score)) {
        type = sample(names(private$credit_score_types), 1)
        return(private$credit_score_types[[type]])
      } else if (class(credit_score) == "list" &
                 all(names(credit_score) %in% c("name", "providers", "score_range"))) {
        return(credit_score)
      } else return("Please check the credit score.")
    },

    generate_credit_score = function(credit_score_range) {
      return(private$random_int(from = credit_score_range[1],
                                to = credit_score_range[2]))
    }
  ),
  public = list(
    credit_score_name = function(credit_score) {
      if (missing(credit_score)) {
        score_type = sample(names(private$credit_score_types), 1)
        credit_score = private$credit_score_types[[score_type]]
        return(private$credit_score_type(credit_score)$name)
      }
      return(credit_score$name)
    },
    credit_score_provider = function(credit_score) {
      if (missing(credit_score)) {
        score_type = sample(names(private$credit_score_types), 1)
        credit_score = private$credit_score_types[[score_type]]
        return(sample(private$credit_score_type(credit_score)$providers, 1))
      }
      return(sample(credit_score$providers, 1))
    },
    credit_score = function(credit_score) {
      credit_score = private$credit_score_type(credit_score)$score_range
      score = private$generate_credit_score(credit_score)
      return(score)
    },
    credit_score_full = function(credit_score) {
      credit_score_summary = private$credit_score_type(credit_score)
      return(str_c(self$credit_score_name(credit_score_summary), "\n",
                   self$credit_score_provider(credit_score_summary), "\n",
                   self$credit_score(credit_score_summary), "\n"))
    }
  )
)


## currency -------------------------------------------------------
currency_init = R6Class(
  "currency_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    currencies = list(
      c("AED", "United Arab Emirates dirham"),
      c("AFN", "Afghan afghani"),
      c("ALL", "Albanian lek"),
      c("AMD", "Armenian dram"),
      c("ANG", "Netherlands Antillean guilder"),
      c("AOA", "Angolan kwanza"),
      c("ARS", "Argentine peso"),
      c("AUD", "Australian dollar"),
      c("AWG", "Aruban florin"),
      c("AZN", "Azerbaijani manat"),
      c("BAM", "Bosnia and Herzegovina convertible mark"),
      c("BBD", "Barbadian dollar"),
      c("BDT", "Bangladeshi taka"),
      c("BGN", "Bulgarian lev"),
      c("BHD", "Bahraini dinar"),
      c("BIF", "Burundian franc"),
      c("BMD", "Bermudian dollar"),
      c("BND", "Brunei dollar"),
      c("BOB", "Bolivian boliviano"),
      c("BRL", "Brazilian real"),
      c("BSD", "Bahamian dollar"),
      c("BTN", "Bhutanese ngultrum"),
      c("BWP", "Botswana pula"),
      c("BYR", "Belarusian ruble"),
      c("BZD", "Belize dollar"),
      c("CAD", "Canadian dollar"),
      c("CDF", "Congolese franc"),
      c("CHF", "Swiss franc"),
      c("CLP", "Chilean peso"),
      c("CNY", "Renminbi"),
      c("COP", "Colombian peso"),
      c("CRC", "Costa Rican col\u00f3n"),
      c("CUC", "Cuban convertible peso"),
      c("CUP", "Cuban peso"),
      c("CVE", "Cape Verdean escudo"),
      c("CZK", "Czech koruna"),
      c("DJF", "Djiboutian franc"),
      c("DKK", "Danish krone"),
      c("DOP", "Dominican peso"),
      c("DZD", "Algerian dinar"),
      c("EGP", "Egyptian pound"),
      c("ERN", "Eritrean nakfa"),
      c("ETB", "Ethiopian birr"),
      c("EUR", "Euro"),
      c("FJD", "Fijian dollar"),
      c("FKP", "Falkland Islands pound"),
      c("GBP", "Pound sterling"),
      c("GEL", "Georgian lari"),
      c("GGP", "Guernsey pound"),
      c("GHS", "Ghanaian cedi"),
      c("GIP", "Gibraltar pound"),
      c("GMD", "Gambian dalasi"),
      c("GNF", "Guinean franc"),
      c("GTQ", "Guatemalan quetzal"),
      c("GYD", "Guyanese dollar"),
      c("HKD", "Hong Kong dollar"),
      c("HNL", "Honduran lempira"),
      c("HRK", "Croatian kuna"),
      c("HTG", "Haitian gourde"),
      c("HUF", "Hungarian forint"),
      c("IDR", "Indonesian rupiah"),
      c("ILS", "Israeli new shekel"),
      c("NIS", "Israeli new shekel"),
      c("IMP", "Manx pound"),
      c("INR", "Indian rupee"),
      c("IQD", "Iraqi dinar"),
      c("IRR", "Iranian rial"),
      c("ISK", "Icelandic kr\u00f3na"),
      c("JEP", "Jersey pound"),
      c("JMD", "Jamaican dollar"),
      c("JOD", "Jordanian dinar"),
      c("JPY", "Japanese yen"),
      c("KES", "Kenyan shilling"),
      c("KGS", "Kyrgyzstani som"),
      c("KHR", "Cambodian riel"),
      c("KMF", "Comorian franc"),
      c("KPW", "North Korean won"),
      c("KRW", "Western Krahn language"),
      c("KWD", "Kuwaiti dinar"),
      c("KYD", "Cayman Islands dollar"),
      c("KZT", "Kazakhstani tenge"),
      c("LAK", "Lao kip"),
      c("LBP", "Lebanese pound"),
      c("LKR", "Sri Lankan rupee"),
      c("LRD", "Liberian dollar"),
      c("LSL", "Lesotho loti"),
      c("LTL", "Lithuanian litas"),
      c("LYD", "Libyan dinar"),
      c("MAD", "Moroccan dirham"),
      c("MDL", "Moldovan leu"),
      c("MGA", "Malagasy ariar"),
      c("MKD", "Macedonian denar"),
      c("MMK", "Burmese kyat"),
      c("MNT", "Mongolian tugrik"),
      c("MOP", "Macanese pataca"),
      c("MRO", "Mauritanian ouguiya"),
      c("MUR", "Mauritian rupee"),
      c("MVR", "Maldivian rufiyaa"),
      c("MWK", "Malawian kwacha"),
      c("MXN", "Mexican peso"),
      c("MYR", "Malaysian ringgit"),
      c("MZN", "Mozambican metical"),
      c("NAD", "Namibian dollar"),
      c("NGN", "Nigerian naira"),
      c("NIO", "Nicaraguan c\u00f3rdoba"),
      c("NOK", "Norwegian krone"),
      c("NPR", "Nepalese rupee"),
      c("NZD", "New Zealand dollar"),
      c("OMR", "Omani rial"),
      c("PAB", "Panamanian balboa"),
      c("PEN", "Peruvian sol"),
      c("PGK", "Papua New Guinean kina"),
      c("PHP", "Philippine peso"),
      c("PKR", "Pakistani rupee"),
      c("PLN", "Polish zloty"),
      c("PYG", "Paraguayan guarani"),
      c("QAR", "Qatari riyal"),
      c("RON", "Romanian leu"),
      c("RSD", "Serbian dinar"),
      c("RUB", "Russian ruble"),
      c("RWF", "Rwandan franc"),
      c("SAR", "Saudi riyal"),
      c("SBD", "Solomon Islands dollar"),
      c("SCR", "Seychellois rupee"),
      c("SDG", "Sudanese pound"),
      c("SEK", "Swedish krona"),
      c("SGD", "Singapore dollar"),
      c("SHP", "Saint Helena pound"),
      c("SLL", "Sierra Leonean leone"),
      c("SOS", "Somali shilling"),
      c("SPL", "Seborga luigino"),
      c("SRD", "Surinamese dollar"),
      c("STD", "S\u00e3o Tom\u00e9 and Pr\u00edncipe dobra"),
      c("SVC", "Salvadoran col\u00f3n"),
      c("SYP", "Syrian pound"),
      c("SZL", "Swazi lilangeni"),
      c("THB", "Thai baht"),
      c("TJS", "Tajikistani somoni"),
      c("TMT", "Turkmenistan manat"),
      c("TND", "Tunisian dinar"),
      c("TOP", "Tongan pa\u02bbanga"),
      c("TRY", "Turkish lira"),
      c("TTD", "Trinidad and Tobago dollar"),
      c("TVD", "Tuvaluan dollar"),
      c("TWD", "New Taiwan dollar"),
      c("TZS", "Tanzanian shilling"),
      c("UAH", "Ukrainian hryvnia"),
      c("UGX", "Ugandan shilling"),
      c("USD", "United States dollar"),
      c("UYU", "Uruguayan peso"),
      c("UZS", "Uzbekistani so\u02bbm"),
      c("VEF", "Venezuelan bol\u00edvar"),
      c("VND", "Vietnamese \u0111\u1ed3ng"),
      c("VUV", "Vanuatu vatu"),
      c("WST", "Samoan t\u0101l\u0101"),
      c("XAF", "Central African CFA franc"),
      c("XCD", "Eastern Caribbean dollar"),
      c("XDR", "Special drawing rights"),
      c("XOF", "West African CFA franc"),
      c("XPF", "CFP franc"),
      c("YER", "Yemeni rial"),
      c("ZAR", "South African rand"),
      c("ZMW", "Zambian kwacha"),
      c("ZWD", "Zimbabwean dollar")
    ),

    # Source: https://en.wikipedia.org/wiki/List_of_cryptocurrencies
    cryptocurrencies = list(
      c('AMP', "AMP"),
      c('AUR', "Auroracoin"),
      c('BC', "BlackCoin"),
      c('BTC', "Bitcoin"),
      c('BURST', "Burstcoin"),
      c('DASH', "Dash"),
      c('DOGE', "Dogecoin"),
      c('EMC', "Emercoin"),
      c('ETH', "Ethereum"),
      c('ETC', "Ethereum Classic"),
      c('GRC', "Gridcoin"),
      c('KOI', "Coinye"),
      c('LTC', "Litecoin"),
      c('MSC', "Omni"),
      c('MZC', "MazaCoin"),
      c('NMC', "Namecoin"),
      c('NXT', "Nxt"),
      c('POT', "PotCoin"),
      c('PPC', "Peercoin"),
      c('TIT', "Titcoin"),
      c('VTC', "Vertcoin"),
      c('XDN', "DigitalNote"),
      c('XMR', "Monero"),
      c('XPM', "Primecoin"),
      c('XRP', "Ripple"),
      c('ZEC', "Zcash"),
      c('STC', "SwiftCoin"),
      c('BCN', "Bytecoin"),
      c('FTH', "Feathercoin"),
      c('NEO', "NEO"),
      c('NEM', "XEM"),
      c('USDT', "Tether"),
      c('IOTA', "IOTA"),
      c('DRC', "Decred"),
      c('WAVES', "Waves Platform"),
      c('LSK', "Lisk"),
      c('ZCL', "Zclassic"),
      c('BCH', "Bitcoin Cash"),
      c('UBQ', "Ubiq"),
      c('EOS', "EOS.IO"),
      c('SRN', "Sirin Labs"),
      c('TRX', "TRON"),
      c('ADA', "Cardano")
    )
  ),

  public = list(
    currency = function(){
      return(sample(private$currencies, 1)[[1]])
    },

    currency_code = function(){
      return(sample(private$currencies, 1)[[1]][1])
    },

    currency_name = function(){
      return(sample(private$currencies, 1)[[1]][2])
    },

    cryptocurrency = function(){
      return(sample(private$cryptocurrencies, 1)[[1]])
    },

    cryptocurrency_code = function(){
      return(sample(private$cryptocurrencies, 1)[[1]][1])
    },

    cryptocurrency_name = function(){
      return(sample(private$cryptocurrencies, 1)[[1]][2])
    }
  )
)


## date_time  -----------------------------------------------
date_time_init = R6Class(
  "date_time_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    DAY_NAMES = c(
      "0" = "Sunday",
      "1" = "Monday",
      "2" = "Tuesday",
      "3" = "Wednesday",
      "4" = "Thursday",
      "5" = "Friday",
      "6" = "Saturday"
    ),

    MONTH_NAMES = c(
      "01" = "January",
      "02" = "February",
      "03" = "March",
      "04" = "April",
      "05" = "May",
      "06" = "June",
      "07" = "July",
      "08" = "August",
      "09" = "September",
      "10" = "October",
      "11" = "November",
      "12" = "December"
    ),
    centuries = c(
      'I',
      'II',
      'III',
      'IV',
      'V',
      'VI',
      'VII',
      'VIII',
      'IX',
      'X',
      'XI',
      'XII',
      'XIII',
      'XIV',
      'XV',
      'XVI',
      'XVII',
      'XVIII',
      'XIX',
      'XX',
      'XXI'),

    countries = list(
      list('timezones' = c('Europe/Andorra'),
           'alpha-2-code' = 'AD',
           'alpha-3-code' = 'AND',
           'continent' = 'Europe',
           'name' = 'Andorra',
           'capital' = 'Andorra la Vella'),
      list('timezones' = c('Asia/Kabul'),
           'alpha-2-code' = 'AF',
           'alpha-3-code' = 'AFG',
           'continent' = 'Asia',
           'name' = 'Afghanistan',
           'capital' = 'Kabul'),
      list('timezones' = c('America/Antigua'),
           'alpha-2-code' = 'AG',
           'alpha-3-code' = 'ATG',
           'continent' = 'North America',
           'name' = 'Antigua and Barbuda',
           'capital' = "St. John's"),
      list('timezones' = c('Europe/Tirane'),
           'alpha-2-code' = 'AL',
           'alpha-3-code' = 'ALB',
           'continent' = 'Europe',
           'name' = 'Albania',
           'capital' = 'Tirana'),
      list('timezones' = c('Asia/Yerevan'),
           'alpha-2-code' = 'AM',
           'alpha-3-code' = 'ARM',
           'continent' = 'Asia',
           'name' = 'Armenia',
           'capital' = 'Yerevan'),
      list('timezones' = c('Africa/Luanda'),
           'alpha-2-code' = 'AO',
           'alpha-3-code' = 'AGO',
           'continent' = 'Africa',
           'name' = 'Angola',
           'capital' = 'Luanda'),
      list('timezones' = c('America/Argentina/Buenos_Aires',
                           'America/Argentina/Cordoba',
                           'America/Argentina/Jujuy',
                           'America/Argentina/Tucuman',
                           'America/Argentina/Catamarca',
                           'America/Argentina/La_Rioja',
                           'America/Argentina/San_Juan',
                           'America/Argentina/Mendoza',
                           'America/Argentina/Rio_Gallegos',
                           'America/Argentina/Ushuaia'),
           'alpha-2-code' = 'AR',
           'alpha-3-code' = 'ARG',
           'continent' = 'South America',
           'name' = 'Argentina',
           'capital' = 'Buenos Aires'),
      list('timezones' = c('Europe/Vienna'),
           'alpha-2-code' = 'AT',
           'alpha-3-code' = 'AUT',
           'continent' = 'Europe',
           'name' = 'Austria',
           'capital' = 'Vienna'),
      list('timezones' = c('Australia/Lord_Howe',
                           'Australia/Hobart',
                           'Australia/Currie',
                           'Australia/Melbourne',
                           'Australia/Sydney',
                           'Australia/Broken_Hill',
                           'Australia/Brisbane',
                           'Australia/Lindeman',
                           'Australia/Adelaide',
                           'Australia/Darwin',
                           'Australia/Perth'),
           'alpha-2-code' = 'AU',
           'alpha-3-code' = 'AUS',
           'continent' = 'Oceania',
           'name' = 'Australia',
           'capital' = 'Canberra'),
      list('timezones' = c('Asia/Baku'),
           'alpha-2-code' = 'AZ',
           'alpha-3-code' = 'AZE',
           'continent' = 'Asia',
           'name' = 'Azerbaijan',
           'capital' = 'Baku'),
      list('timezones' = c('America/Barbados'),
           'alpha-2-code' = 'BB',
           'alpha-3-code' = 'BRB',
           'continent' = 'North America',
           'name' = 'Barbados',
           'capital' = 'Bridgetown'),
      list('timezones' = c('Asia/Dhaka'),
           'alpha-2-code' = 'BD',
           'alpha-3-code' = 'BGD',
           'continent' = 'Asia',
           'name' = 'Bangladesh',
           'capital' = 'Dhaka'),
      list('timezones' = c('Europe/Brussels'),
           'alpha-2-code' = 'BE',
           'alpha-3-code' = 'BEL',
           'continent' = 'Europe',
           'name' = 'Belgium',
           'capital' = 'Brussels'),
      list('timezones' = c('Africa/Ouagadougou'),
           'alpha-2-code' = 'BF',
           'alpha-3-code' = 'BFA',
           'continent' = 'Africa',
           'name' = 'Burkina Faso',
           'capital' = 'Ouagadougou'),
      list('timezones' = c('Europe/Sofia'),
           'alpha-2-code' = 'BG',
           'alpha-3-code' = 'BGR',
           'continent' = 'Europe',
           'name' = 'Bulgaria',
           'capital' = 'Sofia'),
      list('timezones' = c('Asia/Bahrain'),
           'alpha-2-code' = 'BH',
           'alpha-3-code' = 'BHR',
           'continent' = 'Asia',
           'name' = 'Bahrain',
           'capital' = 'Manama'),
      list('timezones' = c('Africa/Bujumbura'),
           'alpha-2-code' = 'BI',
           'alpha-3-code' = 'BDI',
           'continent' = 'Africa',
           'name' = 'Burundi',
           'capital' = 'Bujumbura'),
      list('timezones' = c('Africa/Porto-Novo'),
           'alpha-2-code' = 'BJ',
           'alpha-3-code' = 'BEN',
           'continent' = 'Africa',
           'name' = 'Benin',
           'capital' = 'Porto-Novo'),
      list('timezones' = c('Asia/Brunei'),
           'alpha-2-code' = 'BN',
           'alpha-3-code' = 'BRN',
           'continent' = 'Asia',
           'name' = 'Brunei Darussalam',
           'capital' = 'Bandar Seri Begawan'),
      list('timezones' = c('America/La_Paz'),
           'alpha-2-code' = 'BO',
           'alpha-3-code' = 'BOL',
           'continent' = 'South America',
           'name' = 'Bolivia',
           'capital' = 'Sucre'),
      list('timezones' = c('America/Noronha',
                           'America/Belem',
                           'America/Fortaleza',
                           'America/Recife',
                           'America/Araguaina',
                           'America/Maceio',
                           'America/Bahia',
                           'America/Sao_Paulo',
                           'America/Campo_Grande',
                           'America/Cuiaba',
                           'America/Porto_Velho',
                           'America/Boa_Vista',
                           'America/Manaus',
                           'America/Eirunepe',
                           'America/Rio_Branco'),
           'alpha-2-code' = 'BR',
           'alpha-3-code' = 'BRA',
           'continent' = 'South America',
           'name' = 'Brazil',
           'capital' = "Bras\u00edlia"),
      list('timezones' = c('America/Nassau'),
           'alpha-2-code' = 'BS',
           'alpha-3-code' = 'BHS',
           'continent' = 'North America',
           'name' = 'Bahamas',
           'capital' = 'Nassau'),
      list('timezones' = c('Asia/Thimphu'),
           'alpha-2-code' = 'BT',
           'alpha-3-code' = 'BTN',
           'continent' = 'Asia',
           'name' = 'Bhutan',
           'capital' = 'Thimphu'),
      list('timezones' = c('Africa/Gaborone'),
           'alpha-2-code' = 'BW',
           'alpha-3-code' = 'BWA',
           'continent' = 'Africa',
           'name' = 'Botswana',
           'capital' = 'Gaborone'),
      list('timezones' = c('Europe/Minsk'),
           'alpha-2-code' = 'BY',
           'alpha-3-code' = 'BLR',
           'continent' = 'Europe',
           'name' = 'Belarus',
           'capital' = 'Minsk'),
      list('timezones' = c('America/Belize'),
           'alpha-2-code' = 'BZ',
           'alpha-3-code' = 'BLZ',
           'continent' = 'North America',
           'name' = 'Belize',
           'capital' = 'Belmopan'),
      list('timezones' = c('America/St_Johns',
                           'America/Halifax',
                           'America/Glace_Bay',
                           'America/Moncton',
                           'America/Goose_Bay',
                           'America/Blanc-Sablon',
                           'America/Montreal',
                           'America/Toronto',
                           'America/Nipigon',
                           'America/Thunder_Bay',
                           'America/Pangnirtung',
                           'America/Iqaluit',
                           'America/Atikokan',
                           'America/Rankin_Inlet',
                           'America/Winnipeg',
                           'America/Rainy_River',
                           'America/Cambridge_Bay',
                           'America/Regina',
                           'America/Swift_Current',
                           'America/Edmonton',
                           'America/Yellowknife',
                           'America/Inuvik',
                           'America/Dawson_Creek',
                           'America/Vancouver',
                           'America/Whitehorse',
                           'America/Dawson'),
           'alpha-2-code' = 'CA',
           'alpha-3-code' = 'CAN',
           'continent' = 'North America',
           'name' = 'Canada',
           'capital' = 'Ottawa'),
      list('timezones' = c('Africa/Kinshasa',
                           'Africa/Lubumbashi'),
           'alpha-2-code' = 'CD',
           'alpha-3-code' = 'COD',
           'continent' = 'Africa',
           'name' = 'Democratic Republic of the Congo',
           'capital' = 'Kinshasa'),
      list('timezones' = c('Africa/Brazzaville'),
           'alpha-2-code' = 'CG',
           'alpha-3-code' = 'COG',
           'continent' = 'Africa',
           'name' = 'Republic of the Congo',
           'capital' = 'Brazzaville'),
      list('timezones' = c('Africa/Abidjan'),
           'alpha-2-code' = 'CI',
           'alpha-3-code' = 'CIV',
           'continent' = 'Africa',
           'name' = "C\u00f4te d\'Ivoire",
           'capital' = 'Yamoussoukro'),
      list('timezones' = c('America/Santiago',
                           'Pacific/Easter'),
           'alpha-2-code' = 'CL',
           'alpha-3-code' = 'CHL',
           'continent' = 'South America',
           'name' = 'Chile',
           'capital' = 'Santiago'),
      list('timezones' = c('Africa/Douala'),
           'alpha-2-code' = 'CM',
           'alpha-3-code' = 'CMR',
           'continent' = 'Africa',
           'name' = 'Cameroon',
           'capital' = "Yaound\\u00e9"),
      list('timezones' = c('Asia/Shanghai',
                           'Asia/Harbin',
                           'Asia/Chongqing',
                           'Asia/Urumqi',
                           'Asia/Kashgar'),
           'alpha-2-code' = 'CN',
           'alpha-3-code' = 'CHN',
           'continent' = 'Asia',
           'name' = "People's Republic of China",
           'capital' = 'Beijing'),
      list('timezones' = c('America/Bogota'),
           'alpha-2-code' = 'CO',
           'alpha-3-code' = 'COL',
           'continent' = 'South America',
           'name' = 'Colombia',
           'capital' = 'Bogot\u00e1'),
      list('timezones' = c('America/Costa_Rica'),
           'alpha-2-code' = 'CR',
           'alpha-3-code' = 'CRI',
           'continent' = 'North America',
           'name' = 'Costa Rica',
           'capital' = "San Jos\u00e9"),
      list('timezones' = c('America/Havana'),
           'alpha-2-code' = 'CU',
           'alpha-3-code' = 'CUB',
           'continent' = 'North America',
           'name' = 'Cuba',
           'capital' = 'Havana'),
      list('timezones' = c('Atlantic/Cape_Verde'),
           'alpha-2-code' = 'CV',
           'alpha-3-code' = 'CPV',
           'continent' = 'Africa',
           'name' = 'Cape Verde',
           'capital' = 'Praia'),
      list('timezones' = c('Asia/Nicosia'),
           'alpha-2-code' = 'CY',
           'alpha-3-code' = 'CYP',
           'continent' = 'Asia',
           'name' = 'Cyprus',
           'capital' = 'Nicosia'),
      list('timezones' = c('Europe/Prague'),
           'alpha-2-code' = 'CZ',
           'alpha-3-code' = 'CZE',
           'continent' = 'Europe',
           'name' = 'Czech Republic',
           'capital' = 'Prague'),
      list('timezones' = c('Europe/Berlin'),
           'alpha-2-code' = 'DE',
           'alpha-3-code' = 'DEU',
           'continent' = 'Europe',
           'name' = 'Germany',
           'capital' = 'Berlin'),
      list('timezones' = c('Africa/Djibouti'),
           'alpha-2-code' = 'DJ',
           'alpha-3-code' = 'DJI',
           'continent' = 'Africa',
           'name' = 'Djibouti',
           'capital' = 'Djibouti City'),
      list('timezones' = c('Europe/Copenhagen'),
           'alpha-2-code' = 'DK',
           'alpha-3-code' = 'DNK',
           'continent' = 'Europe',
           'name' = 'Denmark',
           'capital' = 'Copenhagen'),
      list('timezones' = c('America/Dominica'),
           'alpha-2-code' = 'DM',
           'alpha-3-code' = 'DMA',
           'continent' = 'North America',
           'name' = 'Dominica',
           'capital' = 'Roseau'),
      list('timezones' = c('America/Santo_Domingo'),
           'alpha-2-code' = 'DO',
           'alpha-3-code' = 'DOM',
           'continent' = 'North America',
           'name' = 'Dominican Republic',
           'capital' = 'Santo Domingo'),
      list('timezones' = c('America/Guayaquil',
                           'Pacific/Galapagos'),
           'alpha-2-code' = 'EC',
           'alpha-3-code' = 'ECU',
           'continent' = 'South America',
           'name' = 'Ecuador',
           'capital' = 'Quito'),
      list('timezones' = c('Europe/Tallinn'),
           'alpha-2-code' = 'EE',
           'alpha-3-code' = 'EST',
           'continent' = 'Europe',
           'name' = 'Estonia',
           'capital' = 'Tallinn'),
      list('timezones' = c('Africa/Cairo'),
           'alpha-2-code' = 'EG',
           'alpha-3-code' = 'EGY',
           'continent' = 'Africa',
           'name' = 'Egypt',
           'capital' = 'Cairo'),
      list('timezones' = c('Africa/Asmera'),
           'alpha-2-code' = 'ER',
           'alpha-3-code' = 'ERI',
           'continent' = 'Africa',
           'name' = 'Eritrea',
           'capital' = 'Asmara'),
      list('timezones' = c('Africa/Addis_Ababa'),
           'alpha-2-code' = 'ET',
           'alpha-3-code' = 'ETH',
           'continent' = 'Africa',
           'name' = 'Ethiopia',
           'capital' = 'Addis Ababa'),
      list('timezones' = c('Europe/Helsinki'),
           'alpha-2-code' = 'FI',
           'alpha-3-code' = 'FIN',
           'continent' = 'Europe',
           'name' = 'Finland',
           'capital' = 'Helsinki'),
      list('timezones' = c('Pacific/Fiji'),
           'alpha-2-code' = 'FJ',
           'alpha-3-code' = 'FJI',
           'continent' = 'Oceania',
           'name' = 'Fiji',
           'capital' = 'Suva'),
      list('timezones' = c('Europe/Paris'),
           'alpha-2-code' = 'FR',
           'alpha-3-code' = 'FRA',
           'continent' = 'Europe',
           'name' = 'France',
           'capital' = 'Paris'),
      list('timezones' = c('Africa/Libreville'),
           'alpha-2-code' = 'GA',
           'alpha-3-code' = 'GAB',
           'continent' = 'Africa',
           'name' = 'Gabon',
           'capital' = 'Libreville'),
      list('timezones' = c('Asia/Tbilisi'),
           'alpha-2-code' = 'GE',
           'alpha-3-code' = 'GEO',
           'continent' = 'Asia',
           'name' = 'Georgia',
           'capital' = 'Tbilisi'),
      list('timezones' = c('Africa/Accra'),
           'alpha-2-code' = 'GH',
           'alpha-3-code' = 'GHA',
           'continent' = 'Africa',
           'name' = 'Ghana',
           'capital' = 'Accra'),
      list('timezones' = c('Africa/Banjul'),
           'alpha-2-code' = 'GM',
           'alpha-3-code' = 'GMB',
           'continent' = 'Africa',
           'name' = 'The Gambia',
           'capital' = 'Banjul'),
      list('timezones' = c('Africa/Conakry'),
           'alpha-2-code' = 'GN',
           'alpha-3-code' = 'GIN',
           'continent' = 'Africa',
           'name' = 'Guinea',
           'capital' = 'Conakry'),
      list('timezones' = c('Europe/Athens'),
           'alpha-2-code' = 'GR',
           'alpha-3-code' = 'GRC',
           'continent' = 'Europe',
           'name' = 'Greece',
           'capital' = 'Athens'),
      list('timezones' = c('America/Guatemala'),
           'alpha-2-code' = 'GT',
           'alpha-3-code' = 'GTM',
           'continent' = 'North America',
           'name' = 'Guatemala',
           'capital' = 'Guatemala City'),
      list('timezones' = c('America/Guatemala'),
           'alpha-2-code' = 'HT',
           'alpha-3-code' = 'HTI',
           'continent' = 'North America',
           'name' = 'Haiti',
           'capital' = 'Port-au-Prince'),
      list('timezones' = c('Africa/Bissau'),
           'alpha-2-code' = 'GW',
           'alpha-3-code' = 'GNB',
           'continent' = 'Africa',
           'name' = 'Guinea-Bissau',
           'capital' = 'Bissau'),
      list('timezones' = c('America/Guyana'),
           'alpha-2-code' = 'GY',
           'alpha-3-code' = 'GUY',
           'continent' = 'South America',
           'name' = 'Guyana',
           'capital' = 'Georgetown'),
      list('timezones' = c('America/Tegucigalpa'),
           'alpha-2-code' = 'HN',
           'alpha-3-code' = 'HND',
           'continent' = 'North America',
           'name' = 'Honduras',
           'capital' = 'Tegucigalpa'),
      list('timezones' = c('Europe/Budapest'),
           'alpha-2-code' = 'HU',
           'alpha-3-code' = 'HUN',
           'continent' = 'Europe',
           'name' = 'Hungary',
           'capital' = 'Budapest'),
      list('timezones' = c('Asia/Jakarta',
                           'Asia/Pontianak',
                           'Asia/Makassar',
                           'Asia/Jayapura'),
           'alpha-2-code' = 'ID',
           'alpha-3-code' = 'IDN',
           'continent' = 'Asia',
           'name' = 'Indonesia',
           'capital' = 'Jakarta'),
      list('timezones' = c('Europe/Dublin'),
           'alpha-2-code' = 'IE',
           'alpha-3-code' = 'IRL',
           'continent' = 'Europe',
           'name' = 'Republic of Ireland',
           'capital' = 'Dublin'),
      list('timezones' = c('Asia/Jerusalem'),
           'alpha-2-code' = 'IL',
           'alpha-3-code' = 'ISR',
           'continent' = 'Asia',
           'name' = 'Israel',
           'capital' = 'Jerusalem'),
      list('timezones' = c('Asia/Calcutta'),
           'alpha-2-code' = 'IN',
           'alpha-3-code' = 'IND',
           'continent' = 'Asia',
           'name' = 'India',
           'capital' = 'New Delhi'),
      list('timezones' = c('Asia/Baghdad'),
           'alpha-2-code' = 'IQ',
           'alpha-3-code' = 'IRQ',
           'continent' = 'Asia',
           'name' = 'Iraq',
           'capital' = 'Baghdad'),
      list('timezones' = c('Asia/Tehran'),
           'alpha-2-code' = 'IR',
           'alpha-3-code' = 'IRN',
           'continent' = 'Asia',
           'name' = 'Iran',
           'capital' = 'Tehran'),
      list('timezones' = c('Atlantic/Reykjavik'),
           'alpha-2-code' = 'IS',
           'alpha-3-code' = 'ISL',
           'continent' = 'Europe',
           'name' = 'Iceland',
           'capital' = "Reykjav\u00edk"),
      list('timezones' = c('Europe/Rome'),
           'alpha-2-code' = 'IT',
           'alpha-3-code' = 'ITA',
           'continent' = 'Europe',
           'name' = 'Italy',
           'capital' = 'Rome'),
      list('timezones' = c('America/Jamaica'),
           'alpha-2-code' = 'JM',
           'alpha-3-code' = 'JAM',
           'continent' = 'North America',
           'name' = 'Jamaica',
           'capital' = 'Kingston'),
      list('timezones' = c('Asia/Amman'),
           'alpha-2-code' = 'JO',
           'alpha-3-code' = 'JOR',
           'continent' = 'Asia',
           'name' = 'Jordan',
           'capital' = 'Amman'),
      list('timezones' = c('Asia/Tokyo'),
           'alpha-2-code' = 'JP',
           'alpha-3-code' = 'JPN',
           'continent' = 'Asia',
           'name' = 'Japan',
           'capital' = 'Tokyo'),
      list('timezones' = c('Africa/Nairobi'),
           'alpha-2-code' = 'KE',
           'alpha-3-code' = 'KEN',
           'continent' = 'Africa',
           'name' = 'Kenya',
           'capital' = 'Nairobi'),
      list('timezones' = c('Asia/Bishkek'),
           'alpha-2-code' = 'KG',
           'alpha-3-code' = 'KGZ',
           'continent' = 'Asia',
           'name' = 'Kyrgyzstan',
           'capital' = 'Bishkek'),
      list('timezones' = c('Pacific/Tarawa',
                           'Pacific/Enderbury',
                           'Pacific/Kiritimati'),
           'alpha-2-code' = 'KI',
           'alpha-3-code' = 'KIR',
           'continent' = 'Oceania',
           'name' = 'Kiribati',
           'capital' = 'Tarawa'),
      list('timezones' = c('Asia/Pyongyang'),
           'alpha-2-code' = 'KP',
           'alpha-3-code' = 'PRK',
           'continent' = 'Asia',
           'name' = 'North Korea',
           'capital' = 'Pyongyang'),
      list('timezones' = c('Asia/Seoul'),
           'alpha-2-code' = 'KR',
           'alpha-3-code' = 'KOR',
           'continent' = 'Asia',
           'name' = 'South Korea',
           'capital' = 'Seoul'),
      list('timezones' = c('Asia/Kuwait'),
           'alpha-2-code' = 'KW',
           'alpha-3-code' = 'KWT',
           'continent' = 'Asia',
           'name' = 'Kuwait',
           'capital' = 'Kuwait City'),
      list('timezones' = c('Asia/Beirut'),
           'alpha-2-code' = 'LB',
           'alpha-3-code' = 'LBN',
           'continent' = 'Asia',
           'name' = 'Lebanon',
           'capital' = 'Beirut'),
      list('timezones' = c('Europe/Vaduz'),
           'alpha-2-code' = 'LI',
           'alpha-3-code' = 'LIE',
           'continent' = 'Europe',
           'name' = 'Liechtenstein',
           'capital' = 'Vaduz'),
      list('timezones' = c('Africa/Monrovia'),
           'alpha-2-code' = 'LR',
           'alpha-3-code' = 'LBR',
           'continent' = 'Africa',
           'name' = 'Liberia',
           'capital' = 'Monrovia'),
      list('timezones' = c('Africa/Maseru'),
           'alpha-2-code' = 'LS',
           'alpha-3-code' = 'LSO',
           'continent' = 'Africa',
           'name' = 'Lesotho',
           'capital' = 'Maseru'),
      list('timezones' = c('Europe/Vilnius'),
           'alpha-2-code' = 'LT',
           'alpha-3-code' = 'LTU',
           'continent' = 'Europe',
           'name' = 'Lithuania',
           'capital' = 'Vilnius'),
      list('timezones' = c('Europe/Luxembourg'),
           'alpha-2-code' = 'LU',
           'alpha-3-code' = 'LUX',
           'continent' = 'Europe',
           'name' = 'Luxembourg',
           'capital' = 'Luxembourg City'),
      list('timezones' = c('Europe/Riga'),
           'alpha-2-code' = 'LV',
           'alpha-3-code' = 'LVA',
           'continent' = 'Europe',
           'name' = 'Latvia',
           'capital' = 'Riga'),
      list('timezones' = c('Africa/Tripoli'),
           'alpha-2-code' = 'LY',
           'alpha-3-code' = 'LBY',
           'continent' = 'Africa',
           'name' = 'Libya',
           'capital' = 'Tripoli'),
      list('timezones' = c('Indian/Antananarivo'),
           'alpha-2-code' = 'MG',
           'alpha-3-code' = 'MDG',
           'continent' = 'Africa',
           'name' = 'Madagascar',
           'capital' = 'Antananarivo'),
      list('timezones' = c('Pacific/Majuro',
                           'Pacific/Kwajalein'),
           'alpha-2-code' = 'MH',
           'alpha-3-code' = 'MHL',
           'continent' = 'Oceania',
           'name' = 'Marshall Islands',
           'capital' = 'Majuro'),
      list('timezones' = c('Europe/Skopje'),
           'alpha-2-code' = 'MK',
           'alpha-3-code' = 'MKD',
           'continent' = 'Europe',
           'name' = 'Macedonia',
           'capital' = 'Skopje'),
      list('timezones' = c('Africa/Bamako'),
           'alpha-2-code' = 'ML',
           'alpha-3-code' = 'MLI',
           'continent' = 'Africa',
           'name' = 'Mali',
           'capital' = 'Bamako'),
      list('timezones' = c('Asia/Rangoon'),
           'alpha-2-code' = 'MM',
           'alpha-3-code' = 'MMR',
           'continent' = 'Asia',
           'name' = 'Myanmar',
           'capital' = 'Naypyidaw'),
      list('timezones' = c('Asia/Ulaanbaatar',
                           'Asia/Hovd',
                           'Asia/Choibalsan'),
           'alpha-2-code' = 'MN',
           'alpha-3-code' = 'MNG',
           'continent' = 'Asia',
           'name' = 'Mongolia',
           'capital' = 'Ulaanbaatar'),
      list('timezones' = c('Africa/Nouakchott'),
           'alpha-2-code' = 'MR',
           'alpha-3-code' = 'MRT',
           'continent' = 'Africa',
           'name' = 'Mauritania',
           'capital' = 'Nouakchott'),
      list('timezones' = c('Europe/Malta'),
           'alpha-2-code' = 'MT',
           'alpha-3-code' = 'MLT',
           'continent' = 'Europe',
           'name' = 'Malta',
           'capital' = 'Valletta'),
      list('timezones' = c('Indian/Mauritius'),
           'alpha-2-code' = 'MU',
           'alpha-3-code' = 'MUS',
           'continent' = 'Africa',
           'name' = 'Mauritius',
           'capital' = 'Port Louis'),
      list('timezones' = c('Indian/Maldives'),
           'alpha-2-code' = 'MV',
           'alpha-3-code' = 'MDV',
           'continent' = 'Asia',
           'name' = 'Maldives',
           'capital' = "Mal\u00e9"),
      list('timezones' = c('Africa/Blantyre'),
           'alpha-2-code' = 'MW',
           'alpha-3-code' = 'MWI',
           'continent' = 'Africa',
           'name' = 'Malawi',
           'capital' = 'Lilongwe'),
      list('timezones' = c('America/Mexico_City',
                           'America/Cancun',
                           'America/Merida',
                           'America/Monterrey',
                           'America/Mazatlan',
                           'America/Chihuahua',
                           'America/Hermosillo',
                           'America/Tijuana'),
           'alpha-2-code' = 'MX',
           'alpha-3-code' = 'MEX',
           'continent' = 'North America',
           'name' = 'Mexico',
           'capital' = 'Mexico City'),
      list('timezones' = c('Asia/Kuala_Lumpur',
                           'Asia/Kuching'),
           'alpha-2-code' = 'MY',
           'alpha-3-code' = 'MYS',
           'continent' = 'Asia',
           'name' = 'Malaysia',
           'capital' = 'Kuala Lumpur'),
      list('timezones' = c('Africa/Maputo'),
           'alpha-2-code' = 'MZ',
           'alpha-3-code' = 'MOZ',
           'continent' = 'Africa',
           'name' = 'Mozambique',
           'capital' = 'Maputo'),
      list('timezones' = c('Africa/Windhoek'),
           'alpha-2-code' = 'NA',
           'alpha-3-code' = 'NAM',
           'continent' = 'Africa',
           'name' = 'Namibia',
           'capital' = 'Windhoek'),
      list('timezones' = c('Africa/Niamey'),
           'alpha-2-code' = 'NE',
           'alpha-3-code' = 'NER',
           'continent' = 'Africa',
           'name' = 'Niger',
           'capital' = 'Niamey'),
      list('timezones' = c('Africa/Lagos'),
           'alpha-2-code' = 'NG',
           'alpha-3-code' = 'NGA',
           'continent' = 'Africa',
           'name' = 'Nigeria',
           'capital' = 'Abuja'),
      list('timezones' = c('America/Managua'),
           'alpha-2-code' = 'NI',
           'alpha-3-code' = 'NIC',
           'continent' = 'North America',
           'name' = 'Nicaragua',
           'capital' = 'Managua'),
      list('timezones' = c('Europe/Amsterdam'),
           'alpha-2-code' = 'NL',
           'alpha-3-code' = 'NLD',
           'continent' = 'Europe',
           'name' = 'Kingdom of the Netherlands',
           'capital' = 'Amsterdam'),
      list('timezones' = c('Europe/Oslo'),
           'alpha-2-code' = 'NO',
           'alpha-3-code' = 'NOR',
           'continent' = 'Europe',
           'name' = 'Norway',
           'capital' = 'Oslo'),
      list('timezones' = c('Asia/Katmandu'),
           'alpha-2-code' = 'NP',
           'alpha-3-code' = 'NPL',
           'continent' = 'Asia',
           'name' = 'Nepal',
           'capital' = 'Kathmandu'),
      list('timezones' = c('Pacific/Nauru'),
           'alpha-2-code' = 'NR',
           'alpha-3-code' = 'NRU',
           'continent' = 'Oceania',
           'name' = 'Nauru',
           'capital' = 'Yaren'),
      list('timezones' = c('Pacific/Auckland',
                           'Pacific/Chatham'),
           'alpha-2-code' = 'NZ',
           'alpha-3-code' = 'NZL',
           'continent' = 'Oceania',
           'name' = 'New Zealand',
           'capital' = 'Wellington'),
      list('timezones' = c('Asia/Muscat'),
           'alpha-2-code' = 'OM',
           'alpha-3-code' = 'OMN',
           'continent' = 'Asia',
           'name' = 'Oman',
           'capital' = 'Muscat'),
      list('timezones' = c('America/Panama'),
           'alpha-2-code' = 'PA',
           'alpha-3-code' = 'PAN',
           'continent' = 'North America',
           'name' = 'Panama',
           'capital' = 'Panama City'),
      list('timezones' = c('America/Lima'),
           'alpha-2-code' = 'PE',
           'alpha-3-code' = 'PER',
           'continent' = 'South America',
           'name' = 'Peru',
           'capital' = 'Lima'),
      list('timezones' = c('Pacific/Port_Moresby'),
           'alpha-2-code' = 'PG',
           'alpha-3-code' = 'PNG',
           'continent' = 'Oceania',
           'name' = 'Papua New Guinea',
           'capital' = 'Port Moresby'),
      list('timezones' = c('Asia/Manila'),
           'alpha-2-code' = 'PH',
           'alpha-3-code' = 'PHL',
           'continent' = 'Asia',
           'name' = 'Philippines',
           'capital' = 'Manila'),
      list('timezones' = c('Asia/Karachi'),
           'alpha-2-code' = 'PK',
           'alpha-3-code' = 'PAK',
           'continent' = 'Asia',
           'name' = 'Pakistan',
           'capital' = 'Islamabad'),
      list('timezones' = c('Europe/Warsaw'),
           'alpha-2-code' = 'PL',
           'alpha-3-code' = 'POL',
           'continent' = 'Europe',
           'name' = 'Poland',
           'capital' = 'Warsaw'),
      list('timezones' = c('Europe/Lisbon',
                           'Atlantic/Madeira',
                           'Atlantic/Azores'),
           'alpha-2-code' = 'PT',
           'alpha-3-code' = 'PRT',
           'continent' = 'Europe',
           'name' = 'Portugal',
           'capital' = 'Lisbon'),
      list('timezones' = c('Pacific/Palau'),
           'alpha-2-code' = 'PW',
           'alpha-3-code' = 'PLW',
           'continent' = 'Oceania',
           'name' = 'Palau',
           'capital' = 'Ngerulmud'),
      list('timezones' = c('America/Asuncion'),
           'alpha-2-code' = 'PY',
           'alpha-3-code' = 'PRY',
           'continent' = 'South America',
           'name' = 'Paraguay',
           'capital' = "Asunci\u00f3n"),
      list('timezones' = c('Asia/Qatar'),
           'alpha-2-code' = 'QA',
           'alpha-3-code' = 'QAT',
           'continent' = 'Asia',
           'name' = 'Qatar',
           'capital' = 'Doha'),
      list('timezones' = c('Europe/Bucharest'),
           'alpha-2-code' = 'RO',
           'alpha-3-code' = 'ROU',
           'continent' = 'Europe',
           'name' = 'Romania',
           'capital' = 'Bucharest'),
      list('timezones' = c('Europe/Kaliningrad',
                           'Europe/Moscow',
                           'Europe/Volgograd',
                           'Europe/Samara',
                           'Asia/Yekaterinburg',
                           'Asia/Omsk',
                           'Asia/Novosibirsk',
                           'Asia/Krasnoyarsk',
                           'Asia/Irkutsk',
                           'Asia/Yakutsk',
                           'Asia/Vladivostok',
                           'Asia/Sakhalin',
                           'Asia/Magadan',
                           'Asia/Kamchatka',
                           'Asia/Anadyr'),
           'alpha-2-code' = 'RU',
           'alpha-3-code' = 'RUS',
           'continent' = 'Europe',
           'name' = 'Russia',
           'capital' = 'Moscow'),
      list('timezones' = c('Africa/Kigali'),
           'alpha-2-code' = 'RW',
           'alpha-3-code' = 'RWA',
           'continent' = 'Africa',
           'name' = 'Rwanda',
           'capital' = 'Kigali'),
      list('timezones' = c('Asia/Riyadh'),
           'alpha-2-code' = 'SA',
           'alpha-3-code' = 'SAU',
           'continent' = 'Asia',
           'name' = 'Saudi Arabia',
           'capital' = 'Riyadh'),
      list('timezones' = c('Pacific/Guadalcanal'),
           'alpha-2-code' = 'SB',
           'alpha-3-code' = 'SLB',
           'continent' = 'Oceania',
           'name' = 'Solomon Islands',
           'capital' = 'Honiara'),
      list('timezones' = c('Indian/Mahe'),
           'alpha-2-code' = 'SC',
           'alpha-3-code' = 'SYC',
           'continent' = 'Africa',
           'name' = 'Seychelles',
           'capital' = 'Victoria'),
      list('timezones' = c('Africa/Khartoum'),
           'alpha-2-code' = 'SD',
           'alpha-3-code' = 'SDN',
           'continent' = 'Africa',
           'name' = 'Sudan',
           'capital' = 'Khartoum'),
      list('timezones' = c('Europe/Stockholm'),
           'alpha-2-code' = 'SE',
           'alpha-3-code' = 'SWE',
           'continent' = 'Europe',
           'name' = 'Sweden',
           'capital' = 'Stockholm'),
      list('timezones' = c('Asia/Singapore'),
           'alpha-2-code' = 'SG',
           'alpha-3-code' = 'SGP',
           'continent' = 'Asia',
           'name' = 'Singapore',
           'capital' = 'Singapore'),
      list('timezones' = c('Europe/Ljubljana'),
           'alpha-2-code' = 'SI',
           'alpha-3-code' = 'SVN',
           'continent' = 'Europe',
           'name' = 'Slovenia',
           'capital' = 'Ljubljana'),
      list('timezones' = c('Europe/Bratislava'),
           'alpha-2-code' = 'SK',
           'alpha-3-code' = 'SVK',
           'continent' = 'Europe',
           'name' = 'Slovakia',
           'capital' = 'Bratislava'),
      list('timezones' = c('Africa/Freetown'),
           'alpha-2-code' = 'SL',
           'alpha-3-code' = 'SLE',
           'continent' = 'Africa',
           'name' = 'Sierra Leone',
           'capital' = 'Freetown'),
      list('timezones' = c('Europe/San_Marino'),
           'alpha-2-code' = 'SM',
           'alpha-3-code' = 'SMR',
           'continent' = 'Europe',
           'name' = 'San Marino',
           'capital' = 'San Marino'),
      list('timezones' = c('Africa/Dakar'),
           'alpha-2-code' = 'SN',
           'alpha-3-code' = 'SEN',
           'continent' = 'Africa',
           'name' = 'Senegal',
           'capital' = 'Dakar'),
      list('timezones' = c('Africa/Mogadishu'),
           'alpha-2-code' = 'SO',
           'alpha-3-code' = 'SOM',
           'continent' = 'Africa',
           'name' = 'Somalia',
           'capital' = 'Mogadishu'),
      list('timezones' = c('America/Paramaribo'),
           'alpha-2-code' = 'SR',
           'alpha-3-code' = 'SUR',
           'continent' = 'South America',
           'name' = 'Suriname',
           'capital' = 'Paramaribo'),
      list('timezones' = c('Africa/Sao_Tome'),
           'alpha-2-code' = 'ST',
           'alpha-3-code' = 'STP',
           'continent' = 'Africa',
           'name' = "S\u00e3o Tom\u00e9 and Pr\u00edncipe",
           'capital' = "S\u00e3o Tom\u00e9"),
      list('timezones' = c('Asia/Damascus'),
           'alpha-2-code' = 'SY',
           'alpha-3-code' = 'SYR',
           'continent' = 'Asia',
           'name' = 'Syria',
           'capital' = 'Damascus'),
      list('timezones' = c('Africa/Lome'),
           'alpha-2-code' = 'TG',
           'alpha-3-code' = 'TGO',
           'continent' = 'Africa',
           'name' = 'Togo',
           'capital' = 'Lom\u00e9'),
      list('timezones' = c('Asia/Bangkok'),
           'alpha-2-code' = 'TH',
           'alpha-3-code' = 'THA',
           'continent' = 'Asia',
           'name' = 'Thailand',
           'capital' = 'Bangkok'),
      list('timezones' = c('Asia/Dushanbe'),
           'alpha-2-code' = 'TJ',
           'alpha-3-code' = 'TJK',
           'continent' = 'Asia',
           'name' = 'Tajikistan',
           'capital' = 'Dushanbe'),
      list('timezones' = c('Asia/Ashgabat'),
           'alpha-2-code' = 'TM',
           'alpha-3-code' = 'TKM',
           'continent' = 'Asia',
           'name' = 'Turkmenistan',
           'capital' = 'Ashgabat'),
      list('timezones' = c('Africa/Tunis'),
           'alpha-2-code' = 'TN',
           'alpha-3-code' = 'TUN',
           'continent' = 'Africa',
           'name' = 'Tunisia',
           'capital' = 'Tunis'),
      list('timezones' = c('Pacific/Tongatapu'),
           'alpha-2-code' = 'TO',
           'alpha-3-code' = 'TON',
           'continent' = 'Oceania',
           'name' = 'Tonga',
           'capital' = "Nuku\u02bbalofa"),
      list('timezones' = c('Europe/Istanbul'),
           'alpha-2-code' = 'TR',
           'alpha-3-code' = 'TUR',
           'continent' = 'Asia',
           'name' = 'Turkey',
           'capital' = 'Ankara'),
      list('timezones' = c('America/Port_of_Spain'),
           'alpha-2-code' = 'TT',
           'alpha-3-code' = 'TTO',
           'continent' = 'North America',
           'name' = 'Trinidad and Tobago',
           'capital' = 'Port of Spain'),
      list('timezones' = c('Pacific/Funafuti'),
           'alpha-2-code' = 'TV',
           'alpha-3-code' = 'TUV',
           'continent' = 'Oceania',
           'name' = 'Tuvalu',
           'capital' = 'Funafuti'),
      list('timezones' = c('Africa/Dar_es_Salaam'),
           'alpha-2-code' = 'TZ',
           'alpha-3-code' = 'TZA',
           'continent' = 'Africa',
           'name' = 'Tanzania',
           'capital' = 'Dodoma'),
      list('timezones' = c('Europe/Kiev',
                           'Europe/Uzhgorod',
                           'Europe/Zaporozhye',
                           'Europe/Simferopol'),
           'alpha-2-code' = 'UA',
           'alpha-3-code' = 'UKR',
           'continent' = 'Europe',
           'name' = 'Ukraine',
           'capital' = 'Kiev'),
      list('timezones' = c('Africa/Kampala'),
           'alpha-2-code' = 'UG',
           'alpha-3-code' = 'UGA',
           'continent' = 'Africa',
           'name' = 'Uganda',
           'capital' = 'Kampala'),
      list('timezones' = c('America/New_York',
                           'America/Detroit',
                           'America/Kentucky/Louisville',
                           'America/Kentucky/Monticello',
                           'America/Indiana/Indianapolis',
                           'America/Indiana/Marengo',
                           'America/Indiana/Knox',
                           'America/Indiana/Vevay',
                           'America/Chicago',
                           'America/Indiana/Vincennes',
                           'America/Indiana/Petersburg',
                           'America/Menominee',
                           'America/North_Dakota/Center',
                           'America/North_Dakota/New_Salem',
                           'America/Denver',
                           'America/Boise',
                           'America/Shiprock',
                           'America/Phoenix',
                           'America/Los_Angeles',
                           'America/Anchorage',
                           'America/Juneau',
                           'America/Yakutat',
                           'America/Nome',
                           'America/Adak',
                           'Pacific/Honolulu'),
           'alpha-2-code' = 'US',
           'alpha-3-code' = 'USA',
           'continent' = 'North America',
           'name' = 'United States',
           'capital' = 'Washington, D.C.'),
      list('timezones' = c('America/Montevideo'),
           'alpha-2-code' = 'UY',
           'alpha-3-code' = 'URY',
           'continent' = 'South America',
           'name' = 'Uruguay',
           'capital' = 'Montevideo'),
      list('timezones' = c('Asia/Samarkand',
                           'Asia/Tashkent'),
           'alpha-2-code' = 'UZ',
           'alpha-3-code' = 'UZB',
           'continent' = 'Asia',
           'name' = 'Uzbekistan',
           'capital' = 'Tashkent'),
      list('timezones' = c('Europe/Vatican'),
           'alpha-2-code' = 'VA',
           'alpha-3-code' = 'VAT',
           'continent' = 'Europe',
           'name' = 'Vatican City',
           'capital' = 'Vatican City'),
      list('timezones' = c('America/Caracas'),
           'alpha-2-code' = 'VE',
           'alpha-3-code' = 'VEN',
           'continent' = 'South America',
           'name' = 'Venezuela',
           'capital' = 'Caracas'),
      list('timezones' = c('Asia/Saigon'),
           'alpha-2-code' = 'VN',
           'alpha-3-code' = 'VNM',
           'continent' = 'Asia',
           'name' = 'Vietnam',
           'capital' = 'Hanoi'),
      list('timezones' = c('Pacific/Efate'),
           'alpha-2-code' = 'VU',
           'alpha-3-code' = 'VUT',
           'continent' = 'Oceania',
           'name' = 'Vanuatu',
           'capital' = 'Port Vila'),
      list('timezones' = c('Asia/Aden'),
           'alpha-2-code' = 'YE',
           'alpha-3-code' = 'YEM',
           'continent' = 'Asia',
           'name' = 'Yemen',
           'capital' = "Sana'a"),
      list('timezones' = c('Africa/Lusaka'),
           'alpha-2-code' = 'ZM',
           'alpha-3-code' = 'ZMB',
           'continent' = 'Africa',
           'name' = 'Zambia',
           'capital' = 'Lusaka'),
      list('timezones' = c('Africa/Harare'),
           'alpha-2-code' = 'ZW',
           'alpha-3-code' = 'ZWE',
           'continent' = 'Africa',
           'name' = 'Zimbabwe',
           'capital' = 'Harare'),
      list('timezones' = c('Africa/Algiers'),
           'alpha-2-code' = 'DZ',
           'alpha-3-code' = 'DZA',
           'continent' = 'Africa',
           'name' = 'Algeria',
           'capital' = 'Algiers'),
      list('timezones' = c('Europe/Sarajevo'),
           'alpha-2-code' = 'BA',
           'alpha-3-code' = 'BIH',
           'continent' = 'Europe',
           'name' = 'Bosnia and Herzegovina',
           'capital' = 'Sarajevo'),
      list('timezones' = c('Asia/Phnom_Penh'),
           'alpha-2-code' = 'KH',
           'alpha-3-code' = 'KHM',
           'continent' = 'Asia',
           'name' = 'Cambodia',
           'capital' = 'Phnom Penh'),
      list('timezones' = c('Africa/Bangui'),
           'alpha-2-code' = 'CF',
           'alpha-3-code' = 'CAF',
           'continent' = 'Africa',
           'name' = 'Central African Republic',
           'capital' = 'Bangui'),
      list('timezones' = c('Africa/Ndjamena'),
           'alpha-2-code' = 'TD',
           'alpha-3-code' = 'TCD',
           'continent' = 'Africa',
           'name' = 'Chad',
           'capital' = "N'Djamena"),
      list('timezones' = c('Indian/Comoro'),
           'alpha-2-code' = 'KM',
           'alpha-3-code' = 'COM',
           'continent' = 'Africa',
           'name' = 'Comoros',
           'capital' = 'Moroni'),
      list('timezones' = c('Europe/Zagreb'),
           'alpha-2-code' = 'HR',
           'alpha-3-code' = 'HRV',
           'continent' = 'Europe',
           'name' = 'Croatia',
           'capital' = 'Zagreb'),
      list('timezones' = c('Asia/Dili'),
           'alpha-2-code' = 'TL',
           'alpha-3-code' = 'TLS',
           'continent' = 'Asia',
           'name' = 'East Timor',
           'capital' = 'Dili'),
      list('timezones' = c('America/El_Salvador'),
           'alpha-2-code' = 'SV',
           'alpha-3-code' = 'SLV',
           'continent' = 'North America',
           'name' = 'El Salvador',
           'capital' = 'San Salvador'),
      list('timezones' = c('Africa/Malabo'),
           'alpha-2-code' = 'GQ',
           'alpha-3-code' = 'GNQ',
           'continent' = 'Africa',
           'name' = 'Equatorial Guinea',
           'capital' = 'Malabo'),
      list('timezones' = c('America/Grenada'),
           'alpha-2-code' = 'GD',
           'alpha-3-code' = 'GRD',
           'continent' = 'North America',
           'name' = 'Grenada',
           'capital' = "St. George's"),
      list('timezones' = c('Asia/Almaty',
                           'Asia/Qyzylorda',
                           'Asia/Aqtobe',
                           'Asia/Aqtau',
                           'Asia/Oral'),
           'alpha-2-code' = 'KZ',
           'alpha-3-code' = 'KAZ',
           'continent' = 'Asia',
           'name' = 'Kazakhstan',
           'capital' = 'Astana'),
      list('timezones' = c('Asia/Vientiane'),
           'alpha-2-code' = 'LA',
           'alpha-3-code' = 'LAO',
           'continent' = 'Asia',
           'name' = 'Laos',
           'capital' = 'Vientiane'),
      list('timezones' = c('Pacific/Truk',
                           'Pacific/Ponape',
                           'Pacific/Kosrae'),
           'alpha-2-code' = 'FM',
           'alpha-3-code' = 'FSM',
           'continent' = 'Oceania',
           'name' = 'Federated States of Micronesia',
           'capital' = 'Palikir'),
      list('timezones' = c('Europe/Chisinau'),
           'alpha-2-code' = 'MD',
           'alpha-3-code' = 'MDA',
           'continent' = 'Europe',
           'name' = 'Moldova',
           'capital' = "Chi\u015fin\u0103u"),
      list('timezones' = c('Europe/Monaco'),
           'alpha-2-code' = 'MC',
           'alpha-3-code' = 'MCO',
           'continent' = 'Europe',
           'name' = 'Monaco',
           'capital' = 'Monaco'),
      list('timezones' = c('Europe/Podgorica'),
           'alpha-2-code' = 'ME',
           'alpha-3-code' = 'MNE',
           'continent' = 'Europe',
           'name' = 'Montenegro',
           'capital' = 'Podgorica'),
      list('timezones' = c('Africa/Casablanca'),
           'alpha-2-code' = 'MA',
           'alpha-3-code' = 'MAR',
           'continent' = 'Africa',
           'name' = 'Morocco',
           'capital' = 'Rabat'),
      list('timezones' = c('America/St_Kitts'),
           'alpha-2-code' = 'KN',
           'alpha-3-code' = 'KNA',
           'continent' = 'North America',
           'name' = 'Saint Kitts and Nevis',
           'capital' = 'Basseterre'),
      list('timezones' = c('America/St_Lucia'),
           'alpha-2-code' = 'LC',
           'alpha-3-code' = 'LCA',
           'continent' = 'North America',
           'name' = 'Saint Lucia',
           'capital' = 'Castries'),
      list('timezones' = c('America/St_Vincent'),
           'alpha-2-code' = 'VC',
           'alpha-3-code' = 'VCT',
           'continent' = 'North America',
           'name' = 'Saint Vincent and the Grenadines',
           'capital' = 'Kingstown'),
      list('timezones' = c('Pacific/Apia'),
           'alpha-2-code' = 'WS',
           'alpha-3-code' = 'WSM',
           'continent' = 'Oceania',
           'name' = 'Samoa',
           'capital' = 'Apia'),
      list('timezones' = c('Europe/Belgrade'),
           'alpha-2-code' = 'RS',
           'alpha-3-code' = 'SRB',
           'continent' = 'Europe',
           'name' = 'Serbia',
           'capital' = 'Belgrade'),
      list('timezones' = c('Africa/Johannesburg'),
           'alpha-2-code' = 'ZA',
           'alpha-3-code' = 'ZAF',
           'continent' = 'Africa',
           'name' = 'South Africa',
           'capital' = 'Pretoria'),
      list('timezones' = c('Europe/Madrid',
                           'Africa/Ceuta',
                           'Atlantic/Canary'),
           'alpha-2-code' = 'ES',
           'alpha-3-code' = 'ESP',
           'continent' = 'Europe',
           'name' = 'Spain',
           'capital' = 'Madrid'),
      list('timezones' = c('Asia/Colombo'),
           'alpha-2-code' = 'LK',
           'alpha-3-code' = 'LKA',
           'continent' = 'Asia',
           'name' = 'Sri Lanka',
           'capital' = 'Sri Jayewardenepura Kotte'),
      list('timezones' = c('Africa/Mbabane'),
           'alpha-2-code' = 'SZ',
           'alpha-3-code' = 'SWZ',
           'continent' = 'Africa',
           'name' = 'Swaziland',
           'capital' = 'Mbabane'),
      list('timezones' = c('Europe/Zurich'),
           'alpha-2-code' = 'CH',
           'alpha-3-code' = 'CHE',
           'continent' = 'Europe',
           'name' = 'Switzerland',
           'capital' = 'Bern'),
      list('timezones' = c('Asia/Dubai'),
           'alpha-2-code' = 'AE',
           'alpha-3-code' = 'ARE',
           'continent' = 'Asia',
           'name' = 'United Arab Emirates',
           'capital' = 'Abu Dhabi'),
      list('timezones' = c('Europe/London'),
           'alpha-2-code' = 'GB',
           'alpha-3-code' = 'GBR',
           'continent' = 'Europe',
           'name' = 'United Kingdom',
           'capital' = 'London')
    )
  ),

  public = list(
    unix_time = function(start_datetime , end_datetime ) {
      if (missing(start_datetime)) {
        start_datetime = "1970-01-01 00:00:00"
      }
      if (missing(end_datetime)) {
        end_datetime = now(tz = "UTC")
      }

      start_datetime = as.numeric(as.POSIXct(start_datetime, tz = "UTC"))
      end_datetime = as.numeric(as.POSIXct(end_datetime, tz = "UTC"))

      if(start_datetime < 0) {
        stop("start time shouldn't earlier than 1970-01-01 00:00:00 UTC")
      }

      return(sample(seq(start_datetime, end_datetime), 1))
    },

    time_diff = function(start_datetime, end_datetime) {
      dt = now()
      start_datetime = ifelse(missing(start_datetime), dt, start_datetime)
      start_datetime = as_datetime(start_datetime)

      end_datetime = ifelse(missing(end_datetime), dt, end_datetime)
      end_datetime = as_datetime(end_datetime)

      return(as.duration(end_datetime - start_datetime))
    },

    date_time = function(start_datetime, end_datetime, tz = "UTC") {
      if (missing(start_datetime)) {
        start_datetime = "0001-01-01 00:00:00"
      }
      start_datetime = as.numeric(as.POSIXct(start_datetime, tz = tz))

      if (missing(end_datetime)) {
        end_datetime = now(tz = tz)
      }
      end_datetime = as.numeric(as.POSIXct(end_datetime, tz = tz))

      temp = runif(1, start_datetime, end_datetime)
      return(as.POSIXct(temp,
                        origin="1970-01-01 00:00:00", tz = tz))
    },

    date = function(start_datetime, end_datetime, format = "%Y-%m-%d", tz = "UTC") {
      dt = self$date_time(start_datetime, end_datetime, tz)
      return(strftime(dt, format = format))
    },

    time = function(start_datetime, end_datetime, format = "%H:%M:%S", tz = "UTC") {
      dt = self$date_time(start_datetime, end_datetime, tz)
      return(strftime(dt, format = format))
    },

    iso8601 = function(start_datetime, end_datetime, tz = "UTC") {
      dt = self$date_time(start_datetime, end_datetime, tz)
      return(format_iso_8601(dt))
    },

    am_pm = function(datetime) {
      if (missing(datetime)) {
        datetime = as.numeric(strftime(self$date_time(), "%H"))
      } else datetime = as.numeric(strftime(datetime, "%H"))

      if (datetime %in% c(seq(11), 24)) return("AM")
      else return("PM")

    },

    day_of_month = function(datetime) {
      if (missing(datetime)) {
        return(strftime(self$date(), "%d"))
      } else {return(strftime(datetime, "%d"))}

    },

    day_of_week = function(datetime) {
      if (missing(datetime)) {
        day = self$date(format = "%w")
      } else day = strftime(datetime, "%w")
      return(unname(private$DAY_NAMES[day]))
    },

    month = function(datetime) {
      if (missing(datetime)) {
        return(strftime(self$date(), "%m"))
      } else return(strftime(datetime, "%m"))
    },

    month_name = function(datetime) {
      month = self$month(datetime)
      return(unname(private$MONTH_NAMES[month]))
    },

    year = function(datetime) {
      if (missing(datetime)) return(strftime(self$date(), "%Y"))
      else return(strftime(datetime, "%Y"))
    },

    century = function() {
      return(sample(private$centuries, 1))
    },

    timezone = function() {
      timezones = unlist(lapply(private$countries, FUN = function(x){x[["timezones"]]}))
      return(sample(timezones, 1))
    },

    date_of_birth = function(minimum_age = 0, maximum_age = 115, tz = "UTC") {
      if (as.integer(minimum_age) != minimum_age) {
        stop("minimum_age must be an integer.")
      }

      if (as.integer(maximum_age) != maximum_age) {
        stop("maximum_age must be an integer.")
      }

      if (minimum_age < 0) {
        stop("minimum_age must be greater than or equal to zero.")
      }

      if (maximum_age < 0) {
        stop("maximum_age must be greater than or equal to zero.")
      }

      if (minimum_age > maximum_age) {
        stop("minimum_age must be less than or equal to maximum_age.")
      }

      td = today(tz = tz)
      start_date = td - dyears(maximum_age + 1)
      end_date = td - dyears(minimum_age)

      dob = self$date_time(start_datetime = start_date,
                           end_datetime = end_date,
                           tz = tz)
      if (dob != start_date) return(strftime(dob, "%Y-%m-%d"))
      else return(strftime(dob + ddays(1), "%Y-%m-%d"))
    }
  )
)



## address -------------------------------------------------
address_init <- R6Class(
  "address_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    locale = "en_US",
    city_suffixes = "Ville",
    street_suffixes = "Street",
    city_formats = "{first_name} {city_suffix}",
    street_name_formats = "{last_name} {street_suffix}",
    street_address_formats = "{building_number} {street_name}",
    address_formats = "{street_address} {postcode} {city}",
    building_number_formats = "##",
    postcode_formats = "######",
    first_names = (person_init$new())$.__enclos_env__$private$first_names,
    last_names = (person_init$new())$.__enclos_env__$private$last_names,

    first_name = (person_init$new())$first_name,
    last_name = (person_init$new())$last_name,

    countries =  sapply(date_time_init$private_fields$countries,
                        function(x) x[["name"]]),

    alpha_2_country_codes = sapply(date_time_init$private_fields$countries,
                                   function(x) x[["alpha-2-code"]]),

    alpha_3_country_codes = sapply(date_time_init$private_fields$countries,
                                   function(x) x[["alpha-3-code"]])


  ),

  public = list(

    city_suffix = function() {
      return(private$random_element(private$city_suffixes))
    },

    street_suffix = function() {
      return(private$random_element(private$street_suffixes))
    },

    building_number = function() {
      temp = private$random_element(private$building_number_formats)
      temp = private$numerify(temp)
      return(temp)
    },

    city = function() {
      temp = private$random_element(private$city_formats)
      return(private$format_parse(temp))
    },

    street_name = function() {
      temp = private$random_element(private$street_name_formats)
      return(private$format_parse(temp))
    },

    street_address = function() {
      temp = private$format_parse(private$random_element(private$street_address_formats))
      return(temp)
    },

    postcode = function() {
      temp = str_to_upper(private$bothify(
        private$random_element(private$postcode_formats)),
        locale = private$locale)
      return(temp)
    },

    address = function() {
      temp = private$random_element(private$address_formats)
      return(private$format_parse(temp))
    },

    country = function() {
      return(private$random_element(private$countries))
    },

    country_code = function(representation = "alpha-2") {
      if (representation == "alpha-2"){
        return(sample(private$alpha_2_country_codes, 1))
      } else if (representation == "alpha-3"){
        return(sample(private$alpha_3_country_codes, 1))
      } else{
        stop("'representation' must be one of 'alpha-2' or 'alpha-3'.")
      }
    }
  )
)

## credit_card -----------------
credit_card_init = R6Class(
  "credit_card_init",
  inherit = init,
  cloneable = FALSE,
  private = list(

    # Prefixes from:
    # * https://en.wikipedia.org/wiki/Payment_card_number#Issuer_identification_number_.28IIN.29
    # * https://www.regular-expressions.info/creditcard.html
    # * https://creditcardjs.com/credit-card-type-detection


    credit_card_types = list(
      maestro = list(name = 'Maestro',
                     prefixes = c('5018', '5020', '5038', '56##', '57##', '58##',
                                  '6304', '6759', '6761', '6762', '6763', '0604',
                                  '6390'),
                     len = 12, security_code='CVV', security_code_length = 3),

      mastercard = list(name = 'Mastercard',
                        prefixes = c('51', '52', '53', '54', '55', '222%'),
                        len = 16, security_code='CVV', security_code_length = 3),

      visa16 = list(name = 'VISA 16 digit',
                    prefixes = '4', len = 16,
                    security_code='CVV', security_code_length = 3),

      visa13 = list(name = 'VISA 13 digit',
                    prefixes = '4', len = 13,
                    security_code='CVV', security_code_length = 3),

      visa19 = list(name = 'VISA 19 digit',
                    prefixes = "4", len = 19,
                    security_code='CVV', security_code_length = 3),

      amex = list(name = 'American Express',
                  prefixes = c('34', '37'), len = 15,
                  security_code='CID', security_code_length=4),

      discover = list(name = 'Discover',
                      prefixes = c('6011', '65'), len = 16,
                      security_code='CVV', security_code_length = 3),

      diners = list(name = 'Diners Club / Carte Blanche',
                    prefixes = c('300', '301', '302', '303', '304', '305', '36', '38'),
                    len = 14, security_code='CVV', security_code_length = 3),

      jcb15 = list(name = 'JCB 15 digit',
                   prefixes = c('2131', '1800'), len = 15,
                   security_code='CVV', security_code_length = 3),

      jcb16 = list(name = 'JCB 16 digit',
                   prefixes = '35', len = 16,
                   security_code='CVV', security_code_length = 3),

      visa = list(name = 'VISA 16 digit',
                  prefixes = '4', len = 16,
                  security_code='CVV', security_code_length = 3),

      jcb = list(name = 'JCB 16 digit',
                 prefixes = '35', len = 16,
                 security_code='CVV', security_code_length = 3)
    ),

    luhn_lookup = c('0' = 0, '1' = 2, '2' = 4, '3' = 6, '4' = 8,
                    '5' = 1, '6' = 3, '7' = 5, '8' = 7, '9' = 9),

    first_names = (person_init$new())$.__enclos_env__$private$first_names,
    last_names = (person_init$new())$.__enclos_env__$private$last_names,

    first_name = (person_init$new())$first_name,
    last_name = (person_init$new())$last_name,

    credit_card_type = function(card_type){
      # Returns a random credit card type instance.
      if (missing(card_type)){
        card_type = sample(names(private$credit_card_types), 1)
      } else if (all(c("name", "prefixes", "length", "security_code",
                "security_code_length") %in%
                names(private$credit_card_types[[card_type]]))) {
          return(private$credit_card_types[card_type])
      }
      return(private$credit_card_types[card_type])
    },

    generate_number = function(prefix, len){
      # 'prefix' is the start of the CC number as a string, any number of digits.
      # 'length' is the length of the CC number to generate. Typically 13 or 16
      number = prefix
      # Generate random char digits
      number = str_c(number,
                     str_c(rep("#", len - str_length(prefix) - 1), collapse = ""))
      number = private$numerify(number)
      reverse = rev(str_split(number, "")[[1]])
      # Calculate sum
      tot = 0
      pos = 1

      while (pos < len) {
        tot = tot + private$luhn_lookup[reverse[pos]]
        if (pos != (len - 1)) {
          tot = tot + as.integer(reverse[pos + 1])
        }
        pos = pos + 2
      }
      # Calculate check digit
      check_digit = (10 - (tot %% 10)) %% 10
      number = str_c(number, check_digit)
      return(number)
    }
  ),

  public = list(
    credit_card_provider = function(card_type){
      # Returns the provider's name of the credit card
      if (missing(card_type)){
        card_type = sample(names(private$credit_card_types), 1)
      }

      return(private$credit_card_type(card_type)[[1]][["name"]])
    },

    credit_card_number = function(card_type){
      # Returns a valid credit card number.
      card = private$credit_card_type(card_type)[[1]]
      prefix = sample(card[["prefixes"]], 1)
      number = private$generate_number(
        private$numerify(prefix), card[["len"]])
      return(number)
    },

    credit_card_expire = function(start, end, date_format = "%m/%y"){
      if (missing(start)) {start = today()}
      if (missing(end)) {end = start + dyears(10)}

      expire_date = (date_time_init$new())$date_time(start, end)
      return(strftime(expire_date, format = date_format))
    },

    credit_card_full = function(card_type){
      card = private$credit_card_type(card_type)
      provider = card[[1]][["name"]]
      owner = private$format_parse("{first_name} {last_name}")
      number = self$credit_card_number(names(card))
      expire_date = self$credit_card_expire()
      security = card[[1]][["security_code"]]
      security_nb = self$credit_card_security_code(names(card))

      tpl = str_c(provider, "\n", owner, "\n",
                  number, " ", expire_date, "\n",
                  security,": ", security_nb, "\n")

      return(tpl)
    },

    credit_card_security_code = function(card_type){
      # Returns a security code string.
      sec_len = private$credit_card_type(card_type)[[1]]
      sec_len = sec_len[["security_code_length"]]
      format = str_c(rep("#", sec_len), collapse = "")
      return(private$numerify(format))
    }
  )
)


## geo -------------------------------------------------------------------
geo_init = R6Class(
  "geom_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    # land_coords data extracted from geonames.org, under the Creative Commons Attribution 3.0 License.
    # Coordinates are in decimal format for mapping purposes.
    # Country code is in Alpha 2 format (https://www.nationsonline.org/oneworld/country_code_list.htm).
    # Timezones are canonical (https://en.wikipedia.org/wiki/List_of_tz_database_time_zones).
    land_coords = list(
      c("42.50729", "1.53414", "les Escaldes", "AD", "Europe/Andorra"),
      c("36.21544", "65.93249", "Sar-e Pul", "AF", "Asia/Kabul"),
      c("40.49748", "44.7662", "Hrazdan", "AM", "Asia/Yerevan"),
      c("-11.78333", "19.91667", "Luena", "AO", "Africa/Luanda"),
      c("-37.32167", "-59.13316", "Tandil", "AR", "America/Argentina/Buenos_Aires"),
      c("-34.74785", "-58.70072", "Pontevedra", "AR", "America/Argentina/Buenos_Aires"),
      c("-34.64966", "-58.38341", "Barracas", "AR", "America/Argentina/Buenos_Aires"),
      c("-54.8", "-68.3", "Ushuaia", "AR", "America/Argentina/Ushuaia"),
      c("-31.25033", "-61.4867", "Rafaela", "AR", "America/Argentina/Cordoba"),
      c("-31.4488", "-60.93173", "Esperanza", "AR", "America/Argentina/Cordoba"),
      c("-34.64167", "-60.47389", "Chacabuco", "AR", "America/Argentina/Buenos_Aires"),
      c("-27.4338", "-65.61427", "Aguilares", "AR", "America/Argentina/Tucuman"),
      c("47.05", "15.46667", "Sankt Peter", "AT", "Europe/Vienna"),
      c("48.25", "16.4", "Floridsdorf", "AT", "Europe/Vienna"),
      c("-31.95224", "115.8614", "Perth", "AU", "Australia/Perth"),
      c("-37.9", "145.18333", "Wheelers Hill", "AU", "Australia/Melbourne"),
      c("-33.88096", "151.07986", "Strathfield", "AU", "Australia/Sydney"),
      c("-34.88422", "150.60036", "Nowra", "AU", "Australia/Sydney"),
      c("-25.54073", "152.70493", "Maryborough", "AU", "Australia/Brisbane"),
      c("-34.28853", "146.05093", "Griffith", "AU", "Australia/Sydney"),
      c("-33.79176", "151.08057", "Eastwood", "AU", "Australia/Sydney"),
      c("-37.88333", "145.06667", "Carnegie", "AU", "Australia/Melbourne"),
      c("-33.75881", "150.99292", "Baulkham Hills", "AU", "Australia/Sydney"),
      c("-27.50578", "153.10236", "Carindale", "AU", "Australia/Brisbane"),
      c("-32.05251", "115.88782", "Willetton", "AU", "Australia/Perth"),
      c("-38.16604", "145.13643", "Frankston South", "AU", "Australia/Melbourne"),
      c("38.45598", "48.87498", "Astara", "AZ", "Asia/Baku"),
      c("41.09246", "45.36561", "Qazax", "AZ", "Asia/Baku"),
      c("44.75874", "19.21437", "Bijeljina", "BA", "Europe/Sarajevo"),
      c("23.9028", "89.11943", "Kushtia", "BD", "Asia/Dhaka"),
      c("22.83957", "91.84128", "Manikchari", "BD", "Asia/Dhaka"),
      c("50.8", "3.16667", "Wevelgem", "BE", "Europe/Brussels"),
      c("51.12794", "4.21372", "Temse", "BE", "Europe/Brussels"),
      c("50.71229", "4.52529", "Rixensart", "BE", "Europe/Brussels"),
      c("50.74497", "3.20639", "Mouscron", "BE", "Europe/Brussels"),
      c("51.24197", "4.82313", "Lille", "BE", "Europe/Brussels"),
      c("51.03427", "5.37429", "Houthalen", "BE", "Europe/Brussels"),
      c("50.56149", "4.69889", "Gembloux", "BE", "Europe/Brussels"),
      c("50.88506", "4.07601", "Denderleeuw", "BE", "Europe/Brussels"),
      c("51.21187", "4.25633", "Beveren", "BE", "Europe/Brussels"),
      c("41.57439", "24.71204", "Smolyan", "BG", "Europe/Sofia"),
      c("43.4125", "23.225", "Montana", "BG", "Europe/Sofia"),
      c("42.7", "27.25", "Aytos", "BG", "Europe/Sofia"),
      c("8.88649", "2.59753", "Tchaourou", "BJ", "Africa/Porto-Novo"),
      c("-21.44345", "-65.71875", "Tupiza", "BO", "America/La_Paz"),
      c("-0.71667", "-48.52333", "Soure", "BR", "America/Belem"),
      c("-8.05389", "-34.88111", "Recife", "BR", "America/Recife"),
      c("-4.42472", "-41.45861", "Pedro II", "BR", "America/Fortaleza"),
      c("-3.14306", "-58.44417", "Itacoatiara", "BR", "America/Manaus"),
      c("-4.16694", "-40.7475", "Guaraciaba do Norte", "BR", "America/Fortaleza"),
      c("-8.66667", "-35.71667", "Catende", "BR", "America/Recife"),
      c("-8.28333", "-35.03333", "Cabo", "BR", "America/Recife"),
      c("-4.24444", "-42.29444", "Barras", "BR", "America/Fortaleza"),
      c("-3.20333", "-52.20639", "Altamira", "BR", "America/Santarem"),
      c("-20.87306", "-48.29694", "Viradouro", "BR", "America/Sao_Paulo"),
      c("-22.97056", "-46.99583", "Valinhos", "BR", "America/Sao_Paulo"),
      c("-10.95817", "-38.79084", "Tucano", "BR", "America/Bahia"),
      c("-28.81833", "-52.51028", "Soledade", "BR", "America/Sao_Paulo"),
      c("-23.44361", "-51.87389", "Sarandi", "BR", "America/Sao_Paulo"),
      c("-22.45667", "-47.53028", "Santa Gertrudes", "BR", "America/Sao_Paulo"),
      c("-11.48472", "-37.93278", "Rio Real", "BR", "America/Bahia"),
      c("-19.32556", "-41.25528", "Resplendor", "BR", "America/Sao_Paulo"),
      c("-26.22861", "-52.67056", "Pato Branco", "BR", "America/Sao_Paulo"),
      c("-25.42944", "-50.00639", "Palmeira", "BR", "America/Sao_Paulo"),
      c("-12.91667", "-39.25", "Muritiba", "BR", "America/Bahia"),
      c("-21.41222", "-42.19667", "Miracema", "BR", "America/Sao_Paulo"),
      c("-28.44917", "-52.2", "Marau", "BR", "America/Sao_Paulo"),
      c("-22.92306", "-53.13722", "Loanda", "BR", "America/Sao_Paulo"),
      c("-10.91722", "-37.65", "Lagarto", "BR", "America/Maceio"),
      c("-19.72806", "-50.19556", "Iturama", "BR", "America/Sao_Paulo"),
      c("-21.205", "-41.88778", "Itaperuna", "BR", "America/Sao_Paulo"),
      c("-20.25333", "-43.80139", "Itabirito", "BR", "America/Sao_Paulo"),
      c("-28.24", "-48.67028", "Imbituba", "BR", "America/Sao_Paulo"),
      c("-22.53722", "-42.98194", "Guapimirim", "BR", "America/Sao_Paulo"),
      c("-19.7625", "-44.31389", "Esmeraldas", "BR", "America/Sao_Paulo"),
      c("-25.42778", "-49.27306", "Curitiba", "BR", "America/Sao_Paulo"),
      c("-14.66463", "-52.35558", "Nova Xavantina", "BR", "America/Cuiaba"),
      c("-29.2975", "-51.50361", "Carlos Barbosa", "BR", "America/Sao_Paulo"),
      c("-15.675", "-38.94722", "Canavieiras", "BR", "America/Bahia"),
      c("-17.74431", "-48.62789", "Caldas Novas", "BR", "America/Sao_Paulo"),
      c("-23.7975", "-48.59278", "Buri", "BR", "America/Sao_Paulo"),
      c("-10.90889", "-37.03861", "Barra dos Coqueiros", "BR", "America/Maceio"),
      c("-22.57306", "-47.1725", "Artur Nogueira", "BR", "America/Sao_Paulo"),
      c("-10.91111", "-37.07167", "Aracaju", "BR", "America/Maceio"),
      c("-21.42917", "-45.94722", "Alfenas", "BR", "America/Sao_Paulo"),
      c("-8.76194", "-63.90389", "Porto Velho", "BR", "America/Porto_Velho"),
      c("-21.44236", "27.46153", "Tonota", "BW", "Africa/Gaborone"),
      c("55.1904", "30.2049", "Vitebsk", "BY", "Europe/Minsk"),
      c("53.5942", "25.8191", "Novogrudok", "BY", "Europe/Minsk"),
      c("52.4089", "31.3237", "Dobrush", "BY", "Europe/Minsk"),
      c("45.43341", "-73.86586", "Beaconsfield", "CA", "America/Toronto"),
      c("46.23899", "-63.13414", "Charlottetown", "CA", "America/Halifax"),
      c("45.4473", "-73.75335", "Dorval", "CA", "America/Toronto"),
      c("49.88307", "-119.48568", "Kelowna", "CA", "America/Vancouver"),
      c("43.86682", "-79.2663", "Markham", "CA", "America/Toronto"),
      c("42.8334", "-80.38297", "Norfolk County", "CA", "America/Toronto"),
      c("45.44868", "-73.81669", "Pointe-Claire", "CA", "America/Toronto"),
      c("45.40008", "-73.58248", "Sainte-Catherine", "CA", "America/Toronto"),
      c("53.51684", "-113.3187", "Sherwood Park", "CA", "America/Edmonton"),
      c("50.26729", "-119.27337", "Vernon", "CA", "America/Vancouver"),
      c("46.1351", "-60.1831", "Sydney", "CA", "America/Glace_Bay"),
      c("0.76755", "24.43973", "Yangambi", "CD", "Africa/Lubumbashi"),
      c("-8.73508", "24.99798", "Kamina", "CD", "Africa/Lubumbashi"),
      c("0.49113", "29.47306", "Beni", "CD", "Africa/Lubumbashi"),
      c("-4.5833", "15.16554", "Kasangulu", "CD", "Africa/Kinshasa"),
      c("4.94273", "15.87735", "Carnot", "CF", "Africa/Bangui"),
      c("-4.26613", "15.28318", "Brazzaville", "CG", "Africa/Brazzaville"),
      c("46.18396", "6.10237", "Onex", "CH", "Europe/Zurich"),
      c("47.30997", "8.52462", "Adliswil", "CH", "Europe/Zurich"),
      c("5.84752", "-5.682", "Lakota", "CI", "Africa/Abidjan"),
      c("5.27247", "-3.59625", "Bonoua", "CI", "Africa/Abidjan"),
      c("-33.59217", "-70.6996", "San Bernardo", "CL", "America/Santiago"),
      c("-30.60106", "-71.19901", "Ovalle", "CL", "America/Santiago"),
      c("-32.45242", "-71.23106", "La Ligua", "CL", "America/Santiago"),
      c("-36.9256", "-73.02841", "Chiguayante", "CL", "America/Santiago"),
      c("4.96667", "10.7", "Tonga", "CM", "Africa/Douala"),
      c("3.51667", "11.5", "Mbalmayo", "CM", "Africa/Douala"),
      c("4.2475", "9.00472", "Idenao", "CM", "Africa/Douala"),
      c("46.51872", "86.00214", "Hoxtolgay", "CN", "Asia/Urumqi"),
      c("36.81667", "117.81667", "Zhoucun", "CN", "Asia/Shanghai"),
      c("34.86472", "117.55417", "Zaozhuang", "CN", "Asia/Shanghai"),
      c("23.73333", "114.68333", "Heyuan", "CN", "Asia/Shanghai"),
      c("34.65918", "109.22921", "Yanliang", "CN", "Asia/Shanghai"),
      c("38.40917", "112.73333", "Xinzhou", "CN", "Asia/Shanghai"),
      c("33.78333", "114.51667", "Wacheng", "CN", "Asia/Shanghai"),
      c("27.85", "112.9", "Xiangtan", "CN", "Asia/Shanghai"),
      c("37.19723", "122.05228", "Tianfu", "CN", "Asia/Shanghai"),
      c("34.85", "117.33333", "Taozhuang", "CN", "Asia/Shanghai"),
      c("35.64889", "117.27583", "Sishui", "CN", "Asia/Shanghai"),
      c("27.34089", "117.4831", "Shaowu", "CN", "Asia/Shanghai"),
      c("37.30553", "120.82747", "Zhuangyuan", "CN", "Asia/Shanghai"),
      c("35.50056", "117.63083", "Pingyi", "CN", "Asia/Shanghai"),
      c("27.92333", "118.53333", "Pucheng", "CN", "Asia/Shanghai"),
      c("24.28859", "116.11768", "Meizhou", "CN", "Asia/Shanghai"),
      c("37.65181", "120.33063", "Longgang", "CN", "Asia/Shanghai"),
      c("23.29549", "113.82465", "Licheng", "CN", "Asia/Shanghai"),
      c("36.19278", "117.65694", "Laiwu", "CN", "Asia/Shanghai"),
      c("30.35028", "112.19028", "Jingzhou", "CN", "Asia/Shanghai"),
      c("32.50611", "120.14278", "Jiangyan", "CN", "Asia/Shanghai"),
      c("30.24706", "115.04814", "Huangshi", "CN", "Asia/Shanghai"),
      c("37.73222", "115.70111", "Hengshui", "CN", "Asia/Shanghai"),
      c("28.88162", "120.03308", "Guli", "CN", "Asia/Shanghai"),
      c("23.02677", "113.13148", "Foshan", "CN", "Asia/Shanghai"),
      c("35.85", "117.7", "Dongdu", "CN", "Asia/Shanghai"),
      c("32.54278", "111.50861", "Danjiangkou", "CN", "Asia/Shanghai"),
      c("35.20889", "111.73861", "Changzhi", "CN", "Asia/Shanghai"),
      c("34.56861", "105.89333", "Beidao", "CN", "Asia/Shanghai"),
      c("29.98869", "122.20488", "Zhoushan", "CN", "Asia/Shanghai"),
      c("40.66482", "122.22833", "Yingkou", "CN", "Asia/Shanghai"),
      c("46.08333", "122.08333", "Ulanhot", "CN", "Asia/Shanghai"),
      c("45.35", "126.28333", "Shuangcheng", "CN", "Asia/Shanghai"),
      c("41.09822", "120.74792", "Nanpiao", "CN", "Asia/Shanghai"),
      c("41.27194", "123.17306", "Liaoyang", "CN", "Asia/Shanghai"),
      c("41.94175", "123.50266", "Hushitai", "CN", "Asia/Shanghai"),
      c("40.85158", "122.74754", "Haicheng", "CN", "Asia/Shanghai"),
      c("42.64031", "125.51176", "Dongfeng", "CN", "Asia/Shanghai"),
      c("45.75279", "130.57211", "Boli", "CN", "Asia/Shanghai"),
      c("31.64615", "120.74221", "Changshu City", "CN", "Asia/Shanghai"),
      c("7.83389", "-72.47417", "Villa del Rosario", "CO", "America/Bogota"),
      c("6.46838", "-73.26022", "Socorro", "CO", "America/Bogota"),
      c("8.79577", "-75.69947", "San Carlos", "CO", "America/Bogota"),
      c("10.98778", "-74.95472", "Puerto Colombia", "CO", "America/Bogota"),
      c("4.73245", "-74.26419", "Madrid", "CO", "America/Bogota"),
      c("5.20856", "-74.73584", "Honda", "CO", "America/Bogota"),
      c("10.15031", "-73.9614", "El Copey", "CO", "America/Bogota"),
      c("3.8801", "-77.03116", "Buenaventura", "CO", "America/Bogota"),
      c("5.6561", "-75.87877", "Andes", "CO", "America/Bogota"),
      c("9.92787", "-84.13722", "San Rafael", "CR", "America/Costa_Rica"),
      c("10.63504", "-85.43772", "Liberia", "CR", "America/Costa_Rica"),
      c("23.15678", "-81.24441", "Varadero", "CU", "America/Havana"),
      c("20.14298", "-77.43532", "Media Luna", "CU", "America/Havana"),
      c("23.04419", "-82.00919", "Jaruco", "CU", "America/Havana"),
      c("22.98212", "-80.58556", "Corralillo", "CU", "America/Havana"),
      c("23.0072", "-82.4017", "Boyeros", "CU", "America/Havana"),
      c("50.50301", "13.63617", "Most", "CZ", "Europe/Prague"),
      c("50.23271", "12.87117", "Karlovy Vary", "CZ", "Europe/Prague"),
      c("51.04962", "12.1369", "Zeitz", "DE", "Europe/Berlin"),
      c("52.59319", "13.32127", "Wittenau", "DE", "Europe/Berlin"),
      c("50.82709", "6.9747", "Wesseling", "DE", "Europe/Berlin"),
      c("50.9803", "11.32903", "Weimar", "DE", "Europe/Berlin"),
      c("52.86147", "9.5926", "Walsrode", "DE", "Europe/Berlin"),
      c("51.88333", "8.51667", "Verl", "DE", "Europe/Berlin"),
      c("48.07667", "8.64409", "Trossingen", "DE", "Europe/Berlin"),
      c("48.78232", "9.17702", "Stuttgart", "DE", "Europe/Berlin"),
      c("53.59337", "9.47629", "Stade", "DE", "Europe/Berlin"),
      c("50.80019", "7.20769", "Siegburg", "DE", "Europe/Berlin"),
      c("51.21667", "6.26667", "Schwalmtal", "DE", "Europe/Berlin"),
      c("54.52156", "9.5586", "Schleswig", "DE", "Europe/Berlin"),
      c("50.72043", "11.34046", "Rudolstadt", "DE", "Europe/Berlin"),
      c("48.49144", "9.20427", "Reutlingen", "DE", "Europe/Berlin"),
      c("51.20219", "7.36027", "Radevormwald", "DE", "Europe/Berlin"),
      c("48.46458", "9.22796", "Pfullingen", "DE", "Europe/Berlin"),
      c("51.30001", "13.10984", "Oschatz", "DE", "Europe/Berlin"),
      c("51.47805", "6.8625", "Oberhausen", "DE", "Europe/Berlin"),
      c("50.23805", "8.86704", "Nidderau", "DE", "Europe/Berlin"),
      c("48.73218", "11.18709", "Neuburg an der Donau", "DE", "Europe/Berlin"),
      c("47.98372", "10.18527", "Memmingen", "DE", "Europe/Berlin"),
      c("50.80904", "8.77069", "Marburg an der Lahn", "DE", "Europe/Berlin"),
      c("49.5099", "6.74549", "Losheim", "DE", "Europe/Berlin"),
      c("48.52961", "12.16179", "Landshut", "DE", "Europe/Berlin"),
      c("51.19139", "6.51352", "Korschenbroich", "DE", "Europe/Berlin"),
      c("52.2", "8.63333", "Kirchlengern", "DE", "Europe/Berlin"),
      c("50.23019", "8.77155", "Karben", "DE", "Europe/Berlin"),
      c("50.09019", "8.4493", "Hofheim am Taunus", "DE", "Europe/Berlin"),
      c("52.61131", "13.31783", "Hermsdorf", "DE", "Europe/Berlin"),
      c("48.35149", "8.96317", "Hechingen", "DE", "Europe/Berlin"),
      c("53.63333", "9.85", "Halstenbek", "DE", "Europe/Berlin"),
      c("52.21099", "7.02238", "Gronau", "DE", "Europe/Berlin"),
      c("52.47774", "10.5511", "Gifhorn", "DE", "Europe/Berlin"),
      c("48.06919", "11.37703", "Gauting", "DE", "Europe/Berlin"),
      c("48.35693", "10.98461", "Friedberg", "DE", "Europe/Berlin"),
      c("51.168", "7.973", "Finnentrop", "DE", "Europe/Berlin"),
      c("49.13645", "8.91229", "Eppingen", "DE", "Europe/Berlin"),
      c("48.28259", "9.72749", "Ehingen", "DE", "Europe/Berlin"),
      c("52.4581", "13.28702", "Dahlem", "DE", "Europe/Berlin"),
      c("51.08468", "7.11393", "Burscheid", "DE", "Europe/Berlin"),
      c("49.03685", "8.70745", "Bretten", "DE", "Europe/Berlin"),
      c("49.68369", "8.61839", "Bensheim", "DE", "Europe/Berlin"),
      c("53.94313", "10.30215", "Bad Segeberg", "DE", "Europe/Berlin"),
      c("50.64336", "7.2278", "Bad Honnef", "DE", "Europe/Berlin"),
      c("49.97704", "9.15214", "Aschaffenburg", "DE", "Europe/Berlin"),
      c("48.21644", "9.02596", "Albstadt", "DE", "Europe/Berlin"),
      c("52.53048", "13.29371", "Charlottenburg-Nord", "DE", "Europe/Berlin"),
      c("53.6052", "10.03988", "Barmbek-Nord", "DE", "Europe/Berlin"),
      c("11.15583", "42.7125", "'Ali Sabieh", "DJ", "Africa/Djibouti"),
      c("55.67938", "12.53463", "Frederiksberg", "DK", "Europe/Copenhagen"),
      c("18.20854", "-71.10077", "Santa Cruz de Barahona", "DO", "America/Santo_Domingo"),
      c("36.76639", "3.47717", "Boumerdas", "DZ", "Africa/Algiers"),
      c("36.72544", "3.55665", "Thenia", "DZ", "Africa/Algiers"),
      c("34.15429", "3.50309", "Messaad", "DZ", "Africa/Algiers"),
      c("35.21222", "2.31889", "Ksar Chellala", "DZ", "Africa/Algiers"),
      c("35.06544", "1.04945", "Frenda", "DZ", "Africa/Algiers"),
      c("36.06386", "4.62744", "El Achir", "DZ", "Africa/Algiers"),
      c("36.76775", "2.95924", "Cheraga", "DZ", "Africa/Algiers"),
      c("36.27462", "4.85668", "Bordj Zemoura", "DZ", "Africa/Algiers"),
      c("36.61954", "4.08282", "Beni Douala", "DZ", "Africa/Algiers"),
      c("-2.13404", "-79.59415", "Milagro", "EC", "America/Guayaquil"),
      c("-2.90055", "-79.00453", "Cuenca", "EC", "America/Guayaquil"),
      c("59.37722", "28.19028", "Narva", "EE", "Europe/Tallinn"),
      c("26.67319", "31.4976", "Juhaynah", "EG", "Africa/Cairo"),
      c("31.20176", "29.91582", "Alexandria", "EG", "Africa/Cairo"),
      c("39.96348", "-4.83076", "Talavera de la Reina", "ES", "Europe/Madrid"),
      c("37.35813", "-6.03731", "San Juan de Aznalfarache", "ES", "Europe/Madrid"),
      c("38.68712", "-4.10734", "Puertollano", "ES", "Europe/Madrid"),
      c("38.38479", "-0.76773", "Novelda", "ES", "Europe/Madrid"),
      c("27.76056", "-15.58602", "Maspalomas", "ES", "Atlantic/Canary"),
      c("38.47917", "-1.325", "Jumilla", "ES", "Europe/Madrid"),
      c("38.96667", "-0.18333", "Gandia", "ES", "Europe/Madrid"),
      c("38.10558", "-1.86343", "Caravaca", "ES", "Europe/Madrid"),
      c("37.49073", "-2.77259", "Baza", "ES", "Europe/Madrid"),
      c("42.64685", "-5.55835", "Villaquilambre", "ES", "Europe/Madrid"),
      c("42.06166", "-1.60452", "Tudela", "ES", "Europe/Madrid"),
      c("40.42386", "-3.53261", "San Fernando de Henares", "ES", "Europe/Madrid"),
      c("41.15612", "1.10687", "Reus", "ES", "Europe/Madrid"),
      c("41.91738", "3.1631", "Palafrugell", "ES", "Europe/Madrid"),
      c("43.32686", "-2.98884", "Leioa", "ES", "Europe/Madrid"),
      c("43.31667", "-2.68333", "Gernika-Lumo", "ES", "Europe/Madrid"),
      c("43.48961", "-8.2194", "Ferrol", "ES", "Europe/Madrid"),
      c("41.63976", "2.35739", "Cardedeu", "ES", "Europe/Madrid"),
      c("40.70995", "0.57856", "Amposta", "ES", "Europe/Madrid"),
      c("37.13548", "-3.67029", "Las Gabias", "ES", "Europe/Madrid"),
      c("42.8139", "-1.64295", "Segundo Ensanche", "ES", "Europe/Madrid"),
      c("41.41204", "2.18247", "el Camp de l'Arpa del Clot", "ES", "Europe/Madrid"),
      c("11.85", "38.01667", "Debre Tabor", "ET", "Africa/Addis_Ababa"),
      c("6.03333", "37.55", "Arba Minch", "ET", "Africa/Addis_Ababa"),
      c("65.84811", "24.14662", "Tornio", "FI", "Europe/Helsinki"),
      c("60.18427", "24.95034", "Kallio", "FI", "Europe/Helsinki"),
      c("60.2052", "24.6522", "Espoo", "FI", "Europe/Helsinki"),
      c("45.51667", "4.86667", "Vienne", "FR", "Europe/Paris"),
      c("44.92801", "4.8951", "Valence", "FR", "Europe/Paris"),
      c("44.80477", "-0.59543", "Talence", "FR", "Europe/Paris"),
      c("48.77644", "2.29026", "Sceaux", "FR", "Europe/Paris"),
      c("50.75", "2.25", "Saint-Omer", "FR", "Europe/Paris"),
      c("45.69558", "4.7934", "Saint-Genis-Laval", "FR", "Europe/Paris"),
      c("48.8765", "2.18967", "Rueil-Malmaison", "FR", "Europe/Paris"),
      c("48", "-4.1", "Quimper", "FR", "Europe/Paris"),
      c("43.11667", "1.6", "Pamiers", "FR", "Europe/Paris"),
      c("46.32313", "-0.45877", "Niort", "FR", "Europe/Paris"),
      c("43.61092", "3.87723", "Montpellier", "FR", "Europe/Paris"),
      c("48.98333", "2.61667", "Mitry-Mory", "FR", "Europe/Paris"),
      c("48.86667", "2.08333", "Marly-le-Roi", "FR", "Europe/Paris"),
      c("46.67535", "5.55575", "Lons-le-Saunier", "FR", "Europe/Paris"),
      c("43.32393", "5.4584", "Les Olives", "FR", "Europe/Paris"),
      c("48.8222", "2.12213", "Le Chesnay", "FR", "Europe/Paris"),
      c("48.90472", "2.2469", "La Garenne-Colombes", "FR", "Europe/Paris"),
      c("48.98994", "2.1699", "Herblay", "FR", "Europe/Paris"),
      c("48.98693", "2.44892", "Gonesse", "FR", "Europe/Paris"),
      c("48.79325", "2.29275", "Fontenay-aux-Roses", "FR", "Europe/Paris"),
      c("49.28669", "1.00288", "Elbeuf", "FR", "Europe/Paris"),
      c("43.71032", "-1.05366", "Dax", "FR", "Europe/Paris"),
      c("43.61058", "1.33467", "Colomiers", "FR", "Europe/Paris"),
      c("43.83125", "5.03586", "Cavaillon", "FR", "Europe/Paris"),
      c("45.73333", "4.91667", "Bron", "FR", "Europe/Paris"),
      c("48.90982", "2.45012", "Bobigny", "FR", "Europe/Paris"),
      c("48.77275", "5.16108", "Bar-le-Duc", "FR", "Europe/Paris"),
      c("43.67681", "4.63031", "Arles", "FR", "Europe/Paris"),
      c("41.91886", "8.73812", "Ajaccio", "FR", "Europe/Paris"),
      c("43.2907", "5.4384", "Marseille 11", "FR", "Europe/Paris"),
      c("-1.63333", "13.58357", "Franceville", "GA", "Africa/Libreville"),
      c("53.19146", "-2.52398", "Winsford", "GB", "Europe/London"),
      c("51.26", "-2.1875", "Westbury", "GB", "Europe/London"),
      c("51.84819", "1.26738", "Walton-on-the-Naze", "GB", "Europe/London"),
      c("52.41667", "0.75", "Thetford", "GB", "Europe/London"),
      c("51.39323", "0.47713", "Strood", "GB", "Europe/London"),
      c("50.79205", "-1.08593", "Southsea", "GB", "Europe/London"),
      c("53.78333", "-1.06667", "Selby", "GB", "Europe/London"),
      c("55.82885", "-4.21376", "Rutherglen", "GB", "Europe/London"),
      c("53.00974", "-3.05814", "Rhosllanerchrugog", "GB", "Europe/London"),
      c("53.83333", "-2.98333", "Poulton-le-Fylde", "GB", "Europe/London"),
      c("50.11861", "-5.53715", "Penzance", "GB", "Europe/London"),
      c("50.82882", "-0.32247", "Lancing", "GB", "Europe/London"),
      c("51.40148", "-1.32471", "Newbury", "GB", "Europe/London"),
      c("53.49389", "-1.29243", "Mexborough", "GB", "Europe/London"),
      c("50.75767", "-1.5443", "Lymington", "GB", "Europe/London"),
      c("53.69786", "-2.68758", "Leyland", "GB", "Europe/London"),
      c("53.7446", "-0.33525", "Kingston upon Hull", "GB", "Europe/London"),
      c("57.47908", "-4.22398", "Inverness", "GB", "Europe/London"),
      c("51.62907", "-0.74934", "High Wycombe", "GB", "Europe/London"),
      c("51.38673", "0.30367", "Hartley", "GB", "Europe/London"),
      c("52.66277", "-2.01111", "Great Wyrley", "GB", "Europe/London"),
      c("53.38333", "-0.76667", "Gainsborough", "GB", "Europe/London"),
      c("50.7236", "-3.52751", "Exeter", "GB", "Europe/London"),
      c("52.68333", "0.93333", "East Dereham", "GB", "Europe/London"),
      c("51.35084", "-1.99421", "Devizes", "GB", "Europe/London"),
      c("50.76306", "-1.29772", "Cowes", "GB", "Europe/London"),
      c("51.78967", "1.15597", "Clacton-on-Sea", "GB", "Europe/London"),
      c("53.46506", "-1.47217", "Chapletown", "GB", "Europe/London"),
      c("51.64316", "-0.36053", "Bushey", "GB", "Europe/London"),
      c("52.48173", "-2.12139", "Brierley Hill", "GB", "Europe/London"),
      c("53.81667", "-3.05", "Blackpool", "GB", "Europe/London"),
      c("53.0233", "-1.48119", "Belper", "GB", "Europe/London"),
      c("51.65", "-0.2", "Barnet", "GB", "Europe/London"),
      c("56.56317", "-2.58736", "Arbroath", "GB", "Europe/London"),
      c("57.14369", "-2.09814", "Aberdeen", "GB", "Europe/London"),
      c("51.39148", "-0.29825", "Surbiton", "GB", "Europe/London"),
      c("51.42708", "-0.91979", "Lower Earley", "GB", "Europe/London"),
      c("55.82737", "-4.0573", "Viewpark", "GB", "Europe/London"),
      c("41.82143", "41.77921", "Kobuleti", "GE", "Asia/Tbilisi"),
      c("5.30383", "-1.98956", "Tarkwa", "GH", "Africa/Accra"),
      c("7.06273", "-1.4001", "Mampong", "GH", "Africa/Accra"),
      c("6.46346", "-2.31938", "Bibiani", "GH", "Africa/Accra"),
      c("13.56667", "-15.6", "Farafenni", "GM", "Africa/Banjul"),
      c("9.535", "-13.68778", "Camayenne", "GN", "Africa/Conakry"),
      c("14.93333", "-91.11667", "Chichicastenango", "GT", "America/Guatemala"),
      c("22.37066", "114.10479", "Tsuen Wan", "HK", "Asia/Hong_Kong"),
      c("15.48131", "-86.57415", "Olanchito", "HN", "America/Tegucigalpa"),
      c("43.50891", "16.43915", "Split", "HR", "Europe/Zagreb"),
      c("18.65297", "-72.09391", "Thomazeau", "HT", "America/Port-au-Prince"),
      c("18.57677", "-72.22625", "Croix-des-Bouquets", "HT", "America/Port-au-Prince"),
      c("3.3285", "99.1625", "Tebingtinggi", "ID", "Asia/Jakarta"),
      c("3.7278", "98.6738", "Labuhan Deli", "ID", "Asia/Jakarta"),
      c("-7.51611", "109.05389", "Wangon", "ID", "Asia/Jakarta"),
      c("3.31332", "117.59152", "Tarakan", "ID", "Asia/Makassar"),
      c("-6.91806", "106.92667", "Sukabumi", "ID", "Asia/Jakarta"),
      c("-1.26424", "104.09701", "Simpang", "ID", "Asia/Jakarta"),
      c("-7.0981", "109.3243", "Randudongkal", "ID", "Asia/Jakarta"),
      c("0.51667", "101.44167", "Pekanbaru", "ID", "Asia/Jakarta"),
      c("-7.01833", "107.60389", "Pameungpeuk", "ID", "Asia/Jakarta"),
      c("-8.43333", "114.33333", "Muncar", "ID", "Asia/Jakarta"),
      c("-3.5403", "118.9707", "Majene", "ID", "Asia/Makassar"),
      c("-6.8048", "110.8405", "Kudus", "ID", "Asia/Jakarta"),
      c("-7.81667", "112.01667", "Kediri", "ID", "Asia/Jakarta"),
      c("-1.6", "103.61667", "Jambi City", "ID", "Asia/Jakarta"),
      c("-7.57897", "112.23109", "Diwek", "ID", "Asia/Jakarta"),
      c("-6.48167", "106.85417", "Cibinong", "ID", "Asia/Jakarta"),
      c("-7.73379", "113.69785", "Besuki", "ID", "Asia/Jakarta"),
      c("-1.26753", "116.82887", "Balikpapan", "ID", "Asia/Makassar"),
      c("-7.54972", "110.71639", "Ngemplak", "ID", "Asia/Jakarta"),
      c("53.53333", "-7.35", "An Muileann gCearr", "IE", "Europe/Dublin"),
      c("53.43333", "-7.95", "Athlone", "IE", "Europe/Dublin"),
      c("31.92923", "34.86563", "Ramla", "IL", "Asia/Jerusalem"),
      c("32.05971", "34.8732", "Ganei Tikva", "IL", "Asia/Jerusalem"),
      c("31.39547", "34.75699", "Rahat", "IL", "Asia/Jerusalem"),
      c("18.87813", "72.93924", "Uran", "IN", "Asia/Kolkata"),
      c("10.58806", "77.24779", "Udumalaippettai", "IN", "Asia/Kolkata"),
      c("9.82564", "78.25795", "Tiruppuvanam", "IN", "Asia/Kolkata"),
      c("25.49043", "85.94001", "Teghra", "IN", "Asia/Kolkata"),
      c("12.04161", "75.35927", "Talipparamba", "IN", "Asia/Kolkata"),
      c("26.11527", "86.59509", "Supaul", "IN", "Asia/Kolkata"),
      c("34.08565", "74.80555", "Srinagar", "IN", "Asia/Kolkata"),
      c("25.92493", "73.66633", "Sojat", "IN", "Asia/Kolkata"),
      c("14.62072", "74.83554", "Sirsi", "IN", "Asia/Kolkata"),
      c("25.13915", "73.06784", "Sheoganj", "IN", "Asia/Kolkata"),
      c("11.50526", "77.23826", "Sathyamangalam", "IN", "Asia/Kolkata"),
      c("21.46527", "83.97573", "Sambalpur", "IN", "Asia/Kolkata"),
      c("25.87498", "86.59611", "Saharsa", "IN", "Asia/Kolkata"),
      c("12.95629", "78.27539", "Robertsonpet", "IN", "Asia/Kolkata"),
      c("26.44931", "91.61356", "Rangia", "IN", "Asia/Kolkata"),
      c("33.37526", "74.3092", "Rajaori", "IN", "Asia/Kolkata"),
      c("24.81757", "84.63445", "Rafiganj", "IN", "Asia/Kolkata"),
      c("18.51957", "73.85535", "Pune", "IN", "Asia/Kolkata"),
      c("11.93381", "79.82979", "Puducherry", "IN", "Asia/Kolkata"),
      c("28.71271", "77.656", "Pilkhua", "IN", "Asia/Kolkata"),
      c("10.12268", "77.54372", "Periyakulam", "IN", "Asia/Kolkata"),
      c("31.28092", "74.85849", "Patti", "IN", "Asia/Kolkata"),
      c("20.88098", "75.11937", "Parola", "IN", "Asia/Kolkata"),
      c("23.07492", "88.28637", "Pandua", "IN", "Asia/Kolkata"),
      c("18.18158", "76.03889", "Osmanabad", "IN", "Asia/Kolkata"),
      c("25.6439", "77.9129", "Narwar", "IN", "Asia/Kolkata"),
      c("30.81383", "75.16878", "Moga", "IN", "Asia/Kolkata"),
      c("28.98002", "77.70636", "Meerut", "IN", "Asia/Kolkata"),
      c("11.12018", "76.11996", "Manjeri", "IN", "Asia/Kolkata"),
      c("30.21121", "74.4818", "Malaut", "IN", "Asia/Kolkata"),
      c("25.92127", "86.79271", "Madhipura", "IN", "Asia/Kolkata"),
      c("24.05979", "77.40858", "Leteri", "IN", "Asia/Kolkata"),
      c("21.34222", "71.30633", "Kundla", "IN", "Asia/Kolkata"),
      c("22.75218", "72.68533", "Kheda", "IN", "Asia/Kolkata"),
      c("23.1959", "86.51499", "Kenda", "IN", "Asia/Kolkata"),
      c("29.21399", "78.95693", "Kashipur", "IN", "Asia/Kolkata"),
      c("11.00599", "77.5609", "Kangayam", "IN", "Asia/Kolkata"),
      c("22.88783", "84.13864", "Jashpurnagar", "IN", "Asia/Kolkata"),
      c("26.2649", "81.54855", "Jais", "IN", "Asia/Kolkata"),
      c("16.06213", "76.0586", "Hungund", "IN", "Asia/Kolkata"),
      c("29.22254", "79.5286", "Haldwani", "IN", "Asia/Kolkata"),
      c("26.76628", "83.36889", "Gorakhpur", "IN", "Asia/Kolkata"),
      c("12.25282", "79.41727", "Gingee", "IN", "Asia/Kolkata"),
      c("21.53889", "71.57737", "Gariadhar", "IN", "Asia/Kolkata"),
      c("15.73628", "75.96976", "Gajendragarh", "IN", "Asia/Kolkata"),
      c("17.54907", "82.85749", "Elamanchili", "IN", "Asia/Kolkata"),
      c("19.21667", "73.08333", "Dombivli", "IN", "Asia/Kolkata"),
      c("22.19303", "88.18466", "Diamond Harbour", "IN", "Asia/Kolkata"),
      c("12.1277", "78.15794", "Dharmapuri", "IN", "Asia/Kolkata"),
      c("25.75728", "75.37991", "Deoli", "IN", "Asia/Kolkata"),
      c("14.46693", "75.92694", "Davangere", "IN", "Asia/Kolkata"),
      c("25.66795", "85.83636", "Dalsingh Sarai", "IN", "Asia/Kolkata"),
      c("15.5439", "73.7553", "Calangute", "IN", "Asia/Kolkata"),
      c("27.9247", "78.40102", "Chharra", "IN", "Asia/Kolkata"),
      c("32.55531", "76.12647", "Chamba", "IN", "Asia/Kolkata"),
      c("20.88197", "85.83334", "Bhuban", "IN", "Asia/Kolkata"),
      c("19.30157", "72.85107", "Bhayandar", "IN", "Asia/Kolkata"),
      c("15.45144", "78.14797", "Betamcherla", "IN", "Asia/Kolkata"),
      c("26.32293", "91.00632", "Barpeta", "IN", "Asia/Kolkata"),
      c("28.92694", "78.23456", "Bachhraon", "IN", "Asia/Kolkata"),
      c("21.59983", "71.21169", "Amreli", "IN", "Asia/Kolkata"),
      c("10.10649", "76.35484", "Alwaye", "IN", "Asia/Kolkata"),
      c("24.41288", "76.56719", "Aklera", "IN", "Asia/Kolkata"),
      c("23.49668", "86.68363", "Adra", "IN", "Asia/Kolkata"),
      c("22.4711", "88.1453", "Pujali", "IN", "Asia/Kolkata"),
      c("22.10194", "85.37752", "Barbil", "IN", "Asia/Kolkata"),
      c("17.34769", "78.55757", "Lal Bahadur Nagar", "IN", "Asia/Kolkata"),
      c("23.18", "88.58", "Aistala", "IN", "Asia/Kolkata"),
      c("9.57046", "76.32756", "Kalavoor", "IN", "Asia/Kolkata"),
      c("32.61603", "44.02488", "Karbala", "IQ", "Asia/Baghdad"),
      c("35.6803", "51.0193", "Shahre Jadide Andisheh", "IR", "Asia/Tehran"),
      c("36.64852", "51.49621", "Nowshahr", "IR", "Asia/Tehran"),
      c("33.14447", "47.3799", "Darreh Shahr", "IR", "Asia/Tehran"),
      c("33.86419", "48.26258", "Aleshtar", "IR", "Asia/Tehran"),
      c("32.65246", "51.67462", "Isfahan", "IR", "Asia/Tehran"),
      c("38.07789", "13.44275", "Villabate", "IT", "Europe/Rome"),
      c("36.92574", "14.72443", "Ragusa", "IT", "Europe/Rome"),
      c("37.51803", "15.00913", "Misterbianco", "IT", "Europe/Rome"),
      c("37.49223", "15.07041", "Catania", "IT", "Europe/Rome"),
      c("37.31065", "13.57661", "Agrigento", "IT", "Europe/Rome"),
      c("43.78956", "7.60872", "Ventimiglia", "IT", "Europe/Rome"),
      c("44.89784", "8.86374", "Tortona", "IT", "Europe/Rome"),
      c("40.87329", "14.43865", "Somma Vesuviana", "IT", "Europe/Rome"),
      c("40.72586", "8.55552", "Sassari", "IT", "Europe/Rome"),
      c("45.39402", "9.29109", "San Giuliano Milanese", "IT", "Europe/Rome"),
      c("42.67164", "14.01481", "Roseto degli Abruzzi", "IT", "Europe/Rome"),
      c("45.78071", "12.84052", "Portogruaro", "IT", "Europe/Rome"),
      c("43.1122", "12.38878", "Perugia", "IT", "Europe/Rome"),
      c("45.44694", "8.62118", "Novara", "IT", "Europe/Rome"),
      c("45.50369", "11.412", "Montecchio Maggiore-Alte Ceccato", "IT", "Europe/Rome"),
      c("40.55851", "17.80774", "Mesagne", "IT", "Europe/Rome"),
      c("45.79377", "8.88104", "Malnate", "IT", "Europe/Rome"),
      c("42.22718", "14.39024", "Lanciano", "IT", "Europe/Rome"),
      c("45.53069", "9.40531", "Gorgonzola", "IT", "Europe/Rome"),
      c("40.53123", "17.58522", "Francavilla Fontana", "IT", "Europe/Rome"),
      c("43.62558", "13.39954", "Falconara Marittima", "IT", "Europe/Rome"),
      c("45.9836", "12.70038", "Cordenons", "IT", "Europe/Rome"),
      c("44.31771", "9.32241", "Chiavari", "IT", "Europe/Rome"),
      c("44.59445", "11.04979", "Castelfranco Emilia", "IT", "Europe/Rome"),
      c("41.55947", "14.66737", "Campobasso", "IT", "Europe/Rome"),
      c("41.24264", "16.50104", "Bisceglie", "IT", "Europe/Rome"),
      c("41.72063", "12.6723", "Ariccia", "IT", "Europe/Rome"),
      c("40.92298", "14.30935", "Afragola", "IT", "Europe/Rome"),
      c("40.87363", "14.34085", "Volla", "IT", "Europe/Rome"),
      c("18.00747", "-76.78319", "New Kingston", "JM", "America/Jamaica"),
      c("35.8", "137.23333", "Gero", "JP", "Asia/Tokyo"),
      c("34.61667", "135.6", "Yao", "JP", "Asia/Tokyo"),
      c("34.75856", "136.13108", "Ueno-ebisumachi", "JP", "Asia/Tokyo"),
      c("34.81667", "137.4", "Toyokawa", "JP", "Asia/Tokyo"),
      c("34.4833", "136.84186", "Toba", "JP", "Asia/Tokyo"),
      c("36.65", "138.31667", "Suzaka", "JP", "Asia/Tokyo"),
      c("34.9", "137.5", "Shinshiro", "JP", "Asia/Tokyo"),
      c("35.06667", "135.21667", "Sasayama", "JP", "Asia/Tokyo"),
      c("36", "139.55722", "Okegawa", "JP", "Asia/Tokyo"),
      c("36.53333", "136.61667", "Nonoichi", "JP", "Asia/Tokyo"),
      c("36.75965", "137.36215", "Namerikawa", "JP", "Asia/Tokyo"),
      c("35", "136.51667", "Komono", "JP", "Asia/Tokyo"),
      c("33.4425", "129.96972", "Karatsu", "JP", "Asia/Tokyo"),
      c("35.30889", "139.55028", "Kamakura", "JP", "Asia/Tokyo"),
      c("34.25", "135.31667", "Iwade", "JP", "Asia/Tokyo"),
      c("35.82756", "137.95378", "Ina", "JP", "Asia/Tokyo"),
      c("33.3213", "130.94098", "Hita", "JP", "Asia/Tokyo"),
      c("36.24624", "139.07204", "Fujioka", "JP", "Asia/Tokyo"),
      c("36.33011", "138.89585", "Annaka", "JP", "Asia/Tokyo"),
      c("35.815", "139.6853", "Shimotoda", "JP", "Asia/Tokyo"),
      c("39.46667", "141.95", "Yamada", "JP", "Asia/Tokyo"),
      c("37.56667", "140.11667", "Inawashiro", "JP", "Asia/Tokyo"),
      c("43.82634", "144.09638", "Motomachi", "JP", "Asia/Tokyo"),
      c("44.35056", "142.45778", "Nayoro", "JP", "Asia/Tokyo"),
      c("41.77583", "140.73667", "Hakodate", "JP", "Asia/Tokyo"),
      c("35.48199", "137.02166", "Minokamo", "JP", "Asia/Tokyo"),
      c("0.03813", "36.36339", "Nyahururu", "KE", "Africa/Nairobi"),
      c("3.11988", "35.59642", "Lodwar", "KE", "Africa/Nairobi"),
      c("0.46005", "34.11169", "Busia", "KE", "Africa/Nairobi"),
      c("40.93333", "73", "Jalal-Abad", "KG", "Asia/Bishkek"),
      c("13.65805", "102.56365", "Paoy Paet", "KH", "Asia/Phnom_Penh"),
      c("36.82167", "128.63083", "Eisen", "KR", "Asia/Seoul"),
      c("37.1759", "128.9889", "T\u002c\u00C4\u00F4aebaek", "KR", "Asia/Seoul"),
      c("36.20389", "127.08472", "Nonsan", "KR", "Asia/Seoul"),
      c("37.65639", "126.835", "Goyang-si", "KR", "Asia/Seoul"),
      c("36.6009", "126.665", "Hongseong", "KR", "Asia/Seoul"),
      c("34.8825", "128.62667", "Sinhyeon", "KR", "Asia/Seoul"),
      c("47.83333", "59.6", "Shalqar", "KZ", "Asia/Aqtobe"),
      c("47.46657", "84.87144", "Zaysan", "KZ", "Asia/Almaty"),
      c("44.85278", "65.50917", "Kyzylorda", "KZ", "Asia/Qyzylorda"),
      c("43.41949", "77.0202", "Otegen Batyra", "KZ", "Asia/Almaty"),
      c("6.84019", "79.87116", "Dehiwala-Mount Lavinia", "LK", "Asia/Colombo"),
      c("6.9909", "79.883", "Hendala", "LK", "Asia/Colombo"),
      c("7.57944", "-8.53778", "New Yekepa", "LR", "Africa/Monrovia"),
      c("55.25", "24.75", "Ukmerge", "LT", "Europe/Vilnius"),
      c("54.39635", "24.04142", "Alytus", "LT", "Europe/Vilnius"),
      c("30.75545", "20.22625", "Ajdabiya", "LY", "Africa/Tripoli"),
      c("24.96334", "10.18003", "Ghat", "LY", "Africa/Tripoli"),
      c("33.92866", "-6.90656", "Temara", "MA", "Africa/Casablanca"),
      c("33.42585", "-6.00137", "Oulmes", "MA", "Africa/Casablanca"),
      c("34.31", "-2.16", "Jerada", "MA", "Africa/Casablanca"),
      c("33.43443", "-5.22126", "Azrou", "MA", "Africa/Casablanca"),
      c("48.15659", "28.28489", "Soroca", "MD", "Europe/Chisinau"),
      c("42.28639", "18.84", "Budva", "ME", "Europe/Podgorica"),
      c("-22.9", "44.53333", "Sakaraha", "MG", "Indian/Antananarivo"),
      c("-21.15", "46.58333", "Ikalamavony", "MG", "Indian/Antananarivo"),
      c("-19.65", "47.31667", "Antanifotsy", "MG", "Indian/Antananarivo"),
      c("-17.83333", "48.41667", "Ambatondrazaka", "MG", "Indian/Antananarivo"),
      c("42", "21.32778", "Saraj", "MK", "Europe/Skopje"),
      c("41.92361", "20.91361", "Bogovinje", "MK", "Europe/Skopje"),
      c("12.74409", "-8.07257", "Kati", "ML", "Africa/Bamako"),
      c("14.0823", "98.19151", "Dawei", "MM", "Asia/Yangon"),
      c("16.68911", "98.50893", "Myawadi", "MM", "Asia/Yangon"),
      c("17.30858", "97.01124", "Kyaikto", "MM", "Asia/Yangon"),
      c("47.90771", "106.88324", "Ulan Bator", "MN", "Asia/Ulaanbaatar"),
      c("14.67751", "-60.94228", "Le Robert", "MQ", "America/Martinique"),
      c("35.89972", "14.51472", "Valletta", "MT", "Europe/Malta"),
      c("-13.7804", "34.4587", "Salima", "MW", "Africa/Blantyre"),
      c("16.75973", "-93.11308", "Tuxtla", "MX", "America/Mexico_City"),
      c("19.8173", "-97.35992", "Teziutlan", "MX", "America/Mexico_City"),
      c("21.28306", "-89.66123", "Progreso", "MX", "America/Merida"),
      c("17.06542", "-96.72365", "Oaxaca", "MX", "America/Mexico_City"),
      c("25.87972", "-97.50417", "Heroica Matamoros", "MX", "America/Matamoros"),
      c("19.32932", "-98.1664", "Contla", "MX", "America/Mexico_City"),
      c("17.94979", "-94.91386", "Acayucan", "MX", "America/Mexico_City"),
      c("19.32889", "-99.32556", "San Lorenzo Acopilco", "MX", "America/Mexico_City"),
      c("20.22816", "-103.5687", "Zacoalco de Torres", "MX", "America/Mexico_City"),
      c("20.74122", "-100.44843", "Santa Rosa Jauregui", "MX", "America/Mexico_City"),
      c("20.21322", "-100.88023", "Salvatierra", "MX", "America/Mexico_City"),
      c("19.64745", "-102.04897", "Paracho de Verduzco", "MX", "America/Mexico_City"),
      c("20.28527", "-103.42897", "Jocotepec", "MX", "America/Mexico_City"),
      c("21.01858", "-101.2591", "Guanajuato", "MX", "America/Mexico_City"),
      c("22.49396", "-105.36369", "Acaponeta", "MX", "America/Mazatlan"),
      c("19.04222", "-98.11889", "Casa Blanca", "MX", "America/Mexico_City"),
      c("1.6561", "103.6032", "Kulai", "MY", "Asia/Kuala_Lumpur"),
      c("5.90702", "116.10146", "Donggongon", "MY", "Asia/Kuching"),
      c("4.88441", "101.96857", "Gua Musang", "MY", "Asia/Kuala_Lumpur"),
      c("5.4709", "100.24529", "Batu Feringgi", "MY", "Asia/Kuala_Lumpur"),
      c("4.02219", "101.02083", "Teluk Intan", "MY", "Asia/Kuala_Lumpur"),
      c("1.6", "103.81667", "Ulu Tiram", "MY", "Asia/Kuala_Lumpur"),
      c("2.2139", "102.3278", "Kampung Ayer Molek", "MY", "Asia/Kuala_Lumpur"),
      c("-23.85972", "35.34722", "Maxixe", "MZ", "Africa/Maputo"),
      c("-21.98333", "16.91667", "Okahandja", "NA", "Africa/Windhoek"),
      c("13.70727", "9.15013", "Mirriah", "NE", "Africa/Niamey"),
      c("4.92675", "6.26764", "Yenagoa", "NG", "Africa/Lagos"),
      c("6.8485", "3.64633", "Shagamu", "NG", "Africa/Lagos"),
      c("7.6", "4.18333", "Olupona", "NG", "Africa/Lagos"),
      c("6.15038", "6.83042", "Nkpor", "NG", "Africa/Lagos"),
      c("6.45407", "3.39467", "Lagos", "NG", "Africa/Lagos"),
      c("9.58126", "8.2926", "Kafanchan", "NG", "Africa/Lagos"),
      c("7.62789", "4.74161", "Ilesa", "NG", "Africa/Lagos"),
      c("7.50251", "5.06258", "Igbara-Odo", "NG", "Africa/Lagos"),
      c("11.86064", "9.0027", "Gaya", "NG", "Africa/Lagos"),
      c("7.65649", "4.92235", "Efon-Alaaye", "NG", "Africa/Lagos"),
      c("10.61285", "12.19458", "Biu", "NG", "Africa/Lagos"),
      c("12.74482", "4.52514", "Argungu", "NG", "Africa/Lagos"),
      c("13.48082", "-86.58208", "Somoto", "NI", "America/Managua"),
      c("11.84962", "-86.19903", "Jinotepe", "NI", "America/Managua"),
      c("52.09", "5.23333", "Zeist", "NL", "Europe/Amsterdam"),
      c("51.65333", "5.2875", "Vught", "NL", "Europe/Amsterdam"),
      c("51.44889", "5.51978", "Tongelre", "NL", "Europe/Amsterdam"),
      c("51.95838", "4.47124", "Schiebroek", "NL", "Europe/Amsterdam"),
      c("52.31333", "6.92917", "Oldenzaal", "NL", "Europe/Amsterdam"),
      c("52.26083", "7.00417", "Losser", "NL", "Europe/Amsterdam"),
      c("53.16167", "6.76111", "Hoogezand", "NL", "Europe/Amsterdam"),
      c("52.57583", "6.61944", "Hardenberg", "NL", "Europe/Amsterdam"),
      c("52.71083", "5.74861", "Emmeloord", "NL", "Europe/Amsterdam"),
      c("51.955", "5.22778", "Culemborg", "NL", "Europe/Amsterdam"),
      c("52.14", "5.58472", "Barneveld", "NL", "Europe/Amsterdam"),
      c("68.79833", "16.54165", "Harstad", "NO", "Europe/Oslo"),
      c("-44.39672", "171.25364", "Timaru", "NZ", "Pacific/Auckland"),
      c("-38.65333", "178.00417", "Gisborne", "NZ", "Pacific/Auckland"),
      c("8.88988", "-79.62603", "Veracruz", "PA", "America/Panama"),
      c("9.15093", "-79.62098", "Chilibre", "PA", "America/Panama"),
      c("-3.74912", "-73.25383", "Iquitos", "PE", "America/Lima"),
      c("-16.25", "-69.08333", "Yunguyo", "PE", "America/Lima"),
      c("-15.21194", "-75.11028", "Minas de Marcona", "PE", "America/Lima"),
      c("-11.94306", "-76.70944", "Chosica", "PE", "America/Lima"),
      c("-5.85746", "144.23058", "Mount Hagen", "PG", "Pacific/Port_Moresby"),
      c("6.33444", "124.95278", "Tupi", "PH", "Asia/Manila"),
      c("10.7375", "122.9666", "Talisay", "PH", "Asia/Manila"),
      c("12.97389", "123.99333", "Sorsogon", "PH", "Asia/Manila"),
      c("9.3337", "122.8637", "Santa Catalina", "PH", "Asia/Manila"),
      c("12.35275", "121.06761", "San Jose", "PH", "Asia/Manila"),
      c("6.95194", "121.96361", "Recodo", "PH", "Asia/Manila"),
      c("14.66", "120.56528", "Pilar", "PH", "Asia/Manila"),
      c("10.20898", "123.758", "Naga", "PH", "Asia/Manila"),
      c("12.37169", "123.62494", "Masbate", "PH", "Asia/Manila"),
      c("16.0438", "120.4861", "Manaoag", "PH", "Asia/Manila"),
      c("10.13361", "124.84472", "Maasin", "PH", "Asia/Manila"),
      c("16.455", "120.5875", "La Trinidad", "PH", "Asia/Manila"),
      c("9.6531", "124.3697", "Jagna", "PH", "Asia/Manila"),
      c("14.8361", "120.97844", "Guyong", "PH", "Asia/Manila"),
      c("8.56697", "123.33471", "Dipolog", "PH", "Asia/Manila"),
      c("10.31672", "123.89071", "Cebu City", "PH", "Asia/Manila"),
      c("14.14989", "121.3152", "Calauan", "PH", "Asia/Manila"),
      c("15.72892", "120.57224", "Burgos", "PH", "Asia/Manila"),
      c("14.95472", "120.89694", "Baliuag", "PH", "Asia/Manila"),
      c("14.62578", "121.12251", "Antipolo", "PH", "Asia/Manila"),
      c("27.52948", "68.75915", "Khairpur Mir\u002c\u00c4\u00f4s", "PK", "Asia/Karachi"),
      c("26.9423", "68.11759", "Tharu Shah", "PK", "Asia/Karachi"),
      c("31.82539", "72.54064", "Sillanwali", "PK", "Asia/Karachi"),
      c("31.71667", "73.38333", "Sangla Hill", "PK", "Asia/Karachi"),
      c("30.29184", "71.67164", "Qadirpur Ran", "PK", "Asia/Karachi"),
      c("31.96258", "73.97117", "Naushahra Virkan", "PK", "Asia/Karachi"),
      c("32.57756", "71.52847", "Mianwali", "PK", "Asia/Karachi"),
      c("27.55898", "68.21204", "Larkana", "PK", "Asia/Karachi"),
      c("30.46907", "70.96699", "Kot Addu", "PK", "Asia/Karachi"),
      c("30.76468", "74.12286", "Kanganpur", "PK", "Asia/Karachi"),
      c("25.95533", "68.88871", "Jhol", "PK", "Asia/Karachi"),
      c("29.69221", "72.54566", "Hasilpur", "PK", "Asia/Karachi"),
      c("32.17629", "75.06583", "Fazilpur", "PK", "Asia/Karachi"),
      c("32.87533", "71.57118", "Daud Khel", "PK", "Asia/Karachi"),
      c("25.80565", "68.49143", "Bhit Shah", "PK", "Asia/Karachi"),
      c("29.38242", "70.91106", "Alipur", "PK", "Asia/Karachi"),
      c("51.14942", "15.00835", "Zgorzelec", "PL", "Europe/Warsaw"),
      c("54.58048", "16.86194", "Ustka", "PL", "Europe/Warsaw"),
      c("50.5107", "18.30056", "Strzelce Opolskie", "PL", "Europe/Warsaw"),
      c("54.60528", "18.34717", "Reda", "PL", "Europe/Warsaw"),
      c("50.20528", "19.27498", "Jaworzno", "PL", "Europe/Warsaw"),
      c("50.86079", "17.4674", "Brzeg", "PL", "Europe/Warsaw"),
      c("18.42745", "-67.15407", "Aguadilla", "PR", "America/Puerto_Rico"),
      c("18.03496", "-66.8499", "Yauco", "PR", "America/Puerto_Rico"),
      c("31.78336", "35.23388", "East Jerusalem", "PS", "Asia/Hebron"),
      c("38.72706", "-9.24671", "Carnaxide", "PT", "Europe/Lisbon"),
      c("37.08819", "-8.2503", "Albufeira", "PT", "Europe/Lisbon"),
      c("41.20485", "-8.33147", "Paredes", "PT", "Europe/Lisbon"),
      c("41.1053", "-7.32097", "Custoias", "PT", "Europe/Lisbon"),
      c("37.74615", "-25.66689", "Ponta Delgada", "PT", "Atlantic/Azores"),
      c("-20.88231", "55.4504", "Saint-Denis", "RE", "Indian/Reunion"),
      c("44.43579", "26.01649", "Sector 6", "RO", "Europe/Bucharest"),
      c("44.22639", "22.53083", "Negotin", "RS", "Europe/Belgrade"),
      c("44.97639", "19.61222", "Sremska Mitrovica", "RS", "Europe/Belgrade"),
      c("53.53395", "33.72798", "Zhukovka", "RU", "Europe/Moscow"),
      c("46.7055", "38.2739", "Yeysk", "RU", "Europe/Moscow"),
      c("44.98901", "38.94324", "Yablonovskiy", "RU", "Europe/Moscow"),
      c("56.03361", "35.96944", "Volokolamsk", "RU", "Europe/Moscow"),
      c("57.97472", "33.2525", "Valday", "RU", "Europe/Moscow"),
      c("56.85836", "35.90057", "Tver", "RU", "Europe/Moscow"),
      c("55.62047", "37.49338", "Tyoply Stan", "RU", "Europe/Moscow"),
      c("54.90083", "38.07083", "Stupino", "RU", "Europe/Moscow"),
      c("55.63711", "37.38115", "Solntsevo", "RU", "Europe/Moscow"),
      c("59.80917", "30.38167", "Shushary", "RU", "Europe/Moscow"),
      c("64.5635", "39.8302", "Severodvinsk", "RU", "Europe/Moscow"),
      c("51.78771", "56.36091", "Saraktash", "RU", "Asia/Yekaterinburg"),
      c("53.95278", "32.86389", "Roslavl\u002c\u00c4\u00f4", "RU", "Europe/Moscow"),
      c("51.40944", "46.04833", "Privolzhskiy", "RU", "Europe/Saratov"),
      c("61.78491", "34.34691", "Petrozavodsk", "RU", "Europe/Moscow"),
      c("53.37596", "51.3452", "Otradnyy", "RU", "Europe/Samara"),
      c("54.48147", "53.47103", "Oktyabr\u002c\u00c4\u00f4skiy", "RU", "Asia/Yekaterinburg"),
      c("43.96222", "43.63417", "Novopavlovsk", "RU", "Europe/Moscow"),
      c("53.53041", "43.67663", "Nizhniy Lomov", "RU", "Europe/Moscow"),
      c("55.38752", "36.73307", "Naro-Fominsk", "RU", "Europe/Moscow"),
      c("50.06", "43.2379", "Mikhaylovka", "RU", "Europe/Volgograd"),
      c("55.64776", "38.02486", "Malakhovka", "RU", "Europe/Moscow"),
      c("55.85", "37.56667", "Likhobory", "RU", "Europe/Moscow"),
      c("51.4781", "57.3552", "Kuvandyk", "RU", "Asia/Yekaterinburg"),
      c("44.92934", "37.99117", "Krymsk", "RU", "Europe/Moscow"),
      c("54.03876", "43.91385", "Kovylkino", "RU", "Europe/Moscow"),
      c("60.02427", "30.28491", "Kolomyagi", "RU", "Europe/Moscow"),
      c("53.93361", "37.92792", "Kireyevsk", "RU", "Europe/Moscow"),
      c("54.84444", "38.16694", "Kashira", "RU", "Europe/Moscow"),
      c("58.7002", "59.4839", "Kachkanar", "RU", "Asia/Yekaterinburg"),
      c("43.35071", "46.10925", "Gudermes", "RU", "Europe/Moscow"),
      c("57.30185", "39.85331", "Gavrilov-Yam", "RU", "Europe/Moscow"),
      c("53.59782", "34.33825", "Dyat\u002c\u00c4\u00f4kovo", "RU", "Europe/Moscow"),
      c("58.1908", "40.17171", "Danilov", "RU", "Europe/Moscow"),
      c("42.819", "47.1192", "Buynaksk", "RU", "Europe/Moscow"),
      c("53.77166", "38.12408", "Bogoroditsk", "RU", "Europe/Moscow"),
      c("54.39304", "53.26023", "Bavly", "RU", "Europe/Moscow"),
      c("55.39485", "43.83992", "Arzamas", "RU", "Europe/Moscow"),
      c("54.8421", "46.5813", "Alatyr\u002c\u00c4\u00f4", "RU", "Europe/Moscow"),
      c("58.63667", "59.80222", "Lesnoy", "RU", "Asia/Yekaterinburg"),
      c("55.8736", "85.4265", "Yashkino", "RU", "Asia/Novokuznetsk"),
      c("58.04254", "65.27258", "Tavda", "RU", "Asia/Yekaterinburg"),
      c("55.54028", "89.20083", "Sharypovo", "RU", "Asia/Krasnoyarsk"),
      c("53.30972", "83.62389", "Novosilikatnyy", "RU", "Asia/Barnaul"),
      c("58.23583", "92.48278", "Lesosibirsk", "RU", "Asia/Krasnoyarsk"),
      c("56.11281", "69.49015", "Ishim", "RU", "Asia/Yekaterinburg"),
      c("56.9083", "60.8019", "Beryozovsky", "RU", "Asia/Yekaterinburg"),
      c("55.75556", "60.70278", "Ozersk", "RU", "Asia/Yekaterinburg"),
      c("51.82721", "107.60627", "Ulan-Ude", "RU", "Asia/Irkutsk"),
      c("45.47885", "133.42825", "Lesozavodsk", "RU", "Asia/Vladivostok"),
      c("65.93381", "111.4834", "Aykhal", "RU", "Asia/Yakutsk"),
      c("53.14657", "140.72287", "Nikolayevsk-on-Amure", "RU", "Asia/Vladivostok"),
      c("60.97944", "76.92421", "Izluchinsk", "RU", "Asia/Yekaterinburg"),
      c("-1.9487", "30.4347", "Rwamagana", "RW", "Africa/Kigali"),
      c("27.0174", "49.62251", "Al Jubayl", "SA", "Asia/Riyadh"),
      c("11.8659", "34.3869", "Ar Ruseris", "SD", "Africa/Khartoum"),
      c("61.72744", "17.10558", "Hudiksvall", "SE", "Europe/Stockholm"),
      c("59.33333", "18.28333", "Boo", "SE", "Europe/Stockholm"),
      c("48.8449", "17.22635", "Skalica", "SK", "Europe/Bratislava"),
      c("48.43174", "17.8031", "Hlohovec", "SK", "Europe/Bratislava"),
      c("8.48714", "-13.2356", "Freetown", "SL", "Africa/Freetown"),
      c("-0.35817", "42.54536", "Kismayo", "SO", "Africa/Mogadishu"),
      c("9.89206", "43.38531", "Baki", "SO", "Africa/Mogadishu"),
      c("13.73417", "-89.71472", "Sonzacate", "SV", "America/El_Salvador"),
      c("13.70167", "-89.10944", "Ilopango", "SV", "America/El_Salvador"),
      c("34.5624", "38.28402", "Tadmur", "SY", "Asia/Damascus"),
      c("35.95664", "36.7138", "Binnish", "SY", "Asia/Damascus"),
      c("12.18441", "18.69303", "Mongo", "TD", "Africa/Ndjamena"),
      c("15.46063", "99.89166", "Thap Than", "TH", "Asia/Bangkok"),
      c("8.43333", "99.96667", "Nakhon Si Thammarat", "TH", "Asia/Bangkok"),
      c("13.51825", "99.95469", "Damnoen Saduak", "TH", "Asia/Bangkok"),
      c("15.79408", "104.1451", "Yasothon", "TH", "Asia/Bangkok"),
      c("6.25947", "102.05461", "Tak Bai", "TH", "Asia/Bangkok"),
      c("16.0567", "103.65309", "Roi Et", "TH", "Asia/Bangkok"),
      c("13.44581", "101.18445", "Phanat Nikhom", "TH", "Asia/Bangkok"),
      c("13.8196", "100.04427", "Nakhon Pathom", "TH", "Asia/Bangkok"),
      c("14.64056", "104.64992", "Kantharalak", "TH", "Asia/Bangkok"),
      c("15.58552", "102.42587", "Bua Yai", "TH", "Asia/Bangkok"),
      c("14.37395", "100.48528", "Bang Ban", "TH", "Asia/Bangkok"),
      c("38.55632", "69.01354", "Vahdat", "TJ", "Asia/Dushanbe"),
      c("-8.99167", "125.21972", "Maliana", "TL", "Asia/Dili"),
      c("36.08497", "9.37082", "Siliana", "TN", "Africa/Tunis"),
      c("35.72917", "10.58082", "Msaken", "TN", "Africa/Tunis"),
      c("36.46917", "10.78222", "Beni Khiar", "TN", "Africa/Tunis"),
      c("37.16911", "10.03478", "El Alia", "TN", "Africa/Tunis"),
      c("38.13708", "41.00817", "Silvan", "TR", "Europe/Istanbul"),
      c("39.22493", "42.85693", "Patnos", "TR", "Europe/Istanbul"),
      c("37.31309", "40.74357", "Mardin", "TR", "Europe/Istanbul"),
      c("37.58105", "29.26639", "Serinhisar", "TR", "Europe/Istanbul"),
      c("37.05944", "37.3825", "Gaziantep", "TR", "Europe/Istanbul"),
      c("39.59611", "27.02444", "Edremit", "TR", "Europe/Istanbul"),
      c("39.12074", "27.18052", "Bergama", "TR", "Europe/Istanbul"),
      c("38.37255", "34.02537", "Aksaray", "TR", "Europe/Istanbul"),
      c("40.98894", "28.67582", "Yakuplu", "TR", "Europe/Istanbul"),
      c("40.1675", "34.37389", "Sungurlu", "TR", "Europe/Istanbul"),
      c("40.37528", "28.88222", "Mudanya", "TR", "Europe/Istanbul"),
      c("10.66668", "-61.51889", "Port of Spain", "TT", "America/Port_of_Spain"),
      c("23.5654", "119.58627", "Magong", "TW", "Asia/Taipei"),
      c("-2.68333", "33", "Usagara", "TZ", "Africa/Dar_es_Salaam"),
      c("-4.06667", "37.73333", "Same", "TZ", "Africa/Dar_es_Salaam"),
      c("-6.25", "38.66667", "Mvomero", "TZ", "Africa/Dar_es_Salaam"),
      c("-4.83", "29.65806", "Mwandiga", "TZ", "Africa/Dar_es_Salaam"),
      c("-6.8", "39.25", "Magomeni", "TZ", "Africa/Dar_es_Salaam"),
      c("-7.60361", "37.00438", "Kidodi", "TZ", "Africa/Dar_es_Salaam"),
      c("-7.76667", "35.7", "Iringa", "TZ", "Africa/Dar_es_Salaam"),
      c("-5.41667", "38.01667", "Chanika", "TZ", "Africa/Dar_es_Salaam"),
      c("-10.33333", "39.28333", "Nyangao", "TZ", "Africa/Dar_es_Salaam"),
      c("49.07866", "30.96755", "Zvenihorodka", "UA", "Europe/Kiev"),
      c("47.56494", "31.33078", "Voznesensk", "UA", "Europe/Kiev"),
      c("49.41029", "38.15035", "Svatove", "UA", "Europe/Zaporozhye"),
      c("50.18545", "27.06365", "Shepetivka", "UA", "Europe/Kiev"),
      c("47.48444", "36.25361", "Polohy", "UA", "Europe/Zaporozhye"),
      c("46.75451", "33.34864", "Nova Kakhovka", "UA", "Europe/Kiev"),
      c("50.75932", "25.34244", "Lutsk", "UA", "Europe/Kiev"),
      c("49.65186", "26.97253", "Krasyliv", "UA", "Europe/Kiev"),
      c("46.65581", "32.6178", "Kherson", "UA", "Europe/Kiev"),
      c("51.67822", "33.9162", "Hlukhiv", "UA", "Europe/Kiev"),
      c("45.99194", "29.41824", "Artsyz", "UA", "Europe/Kiev"),
      c("2.41669", "30.98551", "Paidha", "UG", "Africa/Kampala"),
      c("3.27833", "32.88667", "Kitgum", "UG", "Africa/Kampala"),
      c("3.02013", "30.91105", "Arua", "UG", "Africa/Kampala"),
      c("33.45122", "-86.99666", "Hueytown", "US", "America/Chicago"),
      c("33.44872", "-86.78777", "Vestavia Hills", "US", "America/Chicago"),
      c("35.25064", "-91.73625", "Searcy", "US", "America/Chicago"),
      c("26.68451", "-80.66756", "Belle Glade", "US", "America/New_York"),
      c("28.54944", "-81.77285", "Clermont", "US", "America/New_York"),
      c("28.90054", "-81.26367", "Deltona", "US", "America/New_York"),
      c("29.65163", "-82.32483", "Gainesville", "US", "America/New_York"),
      c("25.67927", "-80.31727", "Kendall", "US", "America/New_York"),
      c("28.15112", "-82.46148", "Lutz", "US", "America/New_York"),
      c("26.2173", "-80.22588", "North Lauderdale", "US", "America/New_York"),
      c("30.17746", "-81.38758", "Palm Valley", "US", "America/New_York"),
      c("26.91756", "-82.07842", "Punta Gorda Isles", "US", "America/New_York"),
      c("27.71809", "-82.35176", "Sun City Center", "US", "America/New_York"),
      c("27.09978", "-82.45426", "Venice", "US", "America/New_York"),
      c("34.06635", "-84.67837", "Acworth", "US", "America/New_York"),
      c("32.54044", "-82.90375", "Dublin", "US", "America/New_York"),
      c("33.08014", "-83.2321", "Milledgeville", "US", "America/New_York"),
      c("33.54428", "-84.23381", "Stockbridge", "US", "America/New_York"),
      c("38.58894", "-89.99038", "Fairview Heights", "US", "America/Chicago"),
      c("39.78504", "-85.76942", "Greenfield", "US", "America/Indiana/Indianapolis"),
      c("38.06084", "-97.92977", "Hutchinson", "US", "America/Chicago"),
      c("39.08367", "-84.50855", "Covington", "US", "America/New_York"),
      c("36.61033", "-88.31476", "Murray", "US", "America/Chicago"),
      c("29.84576", "-90.10674", "Estelle", "US", "America/Chicago"),
      c("32.52515", "-93.75018", "Shreveport", "US", "America/Chicago"),
      c("38.96372", "-76.99081", "Chillum", "US", "America/New_York"),
      c("38.70734", "-77.02303", "Fort Washington", "US", "America/New_York"),
      c("39.33427", "-76.43941", "Middle River", "US", "America/New_York"),
      c("39.32011", "-76.51552", "Rosedale", "US", "America/New_York"),
      c("39.32288", "-76.72803", "Woodlawn", "US", "America/New_York"),
      c("39.09112", "-94.41551", "Independence", "US", "America/Chicago"),
      c("37.95143", "-91.77127", "Rolla", "US", "America/Chicago"),
      c("33.41012", "-91.06177", "Greenville", "US", "America/Chicago"),
      c("34.25807", "-88.70464", "Tupelo", "US", "America/Chicago"),
      c("35.05266", "-78.87836", "Fayetteville", "US", "America/New_York"),
      c("34.25628", "-78.04471", "Leland", "US", "America/New_York"),
      c("35.88264", "-80.08199", "Thomasville", "US", "America/New_York"),
      c("39.71734", "-74.96933", "Sicklerville", "US", "America/New_York"),
      c("39.43534", "-84.20299", "Lebanon", "US", "America/New_York"),
      c("34.77453", "-96.67834", "Ada", "US", "America/Chicago"),
      c("35.74788", "-95.36969", "Muskogee", "US", "America/Chicago"),
      c("39.96097", "-75.60804", "West Chester", "US", "America/New_York"),
      c("33.98154", "-81.23621", "Lexington", "US", "America/New_York"),
      c("36.02506", "-86.77917", "Brentwood Estates", "US", "America/Chicago"),
      c("35.61452", "-88.81395", "Jackson", "US", "America/Chicago"),
      c("32.44874", "-99.73314", "Abilene", "US", "America/Chicago"),
      c("30.16688", "-96.39774", "Brenham", "US", "America/Chicago"),
      c("31.12406", "-97.90308", "Copperas Cove", "US", "America/Chicago"),
      c("29.53885", "-95.44744", "Fresno", "US", "America/Chicago"),
      c("30.5427", "-97.54667", "Hutto", "US", "America/Chicago"),
      c("32.5007", "-94.74049", "Longview", "US", "America/Chicago"),
      c("31.76212", "-95.63079", "Palestine", "US", "America/Chicago"),
      c("26.18924", "-98.15529", "San Juan", "US", "America/Chicago"),
      c("32.35126", "-95.30106", "Tyler", "US", "America/Chicago"),
      c("37.52487", "-77.55777", "Bon Air", "US", "America/New_York"),
      c("38.91817", "-78.19444", "Front Royal", "US", "America/New_York"),
      c("37.60876", "-77.37331", "Mechanicsville", "US", "America/New_York"),
      c("39.00622", "-77.4286", "Sterling", "US", "America/New_York"),
      c("39.45621", "-77.96389", "Martinsburg", "US", "America/New_York"),
      c("41.27621", "-72.86843", "East Haven", "US", "America/New_York"),
      c("41.14676", "-73.49484", "New Canaan", "US", "America/New_York"),
      c("41.55815", "-73.0515", "Waterbury", "US", "America/New_York"),
      c("41.6764", "-91.58045", "Coralville", "US", "America/Chicago"),
      c("41.57721", "-93.71133", "West Des Moines", "US", "America/Chicago"),
      c("41.15376", "-87.88754", "Bourbonnais", "US", "America/Chicago"),
      c("42.24113", "-88.3162", "Crystal Lake", "US", "America/Chicago"),
      c("41.72059", "-87.70172", "Evergreen Park", "US", "America/Chicago"),
      c("42.16808", "-88.42814", "Huntley", "US", "America/Chicago"),
      c("41.8542", "-87.66561", "Lower West Side", "US", "America/Chicago"),
      c("41.80753", "-87.65644", "New City", "US", "America/Chicago"),
      c("40.56754", "-89.64066", "Pekin", "US", "America/Chicago"),
      c("41.84364", "-87.71255", "South Lawndale", "US", "America/Chicago"),
      c("41.85059", "-87.882", "Westchester", "US", "America/Chicago"),
      c("41.75338", "-86.11084", "Granger", "US", "America/Indiana/Indianapolis"),
      c("41.47892", "-87.45476", "Schererville", "US", "America/Chicago"),
      c("42.35843", "-71.05977", "Boston", "US", "America/New_York"),
      c("42.58342", "-71.8023", "Fitchburg", "US", "America/New_York"),
      c("42.4251", "-71.06616", "Malden", "US", "America/New_York"),
      c("42.52787", "-70.92866", "Peabody", "US", "America/New_York"),
      c("41.9001", "-71.08977", "Taunton", "US", "America/New_York"),
      c("43.91452", "-69.96533", "Brunswick", "US", "America/New_York"),
      c("42.30865", "-83.48216", "Canton", "US", "America/Detroit"),
      c("46.09273", "-88.64235", "Iron River", "US", "America/Menominee"),
      c("42.97086", "-82.42491", "Port Huron", "US", "America/Detroit"),
      c("42.7392", "-84.62081", "Waverly", "US", "America/Detroit"),
      c("45.0408", "-93.263", "Columbia Heights", "US", "America/Chicago"),
      c("45.16024", "-93.08883", "Lino Lakes", "US", "America/Chicago"),
      c("44.73941", "-93.12577", "Rosemount", "US", "America/Chicago"),
      c("47.92526", "-97.03285", "Grand Forks", "US", "America/Chicago"),
      c("42.93369", "-72.27814", "Keene", "US", "America/New_York"),
      c("40.94065", "-73.99681", "Dumont", "US", "America/New_York"),
      c("40.72816", "-74.07764", "Jersey City", "US", "America/New_York"),
      c("40.82232", "-74.15987", "Nutley", "US", "America/New_York"),
      c("40.65538", "-74.38987", "Scotch Plains", "US", "America/New_York"),
      c("40.5576", "-74.28459", "Woodbridge", "US", "America/New_York"),
      c("40.57788", "-73.95958", "Brighton Beach", "US", "America/New_York"),
      c("40.67705", "-73.89125", "Cypress Hills", "US", "America/New_York"),
      c("40.60538", "-73.75513", "Far Rockaway", "US", "America/New_York"),
      c("40.72371", "-73.95097", "Greenpoint", "US", "America/New_York"),
      c("40.64621", "-73.97069", "Kensington", "US", "America/New_York"),
      c("40.68066", "-73.47429", "Massapequa", "US", "America/New_York"),
      c("41.50343", "-74.01042", "Newburgh", "US", "America/New_York"),
      c("40.63316", "-74.13653", "Port Richmond", "US", "America/New_York"),
      c("41.0051", "-73.78458", "Scarsdale", "US", "America/New_York"),
      c("43.1009", "-75.23266", "Utica", "US", "America/New_York"),
      c("40.93121", "-73.89875", "Yonkers", "US", "America/New_York"),
      c("41.55838", "-81.56929", "Collinwood", "US", "America/New_York"),
      c("41.48199", "-81.79819", "Lakewood", "US", "America/New_York"),
      c("41.24255", "-82.61573", "Norwalk", "US", "America/New_York"),
      c("41.66394", "-83.55521", "Toledo", "US", "America/New_York"),
      c("40.2737", "-76.88442", "Harrisburg", "US", "America/New_York"),
      c("40.24537", "-75.64963", "Pottstown", "US", "America/New_York"),
      c("41.54566", "-71.29144", "Middletown", "US", "America/New_York"),
      c("43.61062", "-72.97261", "Rutland", "US", "America/New_York"),
      c("44.27804", "-88.27205", "Kaukauna", "US", "America/Chicago"),
      c("42.55308", "-87.93341", "Pleasant Prairie", "US", "America/Chicago"),
      c("41.16704", "-73.20483", "Bridgeport", "US", "America/New_York"),
      c("33.35283", "-111.78903", "Gilbert", "US", "America/Phoenix"),
      c("33.50921", "-111.89903", "Scottsdale", "US", "America/Phoenix"),
      c("38.17492", "-122.2608", "American Canyon", "US", "America/Los_Angeles"),
      c("33.92946", "-116.97725", "Beaumont", "US", "America/Los_Angeles"),
      c("34.21639", "-119.0376", "Camarillo", "US", "America/Los_Angeles"),
      c("34.09668", "-117.71978", "Claremont", "US", "America/Los_Angeles"),
      c("38.54491", "-121.74052", "Davis", "US", "America/Los_Angeles"),
      c("33.03699", "-117.29198", "Encinitas", "US", "America/Los_Angeles"),
      c("34.14251", "-118.25508", "Glendale", "US", "America/Los_Angeles"),
      c("33.7207", "-116.21677", "Indio", "US", "America/Los_Angeles"),
      c("33.52253", "-117.70755", "Laguna Niguel", "US", "America/Los_Angeles"),
      c("34.63915", "-120.45794", "Lompoc", "US", "America/Los_Angeles"),
      c("32.9156", "-117.14392", "Mira Mesa", "US", "America/Los_Angeles"),
      c("33.93113", "-117.54866", "Norco", "US", "America/Los_Angeles"),
      c("33.72255", "-116.37697", "Palm Desert", "US", "America/Los_Angeles"),
      c("36.06523", "-119.01677", "Porterville", "US", "America/Los_Angeles"),
      c("37.73604", "-120.93549", "Riverbank", "US", "America/Los_Angeles"),
      c("34.09611", "-118.10583", "San Gabriel", "US", "America/Los_Angeles"),
      c("34.95303", "-120.43572", "Santa Maria", "US", "America/Los_Angeles"),
      c("33.95015", "-118.03917", "South Whittier", "US", "America/Los_Angeles"),
      c("33.76446", "-117.79394", "North Tustin", "US", "America/Los_Angeles"),
      c("36.91023", "-121.75689", "Watsonville", "US", "America/Los_Angeles"),
      c("39.72943", "-104.83192", "Aurora", "US", "America/Denver"),
      c("39.57582", "-105.11221", "Ken Caryl", "US", "America/Denver"),
      c("32.42067", "-104.22884", "Carlsbad", "US", "America/Denver"),
      c("36.20829", "-115.98391", "Pahrump", "US", "America/Los_Angeles"),
      c("31.84568", "-102.36764", "Odessa", "US", "America/Chicago"),
      c("40.58654", "-122.39168", "Redding", "US", "America/Los_Angeles"),
      c("43.54072", "-116.56346", "Nampa", "US", "America/Boise"),
      c("45.49428", "-122.86705", "Aloha", "US", "America/Los_Angeles"),
      c("44.99012", "-123.02621", "Keizer", "US", "America/Los_Angeles"),
      c("45.53929", "-122.38731", "Troutdale", "US", "America/Los_Angeles"),
      c("40.65995", "-111.99633", "Kearns", "US", "America/Denver"),
      c("40.34912", "-111.90466", "Saratoga Springs", "US", "America/Denver"),
      c("47.76232", "-122.2054", "Bothell", "US", "America/Los_Angeles"),
      c("47.38093", "-122.23484", "Kent", "US", "America/Los_Angeles"),
      c("47.64995", "-117.23991", "Opportunity", "US", "America/Los_Angeles"),
      c("46.32374", "-120.00865", "Sunnyside", "US", "America/Los_Angeles"),
      c("20.88953", "-156.47432", "Kahului", "US", "Pacific/Honolulu"),
      c("40.81", "-73.9625", "Morningside Heights", "US", "America/New_York"),
      c("43.16547", "-77.70066", "Gates-North Gates", "US", "America/New_York"),
      c("47.4943", "-122.24092", "Bryn Mawr-Skyway", "US", "America/Los_Angeles"),
      c("47.80527", "-122.24064", "Bothell West", "US", "America/Los_Angeles"),
      c("37.71715", "-122.40433", "Visitacion Valley", "US", "America/Los_Angeles"),
      c("-33.38056", "-56.52361", "Durazno", "UY", "America/Montevideo"),
      c("41.29444", "69.67639", "Parkent", "UZ", "Asia/Tashkent"),
      c("40.11583", "67.84222", "Jizzax", "UZ", "Asia/Samarkand"),
      c("40.78206", "72.34424", "Andijon", "UZ", "Asia/Tashkent"),
      c("9.91861", "-68.30472", "Tinaquillo", "VE", "America/Caracas"),
      c("10.22677", "-67.33122", "La Victoria", "VE", "America/Caracas"),
      c("8.35122", "-62.64102", "Ciudad Guayana", "VE", "America/Caracas"),
      c("8.62261", "-70.20749", "Barinas", "VE", "America/Caracas"),
      c("10.29085", "105.75635", "Sa Dec", "VN", "Asia/Ho_Chi_Minh"),
      c("-17.73648", "168.31366", "Port-Vila", "VU", "Pacific/Efate"),
      c("42.62833", "20.89389", "Glogovac", "XK", "Europe/Belgrade"),
      c("14.53767", "46.83187", "Ataq", "YE", "Asia/Aden"),
      c("-27.76952", "30.79165", "Vryheid", "ZA", "Africa/Johannesburg"),
      c("-26.93366", "29.24152", "Standerton", "ZA", "Africa/Johannesburg"),
      c("-24.19436", "29.00974", "Mokopane", "ZA", "Africa/Johannesburg"))
  ),
  public = list(
    coordinate = function(center, radius = 0.001) {
      # Optionally center the coord and pick a point within radius.
      if (missing(center)) {
        return(format(private$random_int(
          -180000000, 180000000) / 1000000, nsmall = 6))
      } else {
        geo = runif(1, min = center - radius, max = center + radius)
        return(format(geo, nsmall = 6))
      }
    },

    latitude = function() {
      # Latitude has a range of -90 to 90, so divide by two.
      return(format(as.numeric(self$coordinate()) / 2, nsmall = 6))
    },

    longitude = function() {
      return(self$coordinate())
    },

    latlng = function() {
      return(c(self$latitude(), self$longitude()))
    },

    local_latlng = function(country_code = "US", coords_only = FALSE) {
      # Returns a location known to exist on land in a country specified by `country_code`.
      # Defaults to 'en_US'. See the `land_coords` list for available locations/countries.
      temp = sapply(private$land_coords, function(x){x[4] == country_code})
      results = private$land_coords[temp]
      if (length(results)) {
        place = sample(results, 1)[[1]]
      }
      if (coords_only) {
        return(place)
      } else {
        return(c(place[1], place[2]))
      }
    },

    location_on_land = function(coords_only = FALSE) {
      # Returns a random tuple specifying a coordinate set guaranteed to exist on land.
      # Format is `(latitude, longitude, place name, two-letter country code, timezone)`
      # Pass `coords_only` to return coordinates without metadata.
      place = sample(private$land_coords, 1)[[1]]
      if (coords_only) {
        return(place)
      } else {
        return(c(place[1], place[2]))
      }
    }
  )
)

## isbn   ----------------------------------------------------------
isbn_init = R6Class(
  "isbn_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    MAX_LENGTH = 13,
    RULES = list(
      '978'= list(
        '0' = list(
          c('0000000', '1999999', 2),
          c('2000000', '2279999', 3),
          c('2280000', '2289999', 4),
          c('2290000', '6479999', 3),
          c('6480000', '6489999', 7),
          c('6490000', '6999999', 3),
          c('7000000', '8499999', 4),
          c('8500000', '8999999', 5),
          c('9000000', '9499999', 6),
          c('9500000', '9999999', 7)
        ),
        "1" = list(
          c('0000000', '0999999', 2),
          c('1000000', '3999999', 3),
          c('4000000', '5499999', 4),
          c('5500000', '7319999', 5),
          c('7320000', '7399999', 7),
          c('7400000', '8697999', 5),
          c('8698000', '9729999', 6),
          c('9730000', '9877999', 4),
          c('9878000', '9989999', 6),
          c('9990000', '9999999', 7)
        )
      )
    ),

    check_digit_13 = function(x){
      # Calculate the check digit for ISBN-13.
      # See https://en.wikipedia.org/wiki/International_Standard_Book_Number
      # for calculation.
      ean = x["ean"]
      group = x["group"]
      registrant = x["registrant"]
      publication = x["publication"]

      weights = rep(c(1, 3), 6)
      body = unlist(str_split(x, ""))
      remainder = sum(weights * as.integer(body)) %% 10
      diff = 10 - remainder
      check_digit = ifelse(diff == 10, 0, diff)
      return(as.character(check_digit))
    },

    format_13 = function(x, sep = "") {
      ean = x["ean"]
      group = x["group"]
      registrant = x["registrant"]
      publication = x["publication"]
      temp1 = str_c(x, collapse = sep)
      temp2 = private$check_digit_13(x)
      return(str_c(temp1, temp2, sep = sep))
    },

    check_digit_10 = function(x) {
      group = x["group"]
      registrant = x["registrant"]
      publication = x["publication"]
      # Calculate the check digit for ISBN-10.
      # See https://en.wikipedia.org/wiki/International_Standard_Book_Number
      # for calculation.
      weights = seq(10, 2)
      body = unlist(str_split(c(group, registrant, publication), ""))
      remainder = 11 - (sum(weights * as.integer(body)) %% 11)
      check_digit = ifelse(remainder == 10, "X", as.character(remainder))
      return(check_digit)
    },

    format_10 = function(x, sep = "") {
      group = x["group"]
      registrant = x["registrant"]
      publication = x["publication"]
      temp1 = str_c(x[c("group", "registrant", "publication")], collapse = sep)
      temp2 = private$check_digit_10(x)
      return(str_c(temp1, temp2, sep = sep))
    },

    body = function(){
      # Generate the information required to create an ISBN-10 or
      # ISBN-13.
      ean = sample(names(private$RULES), 1)
      group = sample(names(private$RULES[[ean]]), 1)
      # Given the chosen ean/group, decide how long the
      #   registrant/publication string may be.
      # We must allocate for the calculated check digit, so
      #   subtract 1
      reg_pub_len = private$MAX_LENGTH - str_length(ean) - str_length(group) - 1
      # Generate a registrant/publication combination
      reg_pub = private$numerify(str_c(rep("#", reg_pub_len), collapse = ""))
      # Use rules to separate the registrant from the publication
      rules = private$RULES[[ean]][[group]]
      temp = private$registrant_publication(reg_pub, rules)
      return(c("ean" = ean, "group" = group, temp))
    },

    registrant_publication = function(reg_pub, rules) {
      # Separate the registration from the publication in a given
      # string.
      # :param reg_pub: A string of digits representing a registration
      # and publication.
      # :param rules: A list of RegistrantRules which designate where
      # to separate the values in the string.
      # :returns: A (registrant, publication) tuple of strings.

      for (rule in rules) {
        temp = as.integer(str_sub(reg_pub, start = 1, end = str_length(rule[1])))

        if (as.integer(rule[1]) <= temp & temp <= as.integer(rule[2])) {
          reg_len = as.integer(rule[3])
          break
        }
      }
      if (!length(reg_len)) {
        stop('Registrant/Publication not found in registrant rule.')
      }
      registrant = str_sub(reg_pub, start = 1, end = reg_len)
      publication = str_sub(reg_pub, start = reg_len + 1)
      return(c("registrant" = registrant, "publication" = publication))
    }
  ),

  public = list(
    isbn13 = function(sep = "-") {
      temp = private$body()
      isbn = private$format_13(temp, sep)
      return(isbn)
    },

    isbn10 = function(sep = "-") {
      temp = private$body()
      isbn = private$format_10(temp, sep)
      return(isbn)
    }

  )
)

## job -----------------------------------------------------------
job_init = R6Class(
  "job_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    jobs = c(
      "Academic librarian",
      "Accommodation manager",
      "Accountant, chartered",
      "Accountant, chartered certified",
      "Accountant, chartered management",
      "Accountant, chartered public finance",
      "Accounting technician",
      "Actor",
      "Actuary",
      "Acupuncturist",
      "Administrator",
      "Administrator, arts",
      "Administrator, charities/voluntary organisations",
      "Administrator, Civil Service",
      "Administrator, education",
      "Administrator, local government",
      "Administrator, sports",
      "Adult guidance worker",
      "Adult nurse",
      "Advertising account executive",
      "Advertising account planner",
      "Advertising art director",
      "Advertising copywriter",
      "Advice worker",
      "Aeronautical engineer",
      "Agricultural consultant",
      "Agricultural engineer",
      "Aid worker",
      "Air broker",
      "Air cabin crew",
      "Air traffic controller",
      "Airline pilot",
      "Ambulance person",
      "Amenity horticulturist",
      "Analytical chemist",
      "Animal nutritionist",
      "Animal technologist",
      "Animator",
      "Applications developer",
      "Arboriculturist",
      "Archaeologist",
      "Architect",
      "Architectural technologist",
      "Archivist",
      "Armed forces logistics/support/administrative officer",
      "Armed forces operational officer",
      "Armed forces technical officer",
      "Armed forces training and education officer",
      "Art gallery manager",
      "Art therapist",
      "Artist",
      "Arts administrator",
      "Arts development officer",
      "Associate Professor",
      "Astronomer",
      "Audiological scientist",
      "Automotive engineer",
      "Banker",
      "Barista",
      "Barrister",
      "Barrister's clerk",
      "Best boy",
      "Biochemist, clinical",
      "Biomedical engineer",
      "Biomedical scientist",
      "Bonds trader",
      "Bookseller",
      "Brewing technologist",
      "Broadcast engineer",
      "Broadcast journalist",
      "Broadcast presenter",
      "Building control surveyor",
      "Building services engineer",
      "Building surveyor",
      "Buyer, industrial",
      "Buyer, retail",
      "Cabin crew",
      "Call centre manager",
      "Camera operator",
      "Careers adviser",
      "Careers information officer",
      "Cartographer",
      "Catering manager",
      "Ceramics designer",
      "Charity fundraiser",
      "Charity officer",
      "Chartered accountant",
      "Chartered certified accountant",
      "Chartered legal executive (England and Wales)",
      "Chartered loss adjuster",
      "Chartered management accountant",
      "Chartered public finance accountant",
      "Chemical engineer",
      "Chemist, analytical",
      "Chief Executive Officer",
      "Chief Financial Officer",
      "Chief Marketing Officer",
      "Chief of Staff",
      "Chief Operating Officer",
      "Chief Strategy Officer",
      "Chief Technology Officer",
      "Child psychotherapist",
      "Chiropodist",
      "Chiropractor",
      "Civil engineer, consulting",
      "Civil engineer, contracting",
      "Civil Service administrator",
      "Civil Service fast streamer",
      "Claims inspector/assessor",
      "Clinical biochemist",
      "Clinical cytogeneticist",
      "Clinical embryologist",
      "Clinical molecular geneticist",
      "Clinical psychologist",
      "Clinical research associate",
      "Clinical scientist, histocompatibility and immunogenetics",
      "Clothing/textile technologist",
      "Colour technologist",
      "Commercial art gallery manager",
      "Commercial horticulturist",
      "Commercial/residential surveyor",
      "Commissioning editor",
      "Communications engineer",
      "Community arts worker",
      "Community development worker",
      "Community education officer",
      "Community pharmacist",
      "Company secretary",
      "Comptroller",
      "Computer games developer",
      "Conference centre manager",
      "Conservation officer, historic buildings",
      "Conservation officer, nature",
      "Conservator, furniture",
      "Conservator, museum/gallery",
      "Consulting civil engineer",
      "Contracting civil engineer",
      "Contractor",
      "Control and instrumentation engineer",
      "Copy",
      "Copywriter, advertising",
      "Corporate investment banker",
      "Corporate treasurer",
      "Counselling psychologist",
      "Counsellor",
      "Curator",
      "Customer service manager",
      "Cytogeneticist",
      "Dance movement psychotherapist",
      "Dancer",
      "Data processing manager",
      "Data scientist",
      "Database administrator",
      "Dealer",
      "Dentist",
      "Designer, blown glass/stained glass",
      "Designer, ceramics/pottery",
      "Designer, exhibition/display",
      "Designer, fashion/clothing",
      "Designer, furniture",
      "Designer, graphic",
      "Designer, industrial/product",
      "Designer, interior/spatial",
      "Designer, jewellery",
      "Designer, multimedia",
      "Designer, television/film set",
      "Designer, textile",
      "Development worker, community",
      "Development worker, international aid",
      "Diagnostic radiographer",
      "Dietitian",
      "Diplomatic Services operational officer",
      "Dispensing optician",
      "Doctor, general practice",
      "Doctor, hospital",
      "Dramatherapist",
      "Drilling engineer",
      "Early years teacher",
      "Ecologist",
      "Economist",
      "Editor, commissioning",
      "Editor, film/video",
      "Editor, magazine features",
      "Editorial assistant",
      "Education administrator",
      "Education officer, community",
      "Education officer, environmental",
      "Education officer, museum",
      "Educational psychologist",
      "Electrical engineer",
      "Electronics engineer",
      "Embryologist, clinical",
      "Emergency planning/management officer",
      "Energy engineer",
      "Energy manager",
      "Engineer, aeronautical",
      "Engineer, agricultural",
      "Engineer, automotive",
      "Engineer, biomedical",
      "Engineer, broadcasting (operations)",
      "Engineer, building services",
      "Engineer, chemical",
      "Engineer, civil (consulting)",
      "Engineer, civil (contracting)",
      "Engineer, communications",
      "Engineer, control and instrumentation",
      "Engineer, drilling",
      "Engineer, electrical",
      "Engineer, electronics",
      "Engineer, energy",
      "Engineer, land",
      "Engineer, maintenance",
      "Engineer, maintenance (IT)",
      "Engineer, manufacturing",
      "Engineer, manufacturing systems",
      "Engineer, materials",
      "Engineer, mining",
      "Engineer, petroleum",
      "Engineer, production",
      "Engineer, site",
      "Engineer, structural",
      "Engineer, technical sales",
      "Engineer, water",
      "Engineering geologist",
      "English as a foreign language teacher",
      "English as a second language teacher",
      "Environmental consultant",
      "Environmental education officer",
      "Environmental health practitioner",
      "Environmental manager",
      "Equality and diversity officer",
      "Equities trader",
      "Ergonomist",
      "Estate agent",
      "Estate manager/land agent",
      "Event organiser",
      "Exercise physiologist",
      "Exhibition designer",
      "Exhibitions officer, museum/gallery",
      "Facilities manager",
      "Farm manager",
      "Fashion designer",
      "Fast food restaurant manager",
      "Field seismologist",
      "Field trials officer",
      "Film/video editor",
      "Financial adviser",
      "Financial controller",
      "Financial manager",
      "Financial planner",
      "Financial risk analyst",
      "Financial trader",
      "Fine artist",
      "Firefighter",
      "Fish farm manager",
      "Fisheries officer",
      "Fitness centre manager",
      "Food technologist",
      "Forensic psychologist",
      "Forensic scientist",
      "Forest/woodland manager",
      "Freight forwarder",
      "Furniture conservator/restorer",
      "Furniture designer",
      "Further education lecturer",
      "Futures trader",
      "Gaffer",
      "Games developer",
      "Garment/textile technologist",
      "General practice doctor",
      "Geneticist, molecular",
      "Geochemist",
      "Geographical information systems officer",
      "Geologist, engineering",
      "Geologist, wellsite",
      "Geophysical data processor",
      "Geophysicist/field seismologist",
      "Geoscientist",
      "Glass blower/designer",
      "Government social research officer",
      "Graphic designer",
      "Haematologist",
      "Health and safety adviser",
      "Health and safety inspector",
      "Health physicist",
      "Health promotion specialist",
      "Health service manager",
      "Health visitor",
      "Herbalist",
      "Heritage manager",
      "Herpetologist",
      "Higher education careers adviser",
      "Higher education lecturer",
      "Historic buildings inspector/conservation officer",
      "Holiday representative",
      "Homeopath",
      "Horticultural consultant",
      "Horticultural therapist",
      "Horticulturist, amenity",
      "Horticulturist, commercial",
      "Hospital doctor",
      "Hospital pharmacist",
      "Hotel manager",
      "Housing manager/officer",
      "Human resources officer",
      "Hydrogeologist",
      "Hydrographic surveyor",
      "Hydrologist",
      "Illustrator",
      "Immigration officer",
      "Immunologist",
      "Industrial buyer",
      "Industrial/product designer",
      "Information officer",
      "Information systems manager",
      "Insurance account manager",
      "Insurance broker",
      "Insurance claims handler",
      "Insurance risk surveyor",
      "Insurance underwriter",
      "Intelligence analyst",
      "Interior and spatial designer",
      "International aid/development worker",
      "Interpreter",
      "Investment analyst",
      "Investment banker, corporate",
      "Investment banker, operational",
      "IT consultant",
      "IT sales professional",
      "IT technical support officer",
      "IT trainer",
      "Jewellery designer",
      "Journalist, broadcasting",
      "Journalist, magazine",
      "Journalist, newspaper",
      "Land",
      "Land/geomatics surveyor",
      "Landscape architect",
      "Lawyer",
      "Learning disability nurse",
      "Learning mentor",
      "Lecturer, further education",
      "Lecturer, higher education",
      "Legal executive",
      "Legal secretary",
      "Leisure centre manager",
      "Lexicographer",
      "Librarian, academic",
      "Librarian, public",
      "Licensed conveyancer",
      "Lighting technician, broadcasting/film/video",
      "Lobbyist",
      "Local government officer",
      "Location manager",
      "Logistics and distribution manager",
      "Loss adjuster, chartered",
      "Magazine features editor",
      "Magazine journalist",
      "Maintenance engineer",
      "Make",
      "Management consultant",
      "Manufacturing engineer",
      "Manufacturing systems engineer",
      "Marine scientist",
      "Market researcher",
      "Marketing executive",
      "Materials engineer",
      "Mechanical engineer",
      "Media buyer",
      "Media planner",
      "Medical illustrator",
      "Medical laboratory scientific officer",
      "Medical physicist",
      "Medical sales representative",
      "Medical secretary",
      "Medical technical officer",
      "Mental health nurse",
      "Merchandiser, retail",
      "Merchant navy officer",
      "Metallurgist",
      "Meteorologist",
      "Microbiologist",
      "Midwife",
      "Minerals surveyor",
      "Mining engineer",
      "Mudlogger",
      "Multimedia programmer",
      "Multimedia specialist",
      "Museum education officer",
      "Museum/gallery conservator",
      "Museum/gallery curator",
      "Museum/gallery exhibitions officer",
      "Music therapist",
      "Music tutor",
      "Musician",
      "Nature conservation officer",
      "Naval architect",
      "Network engineer",
      "Neurosurgeon",
      "Newspaper journalist",
      "Nurse, adult",
      "Nurse, children's",
      "Nurse, learning disability",
      "Nurse, mental health",
      "Nutritional therapist",
      "Occupational hygienist",
      "Occupational psychologist",
      "Occupational therapist",
      "Oceanographer",
      "Office manager",
      "Oncologist",
      "Operational investment banker",
      "Operational researcher",
      "Operations geologist",
      "Ophthalmologist",
      "Optician, dispensing",
      "Optometrist",
      "Orthoptist",
      "Osteopath",
      "Outdoor activities/education manager",
      "Paediatric nurse",
      "Paramedic",
      "Passenger transport manager",
      "Patent attorney",
      "Patent examiner",
      "Pathologist",
      "Pension scheme manager",
      "Pensions consultant",
      "Personal assistant",
      "Personnel officer",
      "Petroleum engineer",
      "Pharmacist, community",
      "Pharmacist, hospital",
      "Pharmacologist",
      "Photographer",
      "Physicist, medical",
      "Physiological scientist",
      "Physiotherapist",
      "Phytotherapist",
      "Pilot, airline",
      "Planning and development surveyor",
      "Plant breeder/geneticist",
      "Podiatrist",
      "Police officer",
      "Politician's assistant",
      "Presenter, broadcasting",
      "Press photographer",
      "Press sub",
      "Primary school teacher",
      "Print production planner",
      "Printmaker",
      "Prison officer",
      "Private music teacher",
      "Probation officer",
      "Producer, radio",
      "Producer, television/film/video",
      "Product designer",
      "Product manager",
      "Product/process development scientist",
      "Production assistant, radio",
      "Production assistant, television",
      "Production designer, theatre/television/film",
      "Production engineer",
      "Production manager",
      "Professor Emeritus",
      "Programme researcher, broadcasting/film/video",
      "Programmer, applications",
      "Programmer, multimedia",
      "Programmer, systems",
      "Proofreader",
      "Psychiatric nurse",
      "Psychiatrist",
      "Psychologist, clinical",
      "Psychologist, counselling",
      "Psychologist, educational",
      "Psychologist, forensic",
      "Psychologist, occupational",
      "Psychologist, prison and probation services",
      "Psychologist, sport and exercise",
      "Psychotherapist",
      "Psychotherapist, child",
      "Psychotherapist, dance movement",
      "Public affairs consultant",
      "Public house manager",
      "Public librarian",
      "Public relations account executive",
      "Public relations officer",
      "Publishing copy",
      "Publishing rights manager",
      "Purchasing manager",
      "Quality manager",
      "Quantity surveyor",
      "Quarry manager",
      "Race relations officer",
      "Radiation protection practitioner",
      "Radio broadcast assistant",
      "Radio producer",
      "Radiographer, diagnostic",
      "Radiographer, therapeutic",
      "Ranger/warden",
      "Records manager",
      "Recruitment consultant",
      "Recycling officer",
      "Regulatory affairs officer",
      "Research officer, government",
      "Research officer, political party",
      "Research officer, trade union",
      "Research scientist (life sciences)",
      "Research scientist (maths)",
      "Research scientist (medical)",
      "Research scientist (physical sciences)",
      "Restaurant manager",
      "Restaurant manager, fast food",
      "Retail banker",
      "Retail buyer",
      "Retail manager",
      "Retail merchandiser",
      "Risk analyst",
      "Risk manager",
      "Runner, broadcasting/film/video",
      "Rural practice surveyor",
      "Sales executive",
      "Sales professional, IT",
      "Sales promotion account executive",
      "Science writer",
      "Scientific laboratory technician",
      "Scientist, audiological",
      "Scientist, biomedical",
      "Scientist, clinical (histocompatibility and immunogenetics)",
      "Scientist, forensic",
      "Scientist, marine",
      "Scientist, physiological",
      "Scientist, product/process development",
      "Scientist, research (life sciences)",
      "Scientist, research (maths)",
      "Scientist, research (medical)",
      "Scientist, research (physical sciences)",
      "Scientist, water quality",
      "Secondary school teacher",
      "Secretary/administrator",
      "Secretary, company",
      "Seismic interpreter",
      "Senior tax professional/tax inspector",
      "Set designer",
      "Ship broker",
      "Site engineer",
      "Social research officer, government",
      "Social researcher",
      "Social worker",
      "Software engineer",
      "Soil scientist",
      "Solicitor",
      "Solicitor, Scotland",
      "Sound technician, broadcasting/film/video",
      "Special educational needs teacher",
      "Special effects artist",
      "Speech and language therapist",
      "Sport and exercise psychologist",
      "Sports administrator",
      "Sports coach",
      "Sports development officer",
      "Sports therapist",
      "Stage manager",
      "Statistician",
      "Structural engineer",
      "Sub",
      "Surgeon",
      "Surveyor, building",
      "Surveyor, building control",
      "Surveyor, commercial/residential",
      "Surveyor, hydrographic",
      "Surveyor, insurance",
      "Surveyor, land/geomatics",
      "Surveyor, minerals",
      "Surveyor, mining",
      "Surveyor, planning and development",
      "Surveyor, quantity",
      "Surveyor, rural practice",
      "Systems analyst",
      "Systems developer",
      "Tax adviser",
      "Tax inspector",
      "Teacher, adult education",
      "Teacher, early years/pre",
      "Teacher, English as a foreign language",
      "Teacher, music",
      "Teacher, primary school",
      "Teacher, secondary school",
      "Teacher, special educational needs",
      "Teaching laboratory technician",
      "Technical author",
      "Technical brewer",
      "Technical sales engineer",
      "TEFL teacher",
      "Telecommunications researcher",
      "Television camera operator",
      "Television floor manager",
      "Television production assistant",
      "Television/film/video producer",
      "Textile designer",
      "Theatre director",
      "Theatre manager",
      "Theatre stage manager",
      "Theme park manager",
      "Therapeutic radiographer",
      "Therapist, art",
      "Therapist, drama",
      "Therapist, horticultural",
      "Therapist, music",
      "Therapist, nutritional",
      "Therapist, occupational",
      "Therapist, speech and language",
      "Therapist, sports",
      "Tour manager",
      "Tourism officer",
      "Tourist information centre manager",
      "Town planner",
      "Toxicologist",
      "Trade mark attorney",
      "Trade union research officer",
      "Trading standards officer",
      "Training and development officer",
      "Translator",
      "Transport planner",
      "Travel agency manager",
      "Tree surgeon",
      "Veterinary surgeon",
      "Video editor",
      "Visual merchandiser",
      "Volunteer coordinator",
      "Warden/ranger",
      "Warehouse manager",
      "Waste management officer",
      "Water engineer",
      "Water quality scientist",
      "Web designer",
      "Wellsite geologist",
      "Writer",
      "Youth worker")
  ),

  public = list(
    job = function(){
      return(private$random_element(private$jobs))
    }
  )
)

## lorem ---------------------------------------------------------
lorem_init = R6Class(
  "lorem_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    locale = 'la',
    word_connector = ' ',
    sentence_punctuation = '.',
    ext_words = c(
      'a', 'ab', 'accusamus', 'accusantium', 'ad', 'adipisci', 'alias',
      'aliquam', 'aliquid', 'amet', 'animi', 'aperiam', 'architecto',
      'asperiores', 'aspernatur', 'assumenda', 'at', 'atque', 'aut', 'autem',
      'beatae', 'blanditiis', 'commodi', 'consectetur', 'consequatur',
      'consequuntur', 'corporis', 'corrupti', 'culpa', 'cum', 'cumque',
      'cupiditate', 'debitis', 'delectus', 'deleniti', 'deserunt', 'dicta',
      'dignissimos', 'distinctio', 'dolor', 'dolore', 'dolorem', 'doloremque',
      'dolores', 'doloribus', 'dolorum', 'ducimus', 'ea', 'eaque', 'earum',
      'eius', 'eligendi', 'enim', 'eos', 'error', 'esse', 'est', 'et', 'eum',
      'eveniet', 'ex', 'excepturi', 'exercitationem', 'expedita', 'explicabo',
      'facere', 'facilis', 'fuga', 'fugiat', 'fugit', 'harum', 'hic', 'id',
      'illo', 'illum', 'impedit', 'in', 'incidunt', 'inventore', 'ipsa',
      'ipsam', 'ipsum', 'iste', 'itaque', 'iure', 'iusto', 'labore',
      'laboriosam', 'laborum', 'laudantium', 'libero', 'magnam', 'magni',
      'maiores', 'maxime', 'minima', 'minus', 'modi', 'molestiae',
      'molestias', 'mollitia', 'nam', 'natus', 'necessitatibus', 'nemo',
      'neque', 'nesciunt', 'nihil', 'nisi', 'nobis', 'non', 'nostrum',
      'nulla', 'numquam', 'occaecati', 'odio', 'odit', 'officia', 'officiis',
      'omnis', 'optio', 'pariatur', 'perferendis', 'perspiciatis', 'placeat',
      'porro', 'possimus', 'praesentium', 'provident', 'quae', 'quaerat',
      'quam', 'quas', 'quasi', 'qui', 'quia', 'quibusdam', 'quidem', 'quis',
      'quisquam', 'quo', 'quod', 'quos', 'ratione', 'recusandae',
      'reiciendis', 'rem', 'repellat', 'repellendus', 'reprehenderit',
      'repudiandae', 'rerum', 'saepe', 'sapiente', 'sed', 'sequi',
      'similique', 'sint', 'sit', 'soluta', 'sunt', 'suscipit', 'tempora',
      'tempore', 'temporibus', 'tenetur', 'totam', 'ullam', 'unde', 'ut',
      'vel', 'velit', 'veniam', 'veritatis', 'vero', 'vitae', 'voluptas',
      'voluptate', 'voluptatem', 'voluptates', 'voluptatibus', 'voluptatum'
    )
  ),
  public = list(

    words = function(ext_words, nb = 3, unique = FALSE){
      if(missing(ext_words)) words = private$ext_words
      else words = ext_words

      return(sample(words, size = nb, replace = !unique))

    },

    word = function(ext_words) {
      return(self$words(ext_words, 1))
    },

    sentence = function(ext_words, nb_words = 6, variable_nb_words = TRUE){
      if (nb_words <= 0) {
        return("")
      }
      if (variable_nb_words) {
        nb_words = private$randomize_nb_elements(nb_words, from = 1)
      }

      words = self$words(ext_words, nb_words)
      words[1] = str_to_title(words[1], locale = private$locale)

      return(str_c(str_c(words,
                         collapse = private$word_connector), private$sentence_punctuation))
    },

    sentences = function(ext_words, nb = 3) {
      temp = vector(mode = "character", length = nb)
      for (i in seq(nb)) {
        temp[i] = self$sentence(ext_words)
      }
      return(temp)
    },

    paragraph = function(ext_words,
                         nb_sentences = 3,
                         variable_nb_sentences = TRUE) {
      if (nb_sentences <= 0) {
        return("")
      }

      if (variable_nb_sentences) {
        nb_sentences = private$randomize_nb_elements(nb_sentences, from = 1)
      }

      para = str_c(self$sentences(ext_words, nb_sentences),
                   collapse = private$word_connector)
      return(para)
    },

    paragraphs = function(ext_words, nb = 3) {
      temp = vector(mode = "character", length = nb)
      for (i in seq(nb)) {
        temp[i] = self$paragraph(ext_words)
      }
      return(temp)
    },

    text = function(ext_words, max_nb_chars = 200) {
      text = c()
      if (max_nb_chars < 5) {
        stop("text() can only generate text of at least 5 characters")
      }

      if (max_nb_chars < 25) {
        while (!length(text)) {
          size = 0

          while (size < max_nb_chars) {
            word = str_c(ifelse(size, private$word_connector, ""),
                         self$word(ext_words))
            text = c(text, word)
            size = sum(str_length(text))
          }
          text = text[-length(text)]
        }
        text[1] = str_to_title(text[1], locale = private$locale)
        text[length(text)] = str_c(text[length(text)],
                                   private$sentence_punctuation)
      } else if (max_nb_chars < 100) {

        while (!length(text)) {
          size = 0
          while (size < max_nb_chars) {
            sentence = str_c(ifelse(size, private$word_connector, ""),
                             self$sentence(ext_words))
            text = c(text, sentence)
            size = sum(str_length(text))
          }
          text = text[-length(text)]
        }
      } else {

        while(!length(text)) {
          size = 0
          while (size < max_nb_chars) {
            paragraph = str_c(ifelse(size, "\n", ""),
                              self$paragraph(ext_words))
            text = c(text, paragraph)
            size = sum(str_length(text))
          }
          text = text[-length(text)]
        }
      }
      return(str_c(text, collapse = ""))
    },

    texts = function(ext_words, nb_texts = 3, max_nb_chars = 200){
      temp = vector(mode = "character", length = nb_texts)
      for (i in seq(nb_texts)) {
        temp[i] = self$text(ext_words, max_nb_chars)
      }
      return(temp)
    }
  )
)

## file ----------------------------------------------
file_init = R6Class(
  "file_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    mime_types = list(
      'application' = c(
        "application/atom+xml",  # Atom feeds
        "application/ecmascript",
        # ECMAScript/JavaScript; Defined in RFC 4329 (equivalent to
        # application/javascript but with stricter processing rules)
        "application/EDI-X12",  # EDI X12 data; Defined in RFC 1767
        "application/EDIFACT",  # EDI EDIFACT data; Defined in RFC 1767
        "application/json",  # JavaScript Object Notation JSON; Defined in RFC 4627
        # ECMAScript/JavaScript; Defined in RFC 4329 (equivalent to
        # application/ecmascript
        "application/javascript",
        #   but with looser processing rules) It is not accepted in IE 8
        #   or earlier - text/javascript is accepted but it is defined as obsolete in RFC 4329.
        #   The "type" attribute of the <script> tag in HTML5 is optional and in practice
        #   omitting the media type of JavaScript programs is the most interoperable
        #   solution since all browsers have always assumed the correct
        #   default even before HTML5.
        "application/octet-stream",
        # Arbitrary binary data.[6] Generally speaking this type identifies files that are not associated with
        # a specific application. Contrary to past assumptions by software packages such as Apache this is not
        # a type that should be applied to unknown files. In such a case, a server or application should not indicate
        # a content type, as it may be incorrect, but rather, should omit the type in order to allow the recipient
        # to guess the type.[7]
        "application/ogg",  # Ogg, a multimedia bitstream container format; Defined in RFC 5334
        "application/pdf",  # Portable Document Format, PDF has been in use for document exchange
        #   on the Internet since 1993; Defined in RFC 3778
        "application/postscript",  # PostScript; Defined in RFC 2046
        "application/rdf+xml",  # Resource Description Framework; Defined by RFC 3870
        "application/rss+xml",  # RSS feeds
        "application/soap+xml",  # SOAP; Defined by RFC 3902
        # Web Open Font Format; (candidate recommendation; use application/x-font-woff
        "application/font-woff",
        #   until standard is official)
        "application/xhtml+xml",  # XHTML; Defined by RFC 3236
        "application/xml-dtd",  # DTD files; Defined by RFC 3023
        "application/xop+xml",  # XOP
        "application/zip",  # ZIP archive files; Registered[8]
        "application/gzip"         # Gzip, Defined in RFC 6713
      ),

      'audio' = c(
        "audio/basic",  # mulaw audio at 8 kHz, 1 channel; Defined in RFC 2046
        "audio/L24",  # 24bit Linear PCM audio at 8-48 kHz, 1-N channels; Defined in RFC 3190
        "audio/mp4",  # MP4 audio
        "audio/mpeg",  # MP3 or other MPEG audio; Defined in RFC 3003
        "audio/ogg",  # Ogg Vorbis, Speex, Flac and other audio; Defined in RFC 5334
        "audio/vorbis",  # Vorbis encoded audio; Defined in RFC 5215
        # RealAudio; Documented in RealPlayer Help[9]
        "audio/vnd.rn-realaudio",
        "audio/vnd.wave",  # WAV audio; Defined in RFC 2361
        "audio/webm"               # WebM open media format
      ),

      'image' = c(
        "image/gif",  # GIF image; Defined in RFC 2045 and RFC 2046
        "image/jpeg",  # JPEG JFIF image; Defined in RFC 2045 and RFC 2046
        "image/pjpeg",
        # JPEG JFIF image; Associated with Internet Explorer; Listed in ms775147(v=vs.85) - Progressive JPEG,
        # initiated before global browser support for progressive JPEGs (Microsoft and Firefox).
        # Portable Network Graphics; Registered,[10] Defined in RFC 2083
        "image/png",
        "image/svg+xml",  # SVG vector image; Defined in SVG Tiny 1.2 Specification Appendix M
        # Tag Image File Format (only for Baseline TIFF); Defined in RFC 3302
        "image/tiff",
        "image/vnd.microsoft.icon"  # ICO image; Registered[11]
      ),

      'message' = c(
        "message/http",  # Defined in RFC 2616
        "message/imdn+xml",  # IMDN Instant Message Disposition Notification; Defined in RFC 5438
        "message/partial",  # Email; Defined in RFC 2045 and RFC 2046
        # Email; EML files, MIME files, MHT files, MHTML files; Defined in RFC
        # 2045 and RFC 2046
        "message/rfc822"
      ),

      'model' = c(
        "model/example",  # Defined in RFC 4735
        "model/iges",  # IGS files, IGES files; Defined in RFC 2077
        "model/mesh",  # MSH files, MESH files; Defined in RFC 2077, SILO files
        "model/vrml",  # WRL files, VRML files; Defined in RFC 2077
        # X3D ISO standard for representing 3D computer graphics, X3DB binary
        # files
        "model/x3d+binary",
        "model/x3d+vrml",  # X3D ISO standard for representing 3D computer graphics, X3DV VRML files
        "model/x3d+xml"  # X3D ISO standard for representing 3D computer graphics, X3D XML files
      ),

      'multipart' = c(
        "multipart/mixed",  # MIME Email; Defined in RFC 2045 and RFC 2046
        "multipart/alternative",  # MIME Email; Defined in RFC 2045 and RFC 2046
        # MIME Email; Defined in RFC 2387 and used by MHTML (HTML mail)
        "multipart/related",
        "multipart/form-data",  # MIME Webform; Defined in RFC 2388
        "multipart/signed",  # Defined in RFC 1847
        "multipart/encrypted"  # Defined in RFC 1847
      ),

      'text' = c(
        "text/cmd",  # commands; subtype resident in Gecko browsers like Firefox 3.5
        "text/css",  # Cascading Style Sheets; Defined in RFC 2318
        "text/csv",  # Comma-separated values; Defined in RFC 4180
        "text/html",  # HTML; Defined in RFC 2854
        "text/javascript",
        # (Obsolete): JavaScript; Defined in and obsoleted by RFC 4329 in order to discourage its usage in favor of
        # application/javascript. However, text/javascript is allowed in HTML 4 and 5 and, unlike
        # application/javascript, has cross-browser support. The "type" attribute of the <script> tag in HTML5 is
        # optional and there is no need to use it at all since all browsers have always assumed the correct default
        # (even in HTML 4 where it was required by the specification).
        "text/plain",  # Textual data; Defined in RFC 2046 and RFC 3676
        "text/vcard",  # vCard (contact information); Defined in RFC 6350
        "text/xml"  # Extensible Markup Language; Defined in RFC 3023
      ),
      'video' = c(
        "video/mpeg",  # MPEG-1 video with multiplexed audio; Defined in RFC 2045 and RFC 2046
        "video/mp4",  # MP4 video; Defined in RFC 4337
        # Ogg Theora or other video (with audio); Defined in RFC 5334
        "video/ogg",
        "video/quicktime",  # QuickTime video; Registered[12]
        "video/webm",  # WebM Matroska-based open media format
        "video/x-matroska",  # Matroska open media format
        "video/x-ms-wmv",  # Windows Media Video; Documented in Microsoft KB 288102
        "video/x-flv"  # Flash video (FLV files)
      )),

    file_extensions = list(
      "audio" = c("flac", "mp3", "wav"),
      "image" = c("bmp", "gif", "jpeg", "jpg", "png", "tiff"),
      "office" = c(
        "doc",  # legacy MS Word
        "docx",  # MS Word
        "xls",  # legacy MS Excel
        "xlsx",  # MS Excel
        "ppt",  # legacy MS PowerPoint
        "pptx",  # MS PowerPoint
        "odt",  # LibreOffice document
        "ods",  # LibreOffice spreadsheet
        "odp",  # LibreOffice presentation
        "pages",  # Apple Pages
        "numbers",  # Apple Numbers
        "key",  # Apple Keynote
        "pdf"  # Portable Document Format
      ),
      "text" = c("css", "csv", "html", "js", "json", "txt"),
      "video" = c("mp4", "avi", "mov", "webm")
    ),

    unix_device_prefixes = c('sd', 'vd', 'xvd')
  ),

  public = list(
    mime_type = function(category){
      # param category: application|audio|image|message|model|multipart|text|video
      category = ifelse(missing(category),
                        sample(names(private$mime_types), 1), category)
      return(sample(private$mime_types[[category]], 1))
    },

    file_name = function(category, extension){
      # :param category: audio|image|office|text|video
      # :param extension: file extension
      if (missing(extension)) {
        extension = self$file_extension(category)
      }

      file = (lorem_init$new())$word()
      return(str_c(file, ".", extension))
    },

    file_extension = function(category){
      # :param category: audio|image|office|text|video
      category = ifelse(missing(category),
                        sample(names(private$file_extensions), 1), category)
      return(sample(private$file_extensions[[category]], 1))
    },

    file_path = function(depth = 1, category, extension){
      # :param category: audio|image|office|text|video
      # :param extension: file extension
      # :param depth: depth of the file (depth >= 0)

      file = self$file_name(category, extension)
      path = str_c("/", file)
      for (i in seq(depth)) {
        path = str_c("/", (lorem_init$new())$word(), path)
      }
      return(path)
    },

    unix_device = function(prefix){
      # :param prefix: sd|vd|xvd
      prefix = ifelse(missing(prefix),
                      sample(private$unix_device_prefixes, 1), prefix)
      suffix = sample(letters, 1)
      path = sprintf("/dev/%s%s", prefix, suffix)
      return(path)
    },

    unix_partition = function(prefix){
      # :param prefix: sd|vd|xvd
      path = self$unix_device(prefix)
      path = str_c(path, private$random_digit())
      return(path)
    }
  )
)

## internet -----------------------------------------------------
internet_init = R6Class(
  "internet_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    locale = "en_US",
    network_classes = c(
      'a' = '0.0.0.0/1',
      'b' = '128.0.0.0/2',
      'c' = '192.0.0.0/3'),

    private_networks = c(
      '10.0.0.0/8',
      '172.16.0.0/12',
      '192.168.0.0/16'
    ),

    excluded_networks = c(
      '0.0.0.0/8',
      '100.64.0.0/10',
      '127.0.0.0/8',
      '169.254.0.0/16',
      '192.0.0.0/24',
      '192.0.2.0/24',
      '192.31.196.0/24',
      '192.52.193.0/24',
      '192.88.99.0/24',
      '192.175.48.0/24',
      '198.18.0.0/15',
      '198.51.100.0/24',
      '203.0.113.0/24',
      '240.0.0.0/4',
      '255.255.255.255/32',
      '169.254.0.0/16',
      '127.0.0.0/8',
      '224.0.0.0/4'
    ),

    safe_email_tlds = c('org', 'com', 'net'),
    free_email_domains = c('gmail.com', 'yahoo.com', 'hotmail.com'),
    tlds = c(
      'com', 'com', 'com', 'com', 'com', 'com', 'biz', 'info', 'net', 'org'
    ),
    hostname_prefixes = c('db', 'srv', 'desktop', 'laptop', 'lt', 'email', 'web'),
    uri_pages = c(
      'index', 'home', 'search', 'main', 'post', 'homepage', 'category',
      'register', 'login', 'faq', 'about', 'terms', 'privacy', 'author'
    ),
    uri_paths = c(
      'app', 'main', 'wp-content', 'search', 'category', 'tag', 'categories',
      'tags', 'blog', 'posts', 'list', 'explore'
    ),
    uri_extensions = c(
      '.html', '.html', '.html', '.htm', '.htm', '.php', '.php', '.jsp',
      '.asp'
    ),

    user_name_formats = c(
      '{last_name}.{first_name}',
      '{first_name}.{last_name}',
      '{first_name}##',
      '?{last_name}'
    ),
    first_names = (person_init$new())$.__enclos_env__$private$first_names,
    last_names = (person_init$new())$.__enclos_env__$private$last_names,

    first_name = (person_init$new())$first_name,
    last_name = (person_init$new())$last_name,

    email_formats = c(
      '{user_name}@{domain_name}',
      '{user_name}@{free_email_domain}'
    ),
    url_formats = c(
      'www.{domain_name}/',
      '{domain_name}/'
    ),
    uri_formats = c(
      '{url}',
      '{url}{uri_page}/',
      '{url}{uri_page}{uri_extension}',
      '{url}{uri_path}/{uri_page}/',
      '{url}{uri_path}/{uri_page}{uri_extension}'
    ),
    image_placeholder_services = c(
      'https://www.lorempixel.com/%d/%d',
      'https://dummyimage.com/%dx%d',
      'https://placekitten.com/%d/%d',
      'https://placeimg.com/%d/%d/any'
    ),
    replacements = list(),

    hex = function() {
      x = urand.bigz(size = 128)
      while(x < 2^32) {
        x = urand.bigz(size = 128)
      }

      hex16 = c(seq(0, 9), letters[seq(6)])
      reminder = as.bigz(x, 16)
      quotient = as.bigq(x, 16)
      temp = hex16[as.integer(reminder) + 1]
      ifna = suppressWarnings(as.integer(quotient))

      while(is.na(ifna)) {
        reminder = as.bigz(quotient, 16)
        quotient = as.bigq(quotient, 16)
        ifna = suppressWarnings(as.integer(quotient))
        temp = c(temp, hex16[as.integer(reminder) + 1])
      }

      while(as.integer(quotient) > 15) {
        reminder = as.bigz(quotient, 16)
        quotient = as.bigq(quotient, 16)
        temp = c(temp, hex16[as.integer(reminder) + 1])
      }
      temp = c(temp, hex16[as.integer(quotient) + 1])
      return(rev(temp))
    },

    hex2dec = function(x) {
      hex16 = seq(0, 15)
      names(hex16) = c(seq(0, 9), letters[seq(6)])
      x = str_split(x, "")[[1]]
      x = hex16[x]
      weights = 16^seq(3, 0)
      return(sum(x * weights))
    },

    network4 = function(x, num) {
      i = 1
      while (i <= num) {
        x = ifelse(x %% (2^i), x - 2^(i-1) , x)
        i = i + 1
      }
      return(x)
    },

    ipv4_network = function(ipv4) {
      strc = function(x1, x2) {
        return(str_c(str_c(x1, collapse = "."), "/", x2))
      }

      num = as.integer(str_split(ipv4, "/")[[1]][2])
      ipv4 = str_split(ipv4, "/")[[1]][1]
      ipv4 = as.integer(str_split(ipv4, "\\.")[[1]])
      df = data.frame(id = seq(4, 1),
                      from = 8 * seq(3, 0) + 1,
                      to = 8 * seq(4, 1))

      iloc = which(num <= df$to & num >= df$from)
      loc = df$id[iloc]
      if (loc < 4) {
        ipv4[loc] = private$network4(ipv4[loc], df$to[iloc] - num)
        ipv4[seq(loc + 1, 4)] = "0"
      } else {
        ipv4[4] = private$network4(ipv4[loc], 32 - num)
      }
      return(strc(ipv4, num))
    },

    divide = function(num1, num2) {
      diff = num2 - num1
      temp = c()
      while (log2(diff) != floor(log2(diff))) {
        temp = c(temp, floor(log2(diff)))
        diff = diff - 2^floor(log2(diff))
      }
      temp = c(temp, log2(diff))
      return(sort(32 - temp, decreasing = TRUE))
    },

    overlaps = function(ip1, ip2) {
      msg1 = range_boundaries(ip1)
      msg2 = range_boundaries(ip2)
      if ((msg1[3] <= msg2[3]) & (msg1[4] >= msg2[4])) return(TRUE)
      if ((msg2[3] <= msg1[3]) & (msg2[4] >= msg1[4])) return(TRUE)
      return(FALSE)
    },

    address_exclude = function(ip1, ip2) {
      msg1 = range_boundaries(ip1)
      msg2 = range_boundaries(ip2)

      if (all(msg1[c("min_numeric", "max_numeric")] ==
              msg2[c("min_numeric", "max_numeric")])) {
        return()
      }

      if ((msg1$min_numeric < msg2$min_numeric) &
          (msg1$max_numeric == msg2$max_numeric)) {
        nums = private$divide(msg1$min_numeric, msg2$min_numeric)
        msg2_min = msg2$min_numeric
        temp = c()
        for (i in nums) {
          msg2_min = msg2_min - 2^(32 - i)
          temp = c(temp, str_c(numeric_to_ip(msg2_min), "/", i))
        }
        return(temp[order(nums)])
      }

      if ((msg1$max_numeric > msg2$max_numeric) &
          (msg1$min_numeric == msg2$min_numeric)) {
        nums = private$divide(msg2$max_numeric, msg1$max_numeric)
        msg2_max = msg2$max_numeric
        temp = c()
        for (i in nums) {
          temp = c(temp, str_c(numeric_to_ip(msg2_max + 1), "/", i))
          msg2_max = msg2_max + 2^(32 - i)
        }
        return(temp[order(nums)])
      }

      if ((msg1$min_numeric < msg2$min_numeric) &
          (msg1$max_numeric > msg2$max_numeric)) {

        nums1 = private$divide(msg1$min_numeric, msg2$min_numeric)
        msg2_min = msg2$min_numeric
        temp = c()
        for (i in nums1) {
          msg2_min = msg2_min - 2^(32 - i)
          temp = c(temp, str_c(numeric_to_ip(msg2_min), "/", i))

        }

        nums2 = private$divide(msg2$max_numeric, msg1$max_numeric)
        msg2_max = msg2$max_numeric
        for (i in nums2) {
          temp = c(temp, str_c(numeric_to_ip(msg2_max + 1), "/", i))
          msg2_max = msg2_max + 2^(32 - i)
        }
        return(temp[order(c(nums1, nums2))])
      }

      return(stop(sprintf("%s not contained in %s", ip2, ip1)))
    },

    network6 = function(x, num) {
      i = 1
      x = private$hex2dec(x)
      while (i <= num) {
        x = ifelse(x %% (2^i), x - 2^(i-1) , x)
        i = i + 1
      }
      temp  = as.character(as.hexmode(x))
      if (str_length(temp) < 4) {
        temp = str_c(rep(0, 4 - str_length(temp)), temp)
      }
      return(temp)
    },

    ipv6_address = function() {
      hexstr = private$hex()
      seg = function(from, to) {
        return(str_c(hexstr[seq(from, to)], collapse = ""))
      }

      if (length(hexstr) < 32) {
        hexstr = c(rep(0, 32 - length(hexstr)), hexstr)
      }
      temp = str_c(seg(1, 4), seg(5, 8), seg(9, 12), seg(13, 16),
                   seg(17, 20), seg(21, 24), seg(25, 28), seg(29, 32),
                   sep = ":")
      return(temp)
    },

    ipv6_network = function(ipv6) {
      strc = function(x1, x2) {
        return(str_c(str_c(x1, collapse = ":"), "/", x2))
      }

      num = as.integer(str_split(ipv6, "/")[[1]][2])
      ipv6 = str_split(ipv6, "/")[[1]][1]
      ipv6 = str_split(ipv6, ":")[[1]]
      df = data.frame(id = seq(8, 1),
                      from = 16 * seq(7, 0) + 1,
                      to = 16 * seq(8, 1))

      iloc = which(num <= df$to & num >= df$from)
      loc = df$id[iloc]
      if (loc < 8) {
        ipv6[loc] = private$network6(ipv6[loc], df$to[iloc] - num)
        ipv6[seq(loc + 1, 8)] = "0000"
      } else {
        ipv6[8] = private$network6(ipv6[loc], 128 - num)

      }
      ipv6[ipv6 == "0"] = "0000"
      return(strc(ipv6, num))
    },


    to_ascii = function(string) {
      for (i in seq_along(private$replacements)) {
        string = str_replace_all(string,
                                 private$replacements[[i]][1],
                                 private$replacements[[i]][2])
      }
      return(string)
    },

    random_ipv4_address_from_subnet = function(subnet, network = FALSE) {
      # Produces a random IPv4 address or network with a valid CIDR
      # from within a given subnet.
      # :param subnet: IPv4Network to choose from within
      # :param network: Return a network address, and not an IP address
      address = round(runif(1, min = range_boundaries(subnet)$min_numeric,
                            max = range_boundaries(subnet)$max_numeric))
      address = numeric_to_ip(address)

      if (network) {
        len1 = as.integer(str_split(subnet, "/")[[1]][2])
        len2 = 32
        address = str_c(address, "/", private$random_int(len1, len2))
        address = private$ipv4_network(address)
      }

      return(address)
    },

    exclude_ipv4_networks = function(networks, networks_to_exclude) {
      temp = c()
      for (network_to_exclude in networks_to_exclude) {
        exclude_ipv4_network = function(network) {
          test = try(private$address_exclude(network, network_to_exclude),
                     silent = TRUE)
          if (class(test) != "try-error") {
            return(test)
          } else if (private$overlaps(network, network_to_exclude)) {
            return()
          } else {return(network)}
        }
        temp = c(temp, unname(sapply(networks, FUN = exclude_ipv4_network)))
      }
      return(temp)
    },

    slugify = function(string, allow_dots = FALSE, allow_unicode = FALSE) {
      pattern1 = ifelse(allow_dots,"[^\\.0-9a-zA-Z_\\s-]", "[^0-9a-zA-Z_\\s-]")
      pattern2 = ifelse(allow_dots,"[^\\.\\w\\s-]", "[^\\w\\s-]")
      pattern = ifelse(allow_unicode, pattern2, pattern1)

      string = str_replace_all(string, pattern, "")
      string = str_trim(string)
      string = str_to_lower(string, locale = private$locale)
      string = str_replace_all(string, "[-\\s]+", "-")
      return(string)
    }

  ),

  public = list(
    email = function(domain) {
      if (missing(domain)) {
        pattern = sample(private$email_formats, 1)
        email = str_remove_all(private$format_parse(pattern), " ")
      } else {
        email = str_c(self$user_name(), "@", domain)
      }
      return(str_to_lower(email, locale = private$locale))
    },

    safe_email = function() {
      temp = str_c(self$user_name(), "@example.",
                   private$random_element(private$safe_email_tlds))

      return(str_to_lower(temp, locale = private$locale))
    },

    free_email = function() {
      temp = str_c(self$user_name(), "@", self$free_email_domain())
      return(str_to_lower(temp, locale = private$locale))
    },

    free_email_domain = function() {
      return(str_to_lower(
        private$random_element(private$free_email_domains),
        locale = private$locale))
    },

    company_email = function() {
      temp = str_c(self$user_name(), "@", self$domain_name())
      return(str_to_lower(temp, locale = private$locale))
    },

    ascii_email = function() {
      pattern = sample(private$email_formats, 1)
      temp = private$to_ascii(str_remove_all(
        private$format_parse(pattern), " "))
      return(str_to_lower(temp, locale = private$locale))
    },

    ascii_safe_email = function() {
      temp = str_c(self$user_name(), "@example.",
                   sample(private$safe_email_tlds, 1))
      return(str_to_lower(private$to_ascii(temp), locale = private$locale))
    },

    ascii_free_email = function() {
      temp = str_c(self$user_name(), "@", self$free_email_domain())
      return(private$to_ascii(temp))
    },

    ascii_company_email = function() {
      temp = str_c(self$user_name(), "@", self$domain_name())
      return(str_to_lower(private$to_ascii(temp), locale = private$locale))
    },

    user_name = function() {
      pattern = sample(private$user_name_formats, 1)
      username = private$to_ascii(str_to_lower(
        private$bothify(private$format_parse(pattern)),
        locale = private$locale)
      )
      return(private$slugify(username, allow_unicode = TRUE))
    },

    hostname = function(levels = 1) {
      # Produce a hostname with specified number of subdomain levels.
      # >>> hostname()
      # db-01.nichols-phillips.com
      # >>> hostname(0)
      # laptop-56
      # >>> hostname(2)
      # web-12.williamson-hopkins.jackson.com

      if (levels < 1) {
        temp = str_c(private$random_element(private$hostname_prefixes),
                     "-", private$numerify("##"))
        return(str_to_lower(temp, locale = private$locale))
      }
      temp = str_c(private$random_element(private$hostname_prefixes),
                   "-", private$numerify("##"), ".",
                   self$domain_name(levels))
      return(str_to_lower(temp, locale = private$locale))
    },

    domain_name = function(levels = 1) {
      # Produce an Internet domain name with the specified number of
      # subdomain levels.
      # >>> domain_name()
      # nichols-phillips.com
      # >>> domain_name(2)
      # williamson-hopkins.jackson.com

      if (levels < 1) {
        stop("levels must be greater than or equal to 1")
      }

      if (levels == 1) {
        temp = str_c(self$domain_word(), ".", self$tld())
        return(str_to_lower(temp, locale = private$locale))
      } else {
        temp = str_c(self$domain_word(), ".",
                     self$domain_name(levels - 1))
        return(str_to_lower(temp, locale = private$locale))
      }
    },

    domain_word = function() {
      company = (company_init$new())$company()
      company_elements = str_split(company, " ")[[1]]
      company = private$to_ascii(company_elements[1])
      return(private$slugify(company, allow_unicode = TRUE))
    },

    tld = function() {
      return(private$random_element(private$tlds))
    },

    url = function(schemes) {
      # :param schemes: a list of strings to use as schemes, one will chosen randomly.
      # If None, it will generate http and https urls.
      # Passing an empty list will result in schemeless url generation like "://domain.com".
      # :returns: a random url string.

      if (missing(schemes)) {
        schemes = c("http", "https")
      }
      pattern = str_c(ifelse(missing(schemes), "", sample(schemes, 1)),
                      "://", private$random_element(private$url_formats))
      return(private$format_parse(pattern))
    },

    mac_address = function() {
      mac = replicate(6, private$random_int(0, 255))
      mac = as.hexmode(mac)
      mac[str_length(mac) == 1] = str_c("0", mac[str_length(mac) == 1])
      mac = str_c(":", mac, collapse = "")
      return(str_sub(mac, start = 2))
    },

    uri_page = function() {
      return(private$random_element(private$uri_pages))
    },

    uri_path = function(deep) {
      deep = ifelse(missing(deep), private$random_int(1, 3), deep)
      temp = sample(private$uri_paths, size = deep, replace = TRUE)
      mac = str_c("/", temp, collapse = "")
      return(str_sub(mac, start = 2))
    },

    uri_extension = function() {
      return(private$random_element(private$uri_extensions))
    },

    uri = function() {
      return(private$format_parse(private$random_element(private$uri_formats)))
    },

    slug = function(string) {
      string = ifelse(missing(string),
                      (lorem_init$new())$text(max_nb_chars = 20),
                      string)
      return(private$slugify(string))
    },

    image_url = function(width, height) {
      width  = ifelse(missing(width), private$random_int(to = 1024), width)
      height  = ifelse(missing(height), private$random_int(to = 1024), height)
      placeholder_url = private$random_element(private$image_placeholder_services)
      return(sprintf(placeholder_url, width, height))
    },

    ipv4_network_class = function() {
      # Returns a IPv4 network class 'a', 'b' or 'c'.
      return(sample(c("a", "b", "c"), 1))
    },

    ipv4_public = function(address_class, network = FALSE) {
      address_class = ifelse(missing(address_class),
                             self$ipv4_network_class(),
                             address_class)
      public_networks = private$network_classes[address_class]
      public_networks = private$exclude_ipv4_networks(
        public_networks,
        c(private$private_networks, private$exclude_networks)
      )
      public_network = sample(public_networks, 1)
      return(private$random_ipv4_address_from_subnet(public_network, network))
    },

    ipv4_private = function(address_class, network = FALSE) {
      address_class = ifelse(missing(address_class),
                             self$ipv4_network_class(),
                             address_class)

      supernet = private$network_classes[address_class]
      private_networks = c()
      for (subnet in private$private_networks) {
        if (private$overlaps(subnet, supernet)) {
          private_networks = c(private_networks, subnet)
        }
      }

      private_networks = private$exclude_ipv4_networks(
        private_networks,
        private$excluded_networks
      )

      private_network = sample(private_networks, 1)
      return(private$random_ipv4_address_from_subnet(private_network, network))
    },

    ipv4 = function(address_class, public, network = FALSE) {
      all_networks = ifelse(missing(address_class),
                            "0.0.0.0/0",
                            private$network_classes[address_class])
      all_networks = private$exclude_ipv4_networks(all_networks,
                                                   private$excluded_networks)
      random_network = sample(all_networks, 1)

      temp = private$random_ipv4_address_from_subnet(random_network, network)
      if (missing(public)) return(temp)
      if (public) return(self$ipv4_public(address_class, network))
      if (!public) return(self$ipv4_private(address_class, network))

    },

    ipv6 = function(network = FALSE) {
      address = private$ipv6_address()
      if (network) {
        address = str_c(address, "/", private$random_int(0, 128))
        address = private$ipv6_network(address)
      }
      return(address)
    }
  )
)

## microservice --------------------------------------------------
microservice_init = R6Class(
  "microservice_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    SINGULAR_NOUNS = c(
      "auth",
      "authentication",
      "authorisation",
      "cloud",
      "contact",
      "conversion",
      "email",
      "error",
      "fraud",
      "fulfilment",
      "help",
      "legacy",
      "login",
      "monolith",
      "order",
      "payment",
      "print",
      "promo",
      "promotion",
      "sale",
      "sms",
      "user"
    ),

    PLURAL_NOUNS = c(
      "clouds",
      "contacts",
      "conversions",
      "emails",
      "errors",
      "logins",
      "orders",
      "payments",
      "promos",
      "promotions",
      "sales",
      "users"
    ),

    DELIMITERS = c("", "-", "_"),

    SUFFIXES = c(
      "adapter",
      "adaptor",
      "api",
      "backend",
      "be",
      "bridge",
      "dashboard",
      "fe",
      "frontend",
      "interface",
      "manager",
      "platform",
      "processor",
      "service",
      "ui"
    ),
    microservice_simple = function() {
      return(private$random_element(c(private$SINGULAR_NOUNS,
                      private$PLURAL_NOUNS)))
    },

    microservice_with_delimiter_and_suffix = function() {
      temp1 = private$random_element(private$SINGULAR_NOUNS)
      temp2 = private$random_element(private$DELIMITERS)
      temp3 = private$random_element(private$SUFFIXES)
      return(str_c(temp1, temp2, temp3))
    }
  ),
  public = list(
    microservice = function() {
      if(sample(c(TRUE, FALSE), 1)) return(private$microservice_simple())
      return(private$microservice_with_delimiter_and_suffix())
    }
  )
)


## misc  ------------------------------------------------
misc_init = R6Class(
  "misc_init",
  inherit = init,
  cloneable = FALSE,
  public = list(
    md5 = function(raw_output = FALSE){
      return(digest(runif(1), algo = "md5", raw = raw_output))
    },

    sha1 = function(raw_output = FALSE){
      return(digest(runif(1), algo = "sha1", raw = raw_output))
    },

    sha256 = function(raw_output = FALSE){
      return(digest(runif(1), algo = "sha256", raw = raw_output))
    },

    sha512 = function(raw_output = FALSE){
      return(digest(runif(1), algo = "sha512", raw = raw_output))
    },

    password = function(len = 10, sepcial_chars = TRUE,
                        digits = TRUE, upper_case = TRUE, lower_case = TRUE){
      choices = c()
      required_tokens = c()
      if (sepcial_chars) {
        required_tokens = sample(c("!", "@", "#", "$", "%", "^",
                                   "&", "*", "(", ")", "_", "+"), 1)
        choices = c(choices, c("!", "@", "#", "$", "%", "^",
                               "&", "*", "(", ")", "_", "+"))
      }
      if (digits) {
        required_tokens = c(required_tokens, sample(seq(0, 9), 1))
        choices = c(choices, seq(0, 9))
      }
      if (upper_case) {
        required_tokens = c(required_tokens, sample(LETTERS, 1))
        choices = c(choices, LETTERS)
      }
      if (lower_case) {
        required_tokens = c(required_tokens, sample(letters, 1))
        choices = c(choices, letters)
      }
      if (length(required_tokens) > len) {
        stop("Required length is shorter than required characters")
      }

      chars = sample(choices, size = len)
      random_indexes = c()
      while(length(random_indexes) < length(required_tokens)) {
        random_indexes = c(random_indexes, sample(seq(0, (length(chars)-1)), 1))
      }

      for (i in seq_along(random_indexes)) {
        chars[random_indexes[i]] = required_tokens[i]
      }
      return(str_c(chars, collapse = ""))
    }
  )
)

## phone_number  -----------------------------------------------
phone_number_init = R6Class(
  "phone_number_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    formats = "###-###-###",
    msisdn_formats = '#############'
  ),

  public = list(
    phone_number = function(){
      return(private$numerify(private$random_element(private$formats)))
    },

    msisdn = function(){
      # """ https://en.wikipedia.org/wiki/MSISDN """
      return(private$numerify(private$random_element(private$msisdn_formats)))
    }
  )
)

## ssn ----------------------------------------------------------
ssn_init = R6Class(
  "ssn_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    ssn_formats = "###-##-####"
  ),

  public = list(
    ssn = function(){
      return(private$bothify(private$random_element(private$ssn_formats)))
    }
  )
)

## profile --------------------------------------------------------
profile_init = R6Class(
  "profile_init",
  inherit = init,
  cloneable = FALSE,
  public = list(
    simple_profile = function(sex) {
      # Generates a basic profile with personal informations
      SEX = c("F", "M")
      if (missing(sex)) sex = sample(SEX, 1)

      if (!(sex %in% SEX)) sex = sample(SEX, 1)

      name = ifelse(sex == "F",
                    (person_init$new())$name_female(),
                    (person_init$new())$name_male())
      temp = list(
        "username" = (internet_init$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_init$new())$address(),
        "mail" = (internet_init$new())$free_email(),
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
        "company" = (company_init$new())$company(),
        "ssn" = (ssn_init$new())$ssn(),
        "residence" = (address_init$new())$address(),
        "current_location" = c((geo_init$new())$latitude(),
                               (geo_init$new())$longitude()),
        "blood_group" = sample(c(
          "A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"), 1),
        "website" = replicate(sample(seq(4), 1), (internet_init$new())$url())
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

## user_agent  ------------------------------------------------------
user_agent_init = R6Class(
  "user_agent_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    user_agents = c(
      'chrome', 'firefox', 'internet_explorer', 'opera', 'safari'
    ),

    windows_platform_tokens = c(
      'Windows 95', 'Windows 98', 'Windows 98; Win 9x 4.90', 'Windows CE',
      'Windows NT 4.0', 'Windows NT 5.0', 'Windows NT 5.01',
      'Windows NT 5.1', 'Windows NT 5.2', 'Windows NT 6.0', 'Windows NT 6.1',
      'Windows NT 6.2'
    ),

    linux_processors = c('i686', 'x86_64'),

    mac_processors = c('Intel', 'PPC', 'U; Intel', 'U; PPC'),

    android_versions = c(
      '1.0', '1.1', '1.5', '1.6', '2.0', '2.0.1', '2.1', '2.2', '2.2.1', '2.2.2', '2.2.3', '2.3', '2.3.1', '2.3.2',
      '2.3.3', '2.3.4', '2.3.5', '2.3.6', '2.3.7', '3.0', '3.1', '3.2', '3.2.1', '3.2.2', '3.2.3', '3.2.4', '3.2.5',
      '3.2.6', '4.0', '4.0.1', '4.0.2', '4.0.3', '4.0.4', '4.1', '4.1.1', '4.1.2', '4.2', '4.2.1', '4.2.2', '4.3',
      '4.3.1', '4.4', '4.4.1', '4.4.2', '4.4.3', '4.4.4', '5.0', '5.0.1', '5.0.2', '5.1', '5.1.1', '6.0', '6.0.1',
      '7.0', '7.1', '7.1.1', '7.1.2', '8.0.0', '8.1.0', '9'),

    apple_devices = c('iPhone', 'iPad'),

    ios_versions = c(
      '3.1.3', '4.2.1', '5.1.1', '6.1.6', '7.1.2', '9.3.5', '9.3.6', '10.3.3', '10.3.4', '12.4')
  ),

  public = list(
    mac_processor = function() {
      return(private$random_element(private$mac_processors))
    },

    linux_processor = function() {
      return(private$random_element(private$linux_processors))
    },

    user_agent = function() {
      name = private$random_element(private$user_agents)
      fun = eval(parse(text = str_c("self$", name)))
      return(fun())
    },

    chrome = function(version_from = 13, version_to = 63,
                      build_from = 800, build_to = 899) {
      saf = str_c(private$random_int(531, 536), ".",
                  private$random_int(0, 2))
      bld = private$lexify(private$numerify("##?###"), LETTERS)
      tmplt = "(%s) AppleWebKit/%s (KHTML, like Gecko) Chrome/%d.0.%d.0 Safari/%s"
      tmplt_ios = '(%s) AppleWebKit/%s (KHTML, like Gecko) CriOS/%d.0.%d.0 Mobile/%s Safari/%s'

      platforms = c("linux", "windows", "mac", "Linux", "ios")
      platform = sample(platforms, 1)
      if (platform == "linux") {
        temp = sprintf(tmplt,
                       self$linux_platform_token(),
                       saf,
                       private$random_int(version_from, version_to),
                       private$random_int(build_from, build_to),
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "windows") {
        temp = sprintf(tmplt,
                       self$windows_platform_token(),
                       saf,
                       private$random_int(version_from, version_to),
                       private$random_int(build_from, build_to),
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "mac") {
        temp = sprintf(tmplt,
                       self$mac_platform_token(),
                       saf,
                       private$random_int(version_from, version_to),
                       private$random_int(build_from, build_to),
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "Linux") {
        temp = sprintf(tmplt,
                       str_c("Linux; ", self$android_platform_token()),
                       saf,
                       private$random_int(version_from, version_to),
                       private$random_int(build_from, build_to),
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "ios") {
        temp = sprintf(tmplt_ios,
                       self$ios_platform_token(),
                       saf,
                       private$random_int(version_from, version_to),
                       private$random_int(build_from, build_to),
                       bld,
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }
    },

    firefox = function() {
      vers = c(
        'sprintf(
        "Gecko/%s Firefox/%d.0",
        (date_time_init$new())$date_time("2011-01-01"),
        private$random_int(4, 15)
        )',

        'sprintf(
        "Gecko/%s Firefox/3.6.%d",
        (date_time_init$new())$date_time("2010-01-01"),
        private$random_int(1, 20)
        )',

        'sprintf(
        "Gecko/%s Firefox/3.8",
        (date_time_init$new())$date_time("2010-01-01")
        )'
      )

      ver = eval(parse(text = sample(vers, 1)))

      tmplt_win = '(%s; %s; rv:1.9.%d.20) %s'
      tmplt_lin = '(%s; rv:1.9.%d.20) %s'
      tmplt_mac = '(%s; rv:1.9.%d.20) %s'
      tmplt_and = '(%s; Mobile; rv:%d.0) Gecko/%d.0 Firefox/%d.0'
      tmplt_ios = '(%s) AppleWebKit/%s (KHTML, like Gecko) FxiOS/%d.%s.0 Mobile/%s Safari/%s'

      saf = sprintf("%d.%d",
                    private$random_int(531, 536),
                    private$random_int(0, 2))
      bld = private$lexify(private$numerify("##?###"), LETTERS)
      bld2 = private$lexify(private$numerify("#?####"), letters)

      platforms = c("win", "lin", "mac", "and", "ios")
      platform = sample(platforms, 1)
      if (platform == "win") {
        temp = sprintf(tmplt_win,
                       self$windows_platform_token(),
                       str_replace_all(private$locale(), "_", "-"),
                       private$random_int(0, 2),
                       ver)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "lin") {
        temp = sprintf(tmplt_lin,
                       self$linux_platform_token(),
                       private$random_int(5, 7),
                       ver)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "mac") {
        temp = sprintf(tmplt_mac,
                       self$mac_platform_token(),
                       private$random_int(2, 6),
                       ver)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "and") {
        rint = private$random_int(5, 68)
        temp = sprintf(tmplt_and,
                       self$android_platform_token(),
                       rint,
                       rint,
                       rint)
        return(str_c('Mozilla/5.0 ', temp))
      }

      if (platform == "ios") {
        temp = sprintf(tmplt_ios,
                       self$ios_platform_token(),
                       saf,
                       private$random_int(9, 18),
                       bld2,
                       bld,
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }
    },

    safari = function() {
      saf = str_c(
        private$random_int(531, 535), ".",
        private$random_int(1, 50), ".",
        private$random_int(1, 7))
      if (sample(c(0, 1), 1)) {
        ver = str_c(
          private$random_int(4, 5), ".",
          private$random_int(0, 1)
        )
      } else {
        ver = str_c(
          private$random_int(4, 5), ".",
          "0.", private$random_int(1, 5)
        )
      }

      tmplt_win = '(Windows; U; %s) AppleWebKit/%s (KHTML, like Gecko) Version/%s Safari/%s'
      tmplt_mac = '(%s rv:%d.0; %s) AppleWebKit/%s (KHTML, like Gecko) Version/%s Safari/%s'
      tmplt_ipod = '(iPod; U; CPU iPhone OS %d_%d like Mac OS X; %s) AppleWebKit/%s (KHTML, like Gecko) Version/%d.0.5 Mobile/8B%d Safari/6%s'
      locale = str_replace_all(private$locale(), "_", "-")

      platforms = c("win", "mac", "ipod")
      platform = sample(platforms, 1)

      if (platform == "win") {
        temp = sprintf(tmplt_win,
                       self$windows_platform_token(),
                       saf,
                       ver,
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }
      if (platform == "mac") {
        temp = sprintf(tmplt_mac,
                       self$mac_platform_token(),
                       private$random_int(2, 6),
                       locale,
                       saf,
                       ver,
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }
      if (platform == "ipod") {
        temp = sprintf(tmplt_mac,
                       private$random_int(3, 4),
                       private$random_int(0, 3),
                       locale,
                       saf,
                       private$random_int(3, 4),
                       private$random_int(111, 119),
                       saf)
        return(str_c('Mozilla/5.0 ', temp))
      }
    },

    opera = function() {
      platform = sprintf(
        '(%s; %s) Presto/2.9.%d Version/%d.00',
        ifelse(sample(c(0, 1), 1),
               self$linux_platform_token(),
               self$windows_platform_token()),
        str_replace_all(private$locale(), "_", "-"),
        private$random_int(160, 190),
        private$random_int(10, 12)
      )

      temp = sprintf('Opera/%d.%d.%s',
                     private$random_int(8, 9),
                     private$random_int(10, 99),
                     platform)
      return(temp)
    },

    internet_explorer = function() {
      tmplt = 'Mozilla/5.0 (compatible; MSIE %d.0; %s; Trident/%d.%d)'

      temp = sprintf(tmplt,
                     private$random_int(5, 9),
                     self$windows_platform_token(),
                     private$random_int(3, 5),
                     private$random_int(0, 1)
      )
      return(temp)
    },

    windows_platform_token = function() {
      return(private$random_element(private$windows_platform_tokens))
    },

    linux_platform_token = function() {
      return(str_c('X11; Linux ',
                   private$random_element(private$linux_processors)))
    },

    mac_platform_token = function(){
      temp  = sprintf(
        'Macintosh; %s Mac OS X 10_%d_%d',
        private$random_element(private$mac_processors),
        private$random_int(5, 12),
        private$random_int(0, 9)
      )
      return(temp)
    },

    android_platform_token = function() {
      return(str_c("Android ", private$random_element(private$android_versions)))
    },

    ios_platform_token = function() {
      apple_device = private$random_element(private$apple_devices)
      temp = sprintf(
        '%s; CPU %s OS %s like Mac OS X',
        apple_device,
        apple_device,
        str_replace_all(private$random_element(private$ios_versions), "\\.", "_")
      )
      return(temp)
    }
  )
)

## web --------------------------------------------------------
web_init = R6Class(
  "web_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    all_mime_types = list(
      'application/andrew-inset' = c('ez'),
      'application/applixware' = c('aw'),
      'application/atom+xml' = c('atom'),
      'application/atomcat+xml' = c('atomcat'),
      'application/atomsvc+xml' = c('atomsvc'),
      'application/ccxml+xml' = c('ccxml'),
      'application/cdmi-capability' = c('cdmia'),
      'application/cdmi-container' = c('cdmic'),
      'application/cdmi-domain' = c('cdmid'),
      'application/cdmi-object' = c('cdmio'),
      'application/cdmi-queue' = c('cdmiq'),
      'application/cu-seeme' = c('cu'),
      'application/davmount+xml' = c('davmount'),
      'application/docbook+xml' = c('dbk'),
      'application/dssc+der' = c('dssc'),
      'application/dssc+xml' = c('xdssc'),
      'application/ecmascript' = c('ecma'),
      'application/emma+xml' = c('emma'),
      'application/epub+zip' = c('epub'),
      'application/exi' = c('exi'),
      'application/font-tdpfr' = c('pfr'),
      'application/font-woff' = c('woff'),
      'application/gml+xml' = c('gml'),
      'application/gpx+xml' = c('gpx'),
      'application/gxf' = c('gxf'),
      'application/hyperstudio' = c('stk'),
      'application/inkml+xml' = c('ink', 'inkml'),
      'application/ipfix' = c('ipfix'),
      'application/java-archive' = c('jar'),
      'application/java-serialized-object' = c('ser'),
      'application/java-vm' = c('class'),
      'application/javascript' = c('js'),
      'application/json' = c('json'),
      'application/jsonml+json' = c('jsonml'),
      'application/lost+xml' = c('lostxml'),
      'application/mac-binhex40' = c('hqx'),
      'application/mac-compactpro' = c('cpt'),
      'application/mads+xml' = c('mads'),
      'application/marc' = c('mrc'),
      'application/marcxml+xml' = c('mrcx'),
      'application/mathematica' = c('ma', 'nb', 'mb'),
      'application/mathml+xml' = c('mathml'),
      'application/mbox' = c('mbox'),
      'application/mediaservercontrol+xml' = c('mscml'),
      'application/metalink+xml' = c('metalink'),
      'application/metalink4+xml' = c('meta4'),
      'application/mets+xml' = c('mets'),
      'application/mods+xml' = c('mods'),
      'application/mp21' = c('m21', 'mp21'),
      'application/mp4' = c('mp4s'),
      'application/msword' = c('doc', 'dot'),
      'application/mxf' = c('mxf'),
      'application/octet-stream' = c( 'bin',
                                      'dms',
                                      'lrf',
                                      'mar',
                                      'so',
                                      'dist',
                                      'distz',
                                      'pkg',
                                      'bpk',
                                      'dump',
                                      'elc',
                                      'deploy'),
      'application/oda' = c('oda'),
      'application/oebps-package+xml' = c('opf'),
      'application/ogg' = c('ogx'),
      'application/omdoc+xml' = c('omdoc'),
      'application/onenote' = c('onetoc', 'onetoc2', 'onetmp', 'onepkg'),
      'application/oxps' = c('oxps'),
      'application/patch-ops-error+xml' = c('xer'),
      'application/pdf' = c('pdf'),
      'application/pgp-encrypted' = c('pgp'),
      'application/pgp-signature' = c('asc', 'sig'),
      'application/pics-rules' = c('prf'),
      'application/pkcs10' = c('p10'),
      'application/pkcs7-mime' = c('p7m', 'p7c'),
      'application/pkcs7-signature' = c('p7s'),
      'application/pkcs8' = c('p8'),
      'application/pkix-attr-cert' = c('ac'),
      'application/pkix-cert' = c('cer'),
      'application/pkix-crl' = c('crl'),
      'application/pkix-pkipath' = c('pkipath'),
      'application/pkixcmp' = c('pki'),
      'application/pls+xml' = c('pls'),
      'application/postscript' = c('ai', 'eps', 'ps'),
      'application/prs.cww' = c('cww'),
      'application/pskc+xml' = c('pskcxml'),
      'application/rdf+xml' = c('rdf'),
      'application/reginfo+xml' = c('rif'),
      'application/relax-ng-compact-syntax' = c('rnc'),
      'application/resource-lists+xml' = c('rl'),
      'application/resource-lists-diff+xml' = c('rld'),
      'application/rls-services+xml' = c('rs'),
      'application/rpki-ghostbusters' = c('gbr'),
      'application/rpki-manifest' = c('mft'),
      'application/rpki-roa' = c('roa'),
      'application/rsd+xml' = c('rsd'),
      'application/rss+xml' = c('rss'),
      'application/rtf' = c('rtf'),
      'application/sbml+xml' = c('sbml'),
      'application/scvp-cv-request' = c('scq'),
      'application/scvp-cv-response' = c('scs'),
      'application/scvp-vp-request' = c('spq'),
      'application/scvp-vp-response' = c('spp'),
      'application/sdp' = c('sdp'),
      'application/set-payment-initiation' = c('setpay'),
      'application/set-registration-initiation' = c('setreg'),
      'application/shf+xml' = c('shf'),
      'application/smil+xml' = c('smi', 'smil'),
      'application/sparql-query' = c('rq'),
      'application/sparql-results+xml' = c('srx'),
      'application/srgs' = c('gram'),
      'application/srgs+xml' = c('grxml'),
      'application/sru+xml' = c('sru'),
      'application/ssdl+xml' = c('ssdl'),
      'application/ssml+xml' = c('ssml'),
      'application/tei+xml' = c('tei', 'teicorpus'),
      'application/thraud+xml' = c('tfi'),
      'application/timestamped-data' = c('tsd'),
      'application/vnd.3gpp.pic-bw-large' = c('plb'),
      'application/vnd.3gpp.pic-bw-small' = c('psb'),
      'application/vnd.3gpp.pic-bw-var' = c('pvb'),
      'application/vnd.3gpp2.tcap' = c('tcap'),
      'application/vnd.3m.post-it-notes' = c('pwn'),
      'application/vnd.accpac.simply.aso' = c('aso'),
      'application/vnd.accpac.simply.imp' = c('imp'),
      'application/vnd.acucobol' = c('acu'),
      'application/vnd.acucorp' = c('atc', 'acutc'),
      'application/vnd.adobe.air-application-installer-package+zip' = c('air'),
      'application/vnd.adobe.formscentral.fcdt' = c('fcdt'),
      'application/vnd.adobe.fxp' = c('fxp', 'fxpl'),
      'application/vnd.adobe.xdp+xml' = c('xdp'),
      'application/vnd.adobe.xfdf' = c('xfdf'),
      'application/vnd.ahead.space' = c('ahead'),
      'application/vnd.airzip.filesecure.azf' = c('azf'),
      'application/vnd.airzip.filesecure.azs' = c('azs'),
      'application/vnd.amazon.ebook' = c('azw'),
      'application/vnd.americandynamics.acc' = c('acc'),
      'application/vnd.amiga.ami' = c('ami'),
      'application/vnd.android.package-archive' = c('apk'),
      'application/vnd.anser-web-certificate-issue-initiation' = c('cii'),
      'application/vnd.anser-web-funds-transfer-initiation' = c('fti'),
      'application/vnd.antix.game-component' = c('atx'),
      'application/vnd.apple.installer+xml' = c('mpkg'),
      'application/vnd.apple.mpegurl' = c('m3u8'),
      'application/vnd.aristanetworks.swi' = c('swi'),
      'application/vnd.astraea-software.iota' = c('iota'),
      'application/vnd.audiograph' = c('aep'),
      'application/vnd.blueice.multipass' = c('mpm'),
      'application/vnd.bmi' = c('bmi'),
      'application/vnd.businessobjects' = c('rep'),
      'application/vnd.chemdraw+xml' = c('cdxml'),
      'application/vnd.chipnuts.karaoke-mmd' = c('mmd'),
      'application/vnd.cinderella' = c('cdy'),
      'application/vnd.claymore' = c('cla'),
      'application/vnd.cloanto.rp9' = c('rp9'),
      'application/vnd.clonk.c4group' = c('c4g', 'c4d', 'c4f', 'c4p', 'c4u'),
      'application/vnd.cluetrust.cartomobile-config' = c('c11amc'),
      'application/vnd.cluetrust.cartomobile-config-pkg' = c('c11amz'),
      'application/vnd.commonspace' = c('csp'),
      'application/vnd.contact.cmsg' = c('cdbcmsg'),
      'application/vnd.cosmocaller' = c('cmc'),
      'application/vnd.crick.clicker' = c('clkx'),
      'application/vnd.crick.clicker.keyboard' = c('clkk'),
      'application/vnd.crick.clicker.palette' = c('clkp'),
      'application/vnd.crick.clicker.template' = c('clkt'),
      'application/vnd.crick.clicker.wordbank' = c('clkw'),
      'application/vnd.criticaltools.wbs+xml' = c('wbs'),
      'application/vnd.ctc-posml' = c('pml'),
      'application/vnd.cups-ppd' = c('ppd'),
      'application/vnd.curl.car' = c('car'),
      'application/vnd.curl.pcurl' = c('pcurl'),
      'application/vnd.dart' = c('dart'),
      'application/vnd.data-vision.rdz' = c('rdz'),
      'application/vnd.dece.data' = c('uvf', 'uvvf', 'uvd', 'uvvd'),
      'application/vnd.dece.ttml+xml' = c('uvt', 'uvvt'),
      'application/vnd.dece.unspecified' = c('uvx', 'uvvx'),
      'application/vnd.dece.zip' = c('uvz', 'uvvz'),
      'application/vnd.denovo.fcselayout-link' = c('fe_launch'),
      'application/vnd.dna' = c('dna'),
      'application/vnd.dolby.mlp' = c('mlp'),
      'application/vnd.dpgraph' = c('dpg'),
      'application/vnd.dreamfactory' = c('dfac'),
      'application/vnd.ds-keypoint' = c('kpxx'),
      'application/vnd.dvb.ait' = c('ait'),
      'application/vnd.dvb.service' = c('svc'),
      'application/vnd.dynageo' = c('geo'),
      'application/vnd.ecowin.chart' = c('mag'),
      'application/vnd.enliven' = c('nml'),
      'application/vnd.epson.esf' = c('esf'),
      'application/vnd.epson.msf' = c('msf'),
      'application/vnd.epson.quickanime' = c('qam'),
      'application/vnd.epson.salt' = c('slt'),
      'application/vnd.epson.ssf' = c('ssf'),
      'application/vnd.eszigno3+xml' = c('es3', 'et3'),
      'application/vnd.ezpix-album' = c('ez2'),
      'application/vnd.ezpix-package' = c('ez3'),
      'application/vnd.fdf' = c('fdf'),
      'application/vnd.fdsn.mseed' = c('mseed'),
      'application/vnd.fdsn.seed' = c('seed', 'dataless'),
      'application/vnd.flographit' = c('gph'),
      'application/vnd.fluxtime.clip' = c('ftc'),
      'application/vnd.framemaker' = c('fm', 'frame', 'maker', 'book'),
      'application/vnd.frogans.fnc' = c('fnc'),
      'application/vnd.frogans.ltf' = c('ltf'),
      'application/vnd.fsc.weblaunch' = c('fsc'),
      'application/vnd.fujitsu.oasys' = c('oas'),
      'application/vnd.fujitsu.oasys2' = c('oa2'),
      'application/vnd.fujitsu.oasys3' = c('oa3'),
      'application/vnd.fujitsu.oasysgp' = c('fg5'),
      'application/vnd.fujitsu.oasysprs' = c('bh2'),
      'application/vnd.fujixerox.ddd' = c('ddd'),
      'application/vnd.fujixerox.docuworks' = c('xdw'),
      'application/vnd.fujixerox.docuworks.binder' = c('xbd'),
      'application/vnd.fuzzysheet' = c('fzs'),
      'application/vnd.genomatix.tuxedo' = c('txd'),
      'application/vnd.geogebra.file' = c('ggb'),
      'application/vnd.geogebra.tool' = c('ggt'),
      'application/vnd.geometry-explorer' = c('gex', 'gre'),
      'application/vnd.geonext' = c('gxt'),
      'application/vnd.geoplan' = c('g2w'),
      'application/vnd.geospace' = c('g3w'),
      'application/vnd.gmx' = c('gmx'),
      'application/vnd.google-earth.kml+xml' = c('kml'),
      'application/vnd.google-earth.kmz' = c('kmz'),
      'application/vnd.grafeq' = c('gqf', 'gqs'),
      'application/vnd.groove-account' = c('gac'),
      'application/vnd.groove-help' = c('ghf'),
      'application/vnd.groove-identity-message' = c('gim'),
      'application/vnd.groove-injector' = c('grv'),
      'application/vnd.groove-tool-message' = c('gtm'),
      'application/vnd.groove-tool-template' = c('tpl'),
      'application/vnd.groove-vcard' = c('vcg'),
      'application/vnd.hal+xml' = c('hal'),
      'application/vnd.handheld-entertainment+xml' = c('zmm'),
      'application/vnd.hbci' = c('hbci'),
      'application/vnd.hhe.lesson-player' = c('les'),
      'application/vnd.hp-hpgl' = c('hpgl'),
      'application/vnd.hp-hpid' = c('hpid'),
      'application/vnd.hp-hps' = c('hps'),
      'application/vnd.hp-jlyt' = c('jlt'),
      'application/vnd.hp-pcl' = c('pcl'),
      'application/vnd.hp-pclxl' = c('pclxl'),
      'application/vnd.hydrostatix.sof-data' = c('sfd-hdstx'),
      'application/vnd.ibm.minipay' = c('mpy'),
      'application/vnd.ibm.modcap' = c('afp', 'listafp', 'list3820'),
      'application/vnd.ibm.rights-management' = c('irm'),
      'application/vnd.ibm.secure-container' = c('sc'),
      'application/vnd.iccprofile' = c('icc', 'icm'),
      'application/vnd.igloader' = c('igl'),
      'application/vnd.immervision-ivp' = c('ivp'),
      'application/vnd.immervision-ivu' = c('ivu'),
      'application/vnd.insors.igm' = c('igm'),
      'application/vnd.intercon.formnet' = c('xpw', 'xpx'),
      'application/vnd.intergeo' = c('i2g'),
      'application/vnd.intu.qbo' = c('qbo'),
      'application/vnd.intu.qfx' = c('qfx'),
      'application/vnd.ipunplugged.rcprofile' = c('rcprofile'),
      'application/vnd.irepository.package+xml' = c('irp'),
      'application/vnd.is-xpr' = c('xpr'),
      'application/vnd.isac.fcs' = c('fcs'),
      'application/vnd.jam' = c('jam'),
      'application/vnd.jcp.javame.midlet-rms' = c('rms'),
      'application/vnd.jisp' = c('jisp'),
      'application/vnd.joost.joda-archive' = c('joda'),
      'application/vnd.kahootz' = c('ktz', 'ktr'),
      'application/vnd.kde.karbon' = c('karbon'),
      'application/vnd.kde.kchart' = c('chrt'),
      'application/vnd.kde.kformula' = c('kfo'),
      'application/vnd.kde.kivio' = c('flw'),
      'application/vnd.kde.kontour' = c('kon'),
      'application/vnd.kde.kpresenter' = c('kpr', 'kpt'),
      'application/vnd.kde.kspread' = c('ksp'),
      'application/vnd.kde.kword' = c('kwd', 'kwt'),
      'application/vnd.kenameaapp' = c('htke'),
      'application/vnd.kidspiration' = c('kia'),
      'application/vnd.kinar' = c('kne', 'knp'),
      'application/vnd.koan' = c('skp', 'skd', 'skt', 'skm'),
      'application/vnd.kodak-descriptor' = c('sse'),
      'application/vnd.las.las+xml' = c('lasxml'),
      'application/vnd.llamagraphics.life-balance.desktop' = c('lbd'),
      'application/vnd.llamagraphics.life-balance.exchange+xml' = c('lbe'),
      'application/vnd.lotus-1-2-3' = c('123'),
      'application/vnd.lotus-approach' = c('apr'),
      'application/vnd.lotus-freelance' = c('pre'),
      'application/vnd.lotus-notes' = c('nsf'),
      'application/vnd.lotus-organizer' = c('org'),
      'application/vnd.lotus-screencam' = c('scm'),
      'application/vnd.lotus-wordpro' = c('lwp'),
      'application/vnd.macports.portpkg' = c('portpkg'),
      'application/vnd.mcd' = c('mcd'),
      'application/vnd.medcalcdata' = c('mc1'),
      'application/vnd.mediastation.cdkey' = c('cdkey'),
      'application/vnd.mfer' = c('mwf'),
      'application/vnd.mfmp' = c('mfm'),
      'application/vnd.micrografx.flo' = c('flo'),
      'application/vnd.micrografx.igx' = c('igx'),
      'application/vnd.mif' = c('mif'),
      'application/vnd.mobius.daf' = c('daf'),
      'application/vnd.mobius.dis' = c('dis'),
      'application/vnd.mobius.mbk' = c('mbk'),
      'application/vnd.mobius.mqy' = c('mqy'),
      'application/vnd.mobius.msl' = c('msl'),
      'application/vnd.mobius.plc' = c('plc'),
      'application/vnd.mobius.txf' = c('txf'),
      'application/vnd.mophun.application' = c('mpn'),
      'application/vnd.mophun.certificate' = c('mpc'),
      'application/vnd.mozilla.xul+xml' = c('xul'),
      'application/vnd.ms-artgalry' = c('cil'),
      'application/vnd.ms-cab-compressed' = c('cab'),
      'application/vnd.ms-excel' = c('xls', 'xlm', 'xla', 'xlc', 'xlt', 'xlw'),
      'application/vnd.ms-excel.addin.macroenabled.12' = c('xlam'),
      'application/vnd.ms-excel.sheet.binary.macroenabled.12' = c('xlsb'),
      'application/vnd.ms-excel.sheet.macroenabled.12' = c('xlsm'),
      'application/vnd.ms-excel.template.macroenabled.12' = c('xltm'),
      'application/vnd.ms-fontobject' = c('eot'),
      'application/vnd.ms-htmlhelp' = c('chm'),
      'application/vnd.ms-ims' = c('ims'),
      'application/vnd.ms-lrm' = c('lrm'),
      'application/vnd.ms-officetheme' = c('thmx'),
      'application/vnd.ms-pki.seccat' = c('cat'),
      'application/vnd.ms-pki.stl' = c('stl'),
      'application/vnd.ms-powerpoint' = c('ppt', 'pps', 'pot'),
      'application/vnd.ms-powerpoint.addin.macroenabled.12' = c('ppam'),
      'application/vnd.ms-powerpoint.presentation.macroenabled.12' = c('pptm'),
      'application/vnd.ms-powerpoint.slide.macroenabled.12' = c('sldm'),
      'application/vnd.ms-powerpoint.slideshow.macroenabled.12' = c('ppsm'),
      'application/vnd.ms-powerpoint.template.macroenabled.12' = c('potm'),
      'application/vnd.ms-project' = c('mpp', 'mpt'),
      'application/vnd.ms-word.document.macroenabled.12' = c('docm'),
      'application/vnd.ms-word.template.macroenabled.12' = c('dotm'),
      'application/vnd.ms-works' = c('wps', 'wks', 'wcm', 'wdb'),
      'application/vnd.ms-wpl' = c('wpl'),
      'application/vnd.ms-xpsdocument' = c('xps'),
      'application/vnd.mseq' = c('mseq'),
      'application/vnd.musician' = c('mus'),
      'application/vnd.muvee.style' = c('msty'),
      'application/vnd.mynfc' = c('taglet'),
      'application/vnd.neurolanguage.nlu' = c('nlu'),
      'application/vnd.nitf' = c('ntf', 'nitf'),
      'application/vnd.noblenet-directory' = c('nnd'),
      'application/vnd.noblenet-sealer' = c('nns'),
      'application/vnd.noblenet-web' = c('nnw'),
      'application/vnd.nokia.n-gage.data' = c('ngdat'),
      'application/vnd.nokia.n-gage.symbian.install' = c('n-gage'),
      'application/vnd.nokia.radio-preset' = c('rpst'),
      'application/vnd.nokia.radio-presets' = c('rpss'),
      'application/vnd.novadigm.edm' = c('edm'),
      'application/vnd.novadigm.edx' = c('edx'),
      'application/vnd.novadigm.ext' = c('ext'),
      'application/vnd.oasis.opendocument.chart' = c('odc'),
      'application/vnd.oasis.opendocument.chart-template' = c('otc'),
      'application/vnd.oasis.opendocument.database' = c('odb'),
      'application/vnd.oasis.opendocument.formula' = c('odf'),
      'application/vnd.oasis.opendocument.formula-template' = c('odft'),
      'application/vnd.oasis.opendocument.graphics' = c('odg'),
      'application/vnd.oasis.opendocument.graphics-template' = c('otg'),
      'application/vnd.oasis.opendocument.image' = c('odi'),
      'application/vnd.oasis.opendocument.image-template' = c('oti'),
      'application/vnd.oasis.opendocument.presentation' = c('odp'),
      'application/vnd.oasis.opendocument.presentation-template' = c('otp'),
      'application/vnd.oasis.opendocument.spreadsheet' = c('ods'),
      'application/vnd.oasis.opendocument.spreadsheet-template' = c('ots'),
      'application/vnd.oasis.opendocument.text' = c('odt'),
      'application/vnd.oasis.opendocument.text-master' = c('odm'),
      'application/vnd.oasis.opendocument.text-template' = c('ott'),
      'application/vnd.oasis.opendocument.text-web' = c('oth'),
      'application/vnd.olpc-sugar' = c('xo'),
      'application/vnd.oma.dd2+xml' = c('dd2'),
      'application/vnd.openofficeorg.extension' = c('oxt'),
      'application/vnd.openxmlformats-officedocument.presentationml.presentation' = c('pptx'),
      'application/vnd.openxmlformats-officedocument.presentationml.slide' = c('sldx'),
      'application/vnd.openxmlformats-officedocument.presentationml.slideshow' = c('ppsx'),
      'application/vnd.openxmlformats-officedocument.presentationml.template' = c('potx'),
      'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' = c('xlsx'),
      'application/vnd.openxmlformats-officedocument.spreadsheetml.template' = c('xltx'),
      'application/vnd.openxmlformats-officedocument.wordprocessingml.document' = c('docx'),
      'application/vnd.openxmlformats-officedocument.wordprocessingml.template' = c('dotx'),
      'application/vnd.osgeo.mapguide.package' = c('mgp'),
      'application/vnd.osgi.dp' = c('dp'),
      'application/vnd.osgi.subsystem' = c('esa'),
      'application/vnd.palm' = c('pdb', 'pqa', 'oprc'),
      'application/vnd.pawaafile' = c('paw'),
      'application/vnd.pg.format' = c('str'),
      'application/vnd.pg.osasli' = c('ei6'),
      'application/vnd.picsel' = c('efif'),
      'application/vnd.pmi.widget' = c('wg'),
      'application/vnd.pocketlearn' = c('plf'),
      'application/vnd.powerbuilder6' = c('pbd'),
      'application/vnd.previewsystems.box' = c('box'),
      'application/vnd.proteus.magazine' = c('mgz'),
      'application/vnd.publishare-delta-tree' = c('qps'),
      'application/vnd.pvi.ptid1' = c('ptid'),
      'application/vnd.quark.quarkxpress' = c( 'qxd',
                                               'qxt',
                                               'qwd',
                                               'qwt',
                                               'qxl',
                                               'qxb'),
      'application/vnd.realvnc.bed' = c('bed'),
      'application/vnd.recordare.musicxml' = c('mxl'),
      'application/vnd.recordare.musicxml+xml' = c('musicxml'),
      'application/vnd.rig.cryptonote' = c('cryptonote'),
      'application/vnd.rim.cod' = c('cod'),
      'application/vnd.rn-realmedia' = c('rm'),
      'application/vnd.rn-realmedia-vbr' = c('rmvb'),
      'application/vnd.route66.link66+xml' = c('link66'),
      'application/vnd.sailingtracker.track' = c('st'),
      'application/vnd.seemail' = c('see'),
      'application/vnd.sema' = c('sema'),
      'application/vnd.semd' = c('semd'),
      'application/vnd.semf' = c('semf'),
      'application/vnd.shana.informed.formdata' = c('ifm'),
      'application/vnd.shana.informed.formtemplate' = c('itp'),
      'application/vnd.shana.informed.interchange' = c('iif'),
      'application/vnd.shana.informed.package' = c('ipk'),
      'application/vnd.simtech-mindmapper' = c('twd', 'twds'),
      'application/vnd.smaf' = c('mmf'),
      'application/vnd.smart.teacher' = c('teacher'),
      'application/vnd.solent.sdkm+xml' = c('sdkm', 'sdkd'),
      'application/vnd.spotfire.dxp' = c('dxp'),
      'application/vnd.spotfire.sfs' = c('sfs'),
      'application/vnd.stardivision.calc' = c('sdc'),
      'application/vnd.stardivision.draw' = c('sda'),
      'application/vnd.stardivision.impress' = c('sdd'),
      'application/vnd.stardivision.math' = c('smf'),
      'application/vnd.stardivision.writer' = c('sdw', 'vor'),
      'application/vnd.stardivision.writer-global' = c('sgl'),
      'application/vnd.stepmania.package' = c('smzip'),
      'application/vnd.stepmania.stepchart' = c('sm'),
      'application/vnd.sun.xml.calc' = c('sxc'),
      'application/vnd.sun.xml.calc.template' = c('stc'),
      'application/vnd.sun.xml.draw' = c('sxd'),
      'application/vnd.sun.xml.draw.template' = c('std'),
      'application/vnd.sun.xml.impress' = c('sxi'),
      'application/vnd.sun.xml.impress.template' = c('sti'),
      'application/vnd.sun.xml.math' = c('sxm'),
      'application/vnd.sun.xml.writer' = c('sxw'),
      'application/vnd.sun.xml.writer.global' = c('sxg'),
      'application/vnd.sun.xml.writer.template' = c('stw'),
      'application/vnd.sus-calendar' = c('sus', 'susp'),
      'application/vnd.svd' = c('svd'),
      'application/vnd.symbian.install' = c('sis', 'sisx'),
      'application/vnd.syncml+xml' = c('xsm'),
      'application/vnd.syncml.dm+wbxml' = c('bdm'),
      'application/vnd.syncml.dm+xml' = c('xdm'),
      'application/vnd.tao.intent-module-archive' = c('tao'),
      'application/vnd.tcpdump.pcap' = c('pcap', 'cap', 'dmp'),
      'application/vnd.tmobile-livetv' = c('tmo'),
      'application/vnd.trid.tpt' = c('tpt'),
      'application/vnd.triscape.mxs' = c('mxs'),
      'application/vnd.trueapp' = c('tra'),
      'application/vnd.ufdl' = c('ufd', 'ufdl'),
      'application/vnd.uiq.theme' = c('utz'),
      'application/vnd.umajin' = c('umj'),
      'application/vnd.unity' = c('unityweb'),
      'application/vnd.uoml+xml' = c('uoml'),
      'application/vnd.vcx' = c('vcx'),
      'application/vnd.visio' = c('vsd', 'vst', 'vss', 'vsw'),
      'application/vnd.visionary' = c('vis'),
      'application/vnd.vsf' = c('vsf'),
      'application/vnd.wap.wbxml' = c('wbxml'),
      'application/vnd.wap.wmlc' = c('wmlc'),
      'application/vnd.wap.wmlscriptc' = c('wmlsc'),
      'application/vnd.webturbo' = c('wtb'),
      'application/vnd.wolfram.player' = c('nbp'),
      'application/vnd.wordperfect' = c('wpd'),
      'application/vnd.wqd' = c('wqd'),
      'application/vnd.wt.stf' = c('stf'),
      'application/vnd.xara' = c('xar'),
      'application/vnd.xfdl' = c('xfdl'),
      'application/vnd.yamaha.hv-dic' = c('hvd'),
      'application/vnd.yamaha.hv-script' = c('hvs'),
      'application/vnd.yamaha.hv-voice' = c('hvp'),
      'application/vnd.yamaha.openscoreformat' = c('osf'),
      'application/vnd.yamaha.openscoreformat.osfpvg+xml' = c('osfpvg'),
      'application/vnd.yamaha.smaf-audio' = c('saf'),
      'application/vnd.yamaha.smaf-phrase' = c('spf'),
      'application/vnd.yellowriver-custom-menu' = c('cmp'),
      'application/vnd.zul' = c('zir', 'zirz'),
      'application/vnd.zzazz.deck+xml' = c('zaz'),
      'application/voicexml+xml' = c('vxml'),
      'application/widget' = c('wgt'),
      'application/winhlp' = c('hlp'),
      'application/wsdl+xml' = c('wsdl'),
      'application/wspolicy+xml' = c('wspolicy'),
      'application/x-7z-compressed' = c('7z'),
      'application/x-abiword' = c('abw'),
      'application/x-ace-compressed' = c('ace'),
      'application/x-apple-diskimage' = c('dmg'),
      'application/x-authorware-bin' = c('aab', 'x32', 'u32', 'vox'),
      'application/x-authorware-map' = c('aam'),
      'application/x-authorware-seg' = c('aas'),
      'application/x-bcpio' = c('bcpio'),
      'application/x-bittorrent' = c('torrent'),
      'application/x-blorb' = c('blb', 'blorb'),
      'application/x-bzip' = c('bz'),
      'application/x-bzip2' = c('bz2', 'boz'),
      'application/x-cbr' = c('cbr', 'cba', 'cbt', 'cbz', 'cb7'),
      'application/x-cdlink' = c('vcd'),
      'application/x-cfs-compressed' = c('cfs'),
      'application/x-chat' = c('chat'),
      'application/x-chess-pgn' = c('pgn'),
      'application/x-conference' = c('nsc'),
      'application/x-cpio' = c('cpio'),
      'application/x-csh' = c('csh'),
      'application/x-debian-package' = c('deb', 'udeb'),
      'application/x-dgc-compressed' = c('dgc'),
      'application/x-director' = c( 'dir',
                                    'dcr',
                                    'dxr',
                                    'cst',
                                    'cct',
                                    'cxt',
                                    'w3d',
                                    'fgd',
                                    'swa'),
      'application/x-doom' = c('wad'),
      'application/x-dtbncx+xml' = c('ncx'),
      'application/x-dtbook+xml' = c('dtb'),
      'application/x-dtbresource+xml' = c('res'),
      'application/x-dvi' = c('dvi'),
      'application/x-envoy' = c('evy'),
      'application/x-eva' = c('eva'),
      'application/x-font-bdf' = c('bdf'),
      'application/x-font-ghostscript' = c('gsf'),
      'application/x-font-linux-psf' = c('psf'),
      'application/x-font-otf' = c('otf'),
      'application/x-font-pcf' = c('pcf'),
      'application/x-font-snf' = c('snf'),
      'application/x-font-ttf' = c('ttf', 'ttc'),
      'application/x-font-type1' = c('pfa', 'pfb', 'pfm', 'afm'),
      'application/x-freearc' = c('arc'),
      'application/x-futuresplash' = c('spl'),
      'application/x-gca-compressed' = c('gca'),
      'application/x-glulx' = c('ulx'),
      'application/x-gnumeric' = c('gnumeric'),
      'application/x-gramps-xml' = c('gramps'),
      'application/x-gtar' = c('gtar'),
      'application/x-hdf' = c('hdf'),
      'application/x-install-instructions' = c('install'),
      'application/x-iso9660-image' = c('iso'),
      'application/x-java-jnlp-file' = c('jnlp'),
      'application/x-latex' = c('latex'),
      'application/x-lzh-compressed' = c('lzh', 'lha'),
      'application/x-mie' = c('mie'),
      'application/x-mobipocket-ebook' = c('prc', 'mobi'),
      'application/x-ms-application' = c('application'),
      'application/x-ms-shortcut' = c('lnk'),
      'application/x-ms-wmd' = c('wmd'),
      'application/x-ms-wmz' = c('wmz'),
      'application/x-ms-xbap' = c('xbap'),
      'application/x-msaccess' = c('mdb'),
      'application/x-msbinder' = c('obd'),
      'application/x-mscardfile' = c('crd'),
      'application/x-msclip' = c('clp'),
      'application/x-msdownload' = c('exe', 'dll', 'com', 'bat', 'msi'),
      'application/x-msmediaview' = c('mvb', 'm13', 'm14'),
      'application/x-msmetafile' = c('wmf', 'wmz', 'emf', 'emz'),
      'application/x-msmoney' = c('mny'),
      'application/x-mspublisher' = c('pub'),
      'application/x-msschedule' = c('scd'),
      'application/x-msterminal' = c('trm'),
      'application/x-mswrite' = c('wri'),
      'application/x-netcdf' = c('nc', 'cdf'),
      'application/x-nzb' = c('nzb'),
      'application/x-pkcs12' = c('p12', 'pfx'),
      'application/x-pkcs7-certificates' = c('p7b', 'spc'),
      'application/x-pkcs7-certreqresp' = c('p7r'),
      'application/x-rar-compressed' = c('rar'),
      'application/x-research-info-systems' = c('ris'),
      'application/x-sh' = c('sh'),
      'application/x-shar' = c('shar'),
      'application/x-shockwave-flash' = c('swf'),
      'application/x-silverlight-app' = c('xap'),
      'application/x-sql' = c('sql'),
      'application/x-stuffit' = c('sit'),
      'application/x-stuffitx' = c('sitx'),
      'application/x-subrip' = c('srt'),
      'application/x-sv4cpio' = c('sv4cpio'),
      'application/x-sv4crc' = c('sv4crc'),
      'application/x-t3vm-image' = c('t3'),
      'application/x-tads' = c('gam'),
      'application/x-tar' = c('tar'),
      'application/x-tcl' = c('tcl'),
      'application/x-tex' = c('tex'),
      'application/x-tex-tfm' = c('tfm'),
      'application/x-texinfo' = c('texinfo', 'texi'),
      'application/x-tgif' = c('obj'),
      'application/x-ustar' = c('ustar'),
      'application/x-wais-source' = c('src'),
      'application/x-x509-ca-cert' = c('der', 'crt'),
      'application/x-xfig' = c('fig'),
      'application/x-xliff+xml' = c('xlf'),
      'application/x-xpinstall' = c('xpi'),
      'application/x-xz' = c('xz'),
      'application/x-zmachine' = c('z1', 'z2', 'z3', 'z4', 'z5', 'z6', 'z7', 'z8'),
      'application/xaml+xml' = c('xaml'),
      'application/xcap-diff+xml' = c('xdf'),
      'application/xenc+xml' = c('xenc'),
      'application/xhtml+xml' = c('xhtml', 'xht'),
      'application/xml' = c('xml', 'xsl'),
      'application/xml-dtd' = c('dtd'),
      'application/xop+xml' = c('xop'),
      'application/xproc+xml' = c('xpl'),
      'application/xslt+xml' = c('xslt'),
      'application/xspf+xml' = c('xspf'),
      'application/xv+xml' = c('mxml', 'xhvml', 'xvml', 'xvm'),
      'application/yang' = c('yang'),
      'application/yin+xml' = c('yin'),
      'application/zip' = c('zip'),
      'audio/adpcm' = c('adp'),
      'audio/basic' = c('au', 'snd'),
      'audio/midi' = c('mid', 'midi', 'kar', 'rmi'),
      'audio/mp4' = c('m4a', 'mp4a'),
      'audio/mpeg' = c('mpga', 'mp2', 'mp2a', 'mp3', 'm2a', 'm3a'),
      'audio/ogg' = c('oga', 'ogg', 'spx'),
      'audio/s3m' = c('s3m'),
      'audio/silk' = c('sil'),
      'audio/vnd.dece.audio' = c('uva', 'uvva'),
      'audio/vnd.digital-winds' = c('eol'),
      'audio/vnd.dra' = c('dra'),
      'audio/vnd.dts' = c('dts'),
      'audio/vnd.dts.hd' = c('dtshd'),
      'audio/vnd.lucent.voice' = c('lvp'),
      'audio/vnd.ms-playready.media.pya' = c('pya'),
      'audio/vnd.nuera.ecelp4800' = c('ecelp4800'),
      'audio/vnd.nuera.ecelp7470' = c('ecelp7470'),
      'audio/vnd.nuera.ecelp9600' = c('ecelp9600'),
      'audio/vnd.rip' = c('rip'),
      'audio/webm' = c('weba'),
      'audio/x-aac' = c('aac'),
      'audio/x-aiff' = c('aif', 'aiff', 'aifc'),
      'audio/x-caf' = c('caf'),
      'audio/x-flac' = c('flac'),
      'audio/x-matroska' = c('mka'),
      'audio/x-mpegurl' = c('m3u'),
      'audio/x-ms-wax' = c('wax'),
      'audio/x-ms-wma' = c('wma'),
      'audio/x-pn-realaudio' = c('ram', 'ra'),
      'audio/x-pn-realaudio-plugin' = c('rmp'),
      'audio/x-wav' = c('wav'),
      'audio/xm' = c('xm'),
      'chemical/x-cdx' = c('cdx'),
      'chemical/x-cif' = c('cif'),
      'chemical/x-cmdf' = c('cmdf'),
      'chemical/x-cml' = c('cml'),
      'chemical/x-csml' = c('csml'),
      'chemical/x-xyz' = c('xyz'),
      'image/bmp' = c('bmp'),
      'image/cgm' = c('cgm'),
      'image/g3fax' = c('g3'),
      'image/gif' = c('gif'),
      'image/ief' = c('ief'),
      'image/jpeg' = c('jpeg', 'jpg', 'jpe'),
      'image/ktx' = c('ktx'),
      'image/png' = c('png'),
      'image/prs.btif' = c('btif'),
      'image/sgi' = c('sgi'),
      'image/svg+xml' = c('svg', 'svgz'),
      'image/tiff' = c('tiff', 'tif'),
      'image/vnd.adobe.photoshop' = c('psd'),
      'image/vnd.dece.graphic' = c('uvi', 'uvvi', 'uvg', 'uvvg'),
      'image/vnd.djvu' = c('djvu', 'djv'),
      'image/vnd.dvb.subtitle' = c('sub'),
      'image/vnd.dwg' = c('dwg'),
      'image/vnd.dxf' = c('dxf'),
      'image/vnd.fastbidsheet' = c('fbs'),
      'image/vnd.fpx' = c('fpx'),
      'image/vnd.fst' = c('fst'),
      'image/vnd.fujixerox.edmics-mmr' = c('mmr'),
      'image/vnd.fujixerox.edmics-rlc' = c('rlc'),
      'image/vnd.ms-modi' = c('mdi'),
      'image/vnd.ms-photo' = c('wdp'),
      'image/vnd.net-fpx' = c('npx'),
      'image/vnd.wap.wbmp' = c('wbmp'),
      'image/vnd.xiff' = c('xif'),
      'image/webp' = c('webp'),
      'image/x-3ds' = c('3ds'),
      'image/x-cmu-raster' = c('ras'),
      'image/x-cmx' = c('cmx'),
      'image/x-freehand' = c('fh', 'fhc', 'fh4', 'fh5', 'fh7'),
      'image/x-icon' = c('ico'),
      'image/x-mrsid-image' = c('sid'),
      'image/x-pcx' = c('pcx'),
      'image/x-pict' = c('pic', 'pct'),
      'image/x-portable-anymap' = c('pnm'),
      'image/x-portable-bitmap' = c('pbm'),
      'image/x-portable-graymap' = c('pgm'),
      'image/x-portable-pixmap' = c('ppm'),
      'image/x-rgb' = c('rgb'),
      'image/x-tga' = c('tga'),
      'image/x-xbitmap' = c('xbm'),
      'image/x-xpixmap' = c('xpm'),
      'image/x-xwindowdump' = c('xwd'),
      'message/rfc822' = c('eml', 'mime'),
      'model/iges' = c('igs', 'iges'),
      'model/mesh' = c('msh', 'mesh', 'silo'),
      'model/vnd.collada+xml' = c('dae'),
      'model/vnd.dwf' = c('dwf'),
      'model/vnd.gdl' = c('gdl'),
      'model/vnd.gtw' = c('gtw'),
      'model/vnd.mts' = c('mts'),
      'model/vnd.vtu' = c('vtu'),
      'model/vrml' = c('wrl', 'vrml'),
      'model/x3d+binary' = c('x3db', 'x3dbz'),
      'model/x3d+vrml' = c('x3dv', 'x3dvz'),
      'model/x3d+xml' = c('x3d', 'x3dz'),
      'text/cache-manifest' = c('appcache'),
      'text/calendar' = c('ics', 'ifb'),
      'text/css' = c('css'),
      'text/csv' = c('csv'),
      'text/html' = c('html', 'htm'),
      'text/n3' = c('n3'),
      'text/plain' = c('txt', 'text', 'conf', 'def', 'list', 'log', 'in'),
      'text/prs.lines.tag' = c('dsc'),
      'text/richtext' = c('rtx'),
      'text/sgml' = c('sgml', 'sgm'),
      'text/tab-separated-values' = c('tsv'),
      'text/troff' = c('t', 'tr', 'roff', 'man', 'me', 'ms'),
      'text/turtle' = c('ttl'),
      'text/uri-list' = c('uri', 'uris', 'urls'),
      'text/vcard' = c('vcard'),
      'text/vnd.curl' = c('curl'),
      'text/vnd.curl.dcurl' = c('dcurl'),
      'text/vnd.curl.mcurl' = c('mcurl'),
      'text/vnd.curl.scurl' = c('scurl'),
      'text/vnd.dvb.subtitle' = c('sub'),
      'text/vnd.fly' = c('fly'),
      'text/vnd.fmi.flexstor' = c('flx'),
      'text/vnd.graphviz' = c('gv'),
      'text/vnd.in3d.3dml' = c('3dml'),
      'text/vnd.in3d.spot' = c('spot'),
      'text/vnd.sun.j2me.app-descriptor' = c('jad'),
      'text/vnd.wap.wml' = c('wml'),
      'text/vnd.wap.wmlscript' = c('wmls'),
      'text/x-asm' = c('s', 'asm'),
      'text/x-c' = c('c', 'cc', 'cxx', 'cpp', 'h', 'hh', 'dic'),
      'text/x-fortran' = c('f', 'for', 'f77', 'f90'),
      'text/x-java-source' = c('java'),
      'text/x-nfo' = c('nfo'),
      'text/x-opml' = c('opml'),
      'text/x-pascal' = c('p', 'pas'),
      'text/x-setext' = c('etx'),
      'text/x-sfv' = c('sfv'),
      'text/x-uuencode' = c('uu'),
      'text/x-vcalendar' = c('vcs'),
      'text/x-vcard' = c('vcf'),
      'video/3gpp' = c('3gp'),
      'video/3gpp2' = c('3g2'),
      'video/h261' = c('h261'),
      'video/h263' = c('h263'),
      'video/h264' = c('h264'),
      'video/jpeg' = c('jpgv'),
      'video/jpm' = c('jpm', 'jpgm'),
      'video/mj2' = c('mj2', 'mjp2'),
      'video/mp4' = c('mp4', 'mp4v', 'mpg4'),
      'video/mpeg' = c('mpeg', 'mpg', 'mpe', 'm1v', 'm2v'),
      'video/ogg' = c('ogv'),
      'video/quicktime' = c('qt', 'mov'),
      'video/vnd.dece.hd' = c('uvh', 'uvvh'),
      'video/vnd.dece.mobile' = c('uvm', 'uvvm'),
      'video/vnd.dece.pd' = c('uvp', 'uvvp'),
      'video/vnd.dece.sd' = c('uvs', 'uvvs'),
      'video/vnd.dece.video' = c('uvv', 'uvvv'),
      'video/vnd.dvb.file' = c('dvb'),
      'video/vnd.fvt' = c('fvt'),
      'video/vnd.mpegurl' = c('mxu', 'm4u'),
      'video/vnd.ms-playready.media.pyv' = c('pyv'),
      'video/vnd.uvvu.mp4' = c('uvu', 'uvvu'),
      'video/vnd.vivo' = c('viv'),
      'video/webm' = c('webm'),
      'video/x-f4v' = c('f4v'),
      'video/x-fli' = c('fli'),
      'video/x-flv' = c('flv'),
      'video/x-m4v' = c('m4v'),
      'video/x-matroska' = c('mkv', 'mk3d', 'mks'),
      'video/x-mng' = c('mng'),
      'video/x-ms-asf' = c('asf', 'asx'),
      'video/x-ms-vob' = c('vob'),
      'video/x-ms-wm' = c('wm'),
      'video/x-ms-wmv' = c('wmv'),
      'video/x-ms-wmx' = c('wmx'),
      'video/x-ms-wvx' = c('wvx'),
      'video/x-msvideo' = c('avi'),
      'video/x-sgi-movie' = c('movie'),
      'video/x-smv' = c('smv'),
      'x-conference/x-cooltalk' = c('ice')
    ),
    popular_mime_types = list(
      'application/javascript' = c('js'),
      'application/json' = c('json'),
      'application/pdf' = c('pdf'),
      'image/jpeg' = c('jpeg', 'jpg', 'jpe'),
      'image/gif' = c('gif'),
      'image/png' = c('png'),
      'image/svg+xml' = c('svg', 'svgz'),
      'text/css' = c('css'),
      'text/html' = c('html', 'htm'),
      'text/plain' = c('txt', 'text', 'conf', 'def', 'list', 'log', 'in')
    ),

    web_servers = c(
      'apache',
      'nginx',
      'iis',
      'varnish'
    ),

    apache_versions = list(
      '1.3' = seq(1, 41),
      '2.0' = seq(35, 64),
      '2.2' = seq(0, 31),
      '2.4' = seq(1, 24)
    ),

    apache_distro = c(
      'Amazon',
      'CentOS',
      'Debian',
      'Fedora',
      'Red Hat',
      'Ubuntu',
      'Unix'
    ),

    nginx_versions = list(
      '1.4' = seq(0, 6),
      '1.5' = seq(0, 12),
      '1.6' = seq(0, 2),
      '1.7' = seq(0, 9),
      '1.8' = 0,
      '1.9' = seq(0, 14),
      '1.10' = seq(0, 2),
      '1.11' = seq(0, 7),
      '1.12' = ""
    ),

    iis_versions = c(
      '1.0',
      '2.0',
      '3.0',
      '4.0',
      '5.0',
      '5.1',
      '6.0',
      '7.0',
      '7.5',
      '8.0'
    ),

    web_server_version = function(choices) {
      minor = sample(names(choices), 1)
      patch = sample(choices[[minor]], 1)
      return(str_c(minor, ".", patch))
    }
  ),
  public = list(
    content_type = function() {
      return(sample(names(private$all_mime_types), 1))
    },
    content_type_popular = function() {
      return(sample(names(private$popular_mime_types), 1))
    },
    apache = function() {
      version = private$web_server_version(private$apache_versions)
      os = sample(private$apache_distro, 1)
      return(str_c("Apache/", version, " (", os, ")"))
    },
    nginx = function() {
      version = private$web_server_version(private$apache_versions)
      return(str_c("nginx/", version))
    },
    iis = function() {
      return(str_c('Microsoft-IIS/', sample(private$iis_versions, 1)))
    },
    varnish = function() {
      return("Varnish")
    },

    server_token = function() {
      server = sample(private$web_servers, 1)
      return(eval(parse(text = str_c("self$", server)))())
    }
  )
)

## wifi_essid ----------------------------------------------------------
wifi_essid_init = R6Class(
  "wifi_essid_init",
  inherit = init,
  cloneable = FALSE,
  private = list(
    common_essids = c(
      '3Com',
      'Airport_Free_WiFi_AENA',
      'AndroidAP',
      'AndroidTether',
      'eduroam',
      'Exhibitor Internet',
      'FBI Surveillance Van',
      'freeBestBuywifi',
      'freebox',
      'Free Internet Access',
      'Free Public WiFi',
      'FRITZ!Box',
      'FRITZ!Box Fon WLAN',
      'FRITZ!Box Guest Access',
      'GetYourOwn',
      'get your own WiFi',
      'GuestAccess',
      'Guest Network',
      'GuestWiFi',
      'GuestWireless',
      'H&M Free WiFi',
      'Home Network',
      'Home Sweet Home',
      'Horizon Wi-Free',
      'KFC Free WiFi',
      'McDonalds Free WiFi',
      'MGMResorts-WiFi',
      'Moscow_WiFi_FREE',
      'NETGEAR-5G-GUEST',
      'Neuf WiFi',
      'Nordstrom_Wi-Fi',
      'Radisson_Guest',
      'Rostelecom',
      'SFR WiFi Public',
      'Starbucks WiFi',
      'Swisscom_Auto_Login',
      'visitors',
      'Vodafone Homespot',
      'Vodafone Hotspot',
      'Vodafone-Guest',
      'Welcome'
    )
  ),
  public = list(
    common_essid = function() {
      #https://wigle.net/stats#ssidstats
      return(sample(private$common_essids, 1))
    },

    upc_default_essid = function() {
      #https://deadcode.me/blog/2016/07/01/UPC-UBEE-EVW3226-WPA2-Reversing.html
      return(str_c("UPC", private$random_number(7, TRUE)))
    },

    bbox_default_essid = function() {
      return(private$hexify("Bbox-^^^^^^", upper = TRUE))
    },

    wifi_essid = function() {
      type = sample(c("comm", "upc", "bbox"), 1)
      if (type == "comm") return(self$common_essid())
      if (type == "upc") return(self$upc_default_essid())
      if (type == "bbox") return(self$bbox_default_essid())
    }
  )
)
