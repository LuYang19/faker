## automotive ---------------------------------------
automotive_ar_PS = R6Class(
  "automotive_ar_PS",
  inherit = automotive_en_US,
  cloneable = FALSE,
  private = list(
    # Source:
    # https://en.wikipedia.org/wiki/Vehicle_registration_plates_of_the_Palestinian_National_Authority
    license_formats = c(
      # Private vehicles
      '{district}-####-3#',
      '{district}-####-4#',
      '{district}-####-7#',
      '{district}-####-9#',
      # Public transport
      '{district}-####-30',
      # Authority vehicles
      '####',
      # New police vehicles
      '####-99',
      # Gaza strip after 2012
      # Private
      '1-####-0#',
      '3-####-0#',
      # Commercial
      '1-####-1#',
      '3-####-1#',
      # Public
      '1-####-2#',
      '3-####-2#',
      # Municipal
      '1-####-4#',
      '3-####-4#',
      # Governmental, and Governmental personal vehicles
      '1-####-5#',
      '3-####-5#')
  ),

  public = list(
    district = function(){
      temp = c(
        # Gaza Strip
        '1',
        '3',

        # Northern West Bank (Nablus, Tulkarm, Qalqilya, Jenin)
        '4',
        '7',

        # Central West Bank (Ramallah, Jerusalem, Jericho)
        '5',
        '6',

        # Southern West Bank (Bethlehem, Hebron)
        '8',
        '9'
      )
      return(sample(temp, 1))
    },

    license_plate = function(){
      pattern = private$random_element(private$license_formats)
      return(private$numerify(private$format_parse(pattern)))
    }
  )
)

## color -------------------------------
color_ar_PS = R6Class(
  "color_ar_PS",
  inherit = color_init,
  cloneable = FALSE,
  private = list(
    all_colors = list(
      c("\u0623\u0632\u0631\u0642 \u0623\u0644\u064a\u0633","#F0F8FF"),
      c("\u0623\u0628\u064a\u0636 \u0639\u062a\u064a\u0642","#FAEBD7"),
      c("\u0645\u0627\u0626\u064a","#00FFFF"),
      c("\u0632\u0628\u0631\u062c\u062f\u064a","#7FFFD4"),
      c("\u0644\u0627\u0632\u0648\u0631\u062f\u064a","#F0FFFF"),
      c("\u0635\u0648\u0641\u064a","#F5F5DC"),
      c("\u062d\u0633\u0627\u0626\u064a","#FFE4C4"),
      c("\u0623\u0633\u0648\u062f","#000000"),
      c("\u0644\u0648\u0632\u064a","#FFEBCD"),
      c("\u0623\u0632\u0631\u0642","#0000FF"),
      c("\u0628\u0646\u0641\u0633\u062c\u064a \u0645\u0632\u0631\u0642","#8A2BE2"),
      c("\u0628\u0646\u064a","#A52A2A"),
      c("\u062e\u0634\u0628\u064a\u0629","#DEB887"),
      c("\u0623\u0632\u0631\u0642 \u0643\u0627\u062f\u064a\u062a\u064a","#5F9EA0"),
      c("\u0643\u0631\u062a\u0648\u0632\u064a","#7FFF00"),
      c("\u0634\u0648\u0643\u0648\u0644\u0627\u062a\u064a\u0651","#D2691E"),
      c("\u0645\u0631\u062c\u0627\u0646\u064a","#FF7F50"),
      c("\u0642\u0646\u0637\u0631\u064a\u0648\u0646\u064a","#6495ED"),
      c("\u062d\u0631\u064a\u0631 \u0627\u0644\u0630\u0631\u0629","#FFF8DC"),
      c("\u0642\u0631\u0645\u0632\u064a","#DC143C"),
      c("\u0633\u064a\u0627\u0646","#00FFFF"),
      c("\u0623\u0632\u0631\u0642 \u062f\u0627\u0643\u0646","#00008B"),
      c("\u0633\u064a\u0627\u0646 \u062f\u0627\u0643\u0646","#008B8B"),
      c("\u0639\u0635\u0627 \u0627\u0644\u062f\u0647\u0628 \u0627\u0644\u063a\u0627\u0645\u0642","#B8860B"),
      c("\u0631\u0645\u0627\u062f\u064a \u062f\u0627\u0643\u0646","#A9A9A9"),
      c("\u0623\u062e\u0636\u0631 \u062f\u0627\u0643\u0646","#006400"),
      c("\u062e\u0627\u0643\u064a \u062f\u0627\u0643\u0646","#BDB76B"),
      c("\u0645\u0627\u062c\u0646\u062a\u0627 \u062f\u0627\u0643\u0646","#8B008B"),
      c("\u0623\u062e\u0636\u0631 \u0632\u064a\u062a\u0648\u0646\u064a \u062f\u0627\u0643\u0646","#556B2F"),
      c("\u0628\u0631\u062a\u0642\u0627\u0644\u064a \u062f\u0627\u0643\u0646","#FF8C00"),
      c("\u0623\u0648\u0631\u0643\u064a\u062f\u064a \u062f\u0627\u0643\u0646","#9932CC"),
      c("\u0623\u062d\u0645\u0631 \u062f\u0627\u0643\u0646","#8B0000"),
      c("\u0633\u0644\u0645\u0648\u0646\u064a \u062f\u0627\u0643\u0646","#E9967A"),
      c("\u0623\u062e\u0636\u0631 \u0628\u062d\u0631\u064a \u062f\u0627\u0643\u0646","#8FBC8F"),
      c("\u0623\u0632\u0631\u0642 \u0623\u0631\u062f\u0648\u0627\u0632\u064a \u062f\u0627\u0643\u0646","#483D8B"),
      c("\u0631\u0645\u0627\u062f\u064a \u0644\u0627\u0632\u0648\u0631\u062f\u064a \u062f\u0627\u0643\u0646","#2F4F4F"),
      c("\u062a\u0631\u0643\u0648\u0627\u0632\u064a \u062f\u0627\u0643\u0646","#00CED1"),
      c("\u0628\u0646\u0641\u0633\u062c \u062f\u0627\u0643\u0646","#9400D3"),
      c("\u0632\u0647\u0631\u064a \u063a\u0627\u0645\u0642","#FF1493"),
      c("\u0623\u0632\u0631\u0642 \u0633\u0645\u0627\u0648\u064a \u063a\u0627\u0645\u0642","#00BFFF"),
      c("\u0631\u0645\u0627\u062f\u064a \u062e\u0627\u0641\u062a","#696969"),
      c("\u0623\u0632\u0631\u0642 \u0641\u0631\u064a\u0642 \u062f\u0648\u062f\u062c\u0631","#1E90FF"),
      c("\u0627\u0644\u0637\u0648\u0628 \u0634\u0645\u062a","#B22222"),
      c("\u0623\u0628\u064a\u0636 \u0648\u0631\u062f\u064a","#FFFAF0"),
      c("\u0623\u062e\u0636\u0631 \u0627\u0644\u063a\u0627\u0628\u062a","#228B22"),
      c("\u0641\u0648\u0634\u064a","#FF00FF"),
      c("\u0631\u0645\u0627\u062f\u064a \u0628\u0627\u0647\u062a","#DCDCDC"),
      c("\u0623\u0628\u064a\u0636 \u0634\u0628\u062d\u064a","#F8F8FF"),
      c("\u0630\u0647\u0628\u064a","#FFD700"),
      c("\u0630\u0647\u0628\u064a","#DAA520"),
      c("\u0631\u0645\u0627\u062f\u064a","#808080"),
      c("\u0623\u062e\u0636\u0631","#008000"),
      c("\u0623\u0635\u0641\u0631 \u0645\u062e\u0636\u0631","#ADFF2F"),
      c("\u0639\u0633\u0644\u064a","#F0FFF0"),
      c("\u0648\u0631\u062f\u064a \u0641\u0627\u0642\u0639","#FF69B4"),
      c("\u0642\u0633\u0637\u0644\u064a","#CD5C5C"),
      c("\u0646\u064a\u0644\u064a","#4B0082"),
      c("\u0633\u0643\u0631\u064a","#FFFFF0"),
      c("\u062e\u0627\u0643\u064a","#F0E68C"),
      c("\u0644\u0627\u06a4\u0646\u062f\u0631","#E6E6FA"),
      c("\u0623\u062d\u0645\u0631 \u0627\u0644\u0644\u0627\u0641\u0646\u062f\u0631","#FFF0F5"),
      c("\u0623\u062e\u0636\u0631 \u0639\u0634\u0628\u064a","#7CFC00"),
      c("\u0644\u064a\u0645\u0648\u0646 \u0634\u064a\u0641\u0648\u0646\u064a","#FFFACD"),
      c("\u0623\u0632\u0631\u0642 \u0641\u0627\u062a\u062d","#ADD8E6"),
      c("\u0645\u0631\u062c\u0627\u0646\u064a \u0641\u0627\u062a\u062d","#F08080"),
      c("\u0623\u0632\u0631\u0642 \u0637\u0641\u0648\u0644\u064a","#E0FFFF"),
      c("\u0623\u0635\u0641\u0631 \u0630\u0647\u0628\u064a \u0641\u0627\u062a\u062d ","#FAFAD2"),
      c("\u0631\u0645\u0627\u062f\u064a \u0641\u0627\u062a\u062d","#D3D3D3"),
      c("\u0623\u062e\u0636\u0631 \u0641\u0627\u062a\u062d","#90EE90"),
      c("\u0648\u0631\u062f\u064a \u0641\u0627\u062a\u062d","#FFB6C1"),
      c("\u0633\u0644\u0645\u0648\u0646\u064a \u0641\u0627\u062a\u062d","#FFA07A"),
      c("\u0623\u062e\u0636\u0631 \u0628\u062d\u0631\u064a \u0641\u0627\u062a\u062d","#20B2AA"),
      c("\u0633\u0645\u0627\u0648\u064a \u0641\u0627\u062a\u062d","#87CEFA"),
      c("\u0623\u0632\u0631\u0642 \u0623\u0631\u062f\u0648\u0627\u0632\u064a \u0641\u0627\u062a\u062d","#778899"),
      c("\u0623\u0632\u0631\u0642 \u0645\u0639\u062f\u0646\u064a \u0641\u0627\u062a\u062d","#B0C4DE"),
      c("\u0623\u0635\u0641\u0631 \u0641\u0627\u062a\u062d","#FFFFE0"),
      c("\u0644\u064a\u0645\u064a","#00FF00"),
      c("\u0623\u062e\u0636\u0631 \u0644\u064a\u0645\u0648\u0646\u064a","#32CD32"),
      c("\u0643\u062a\u0627\u0646\u064a","#FAF0E6"),
      c("\u0641\u0648\u0634\u064a\u0627","#FF00FF"),
      c("\u0643\u0633\u062a\u0646\u0627\u0626\u064a","#800000"),
      c("\u0632\u0628\u0631\u062c\u062f\u064a \u0645\u062a\u0648\u0633\u0637","#66CDAA"),
      c("\u0623\u0632\u0631\u0642 \u0645\u062a\u0648\u0633\u0637","#0000CD"),
      c("\u0623\u0648\u0631\u0643\u064a\u062f\u064a \u0645\u062a\u0648\u0633\u0637","#BA55D3"),
      c("\u0641\u0648\u0634\u064a \u0645\u062a\u0648\u0633\u0637","#9370DB"),
      c("\u0623\u062e\u0636\u0631 \u0628\u062d\u0631\u064a \u0645\u062a\u0648\u0633\u0637","#3CB371"),
      c("\u0623\u0632\u0631\u0642 \u0623\u0631\u062f\u0648\u0627\u0632\u064a \u0645\u062a\u0648\u0633\u0637","#7B68EE"),
      c("\u0623\u062e\u0636\u0631 \u0631\u0628\u064a\u0639\u064a \u0645\u062a\u0648\u0633\u0637","#00FA9A"),
      c("\u062a\u0631\u0645\u0648\u0627\u0632\u064a \u0645\u062a\u0648\u0633\u0637","#48D1CC"),
      c("\u0623\u062d\u0645\u0631 \u0628\u0646\u0641\u0633\u062c\u064a","#C71585"),
      c("\u0627\u0644\u0623\u0632\u0631\u0642 \u0645\u062a\u0648\u0633\u0637","#191970"),
      c("\u0646\u0639\u0646\u0627\u0639\u064a \u0643\u0631\u064a\u0645\u064a","#F5FFFA"),
      c("\u0627\u0644\u0648\u0631\u062f\u064a \u0627\u0644\u0636\u0628\u0627\u0628\u064a","#FFE4E1"),
      c("\u0645\u0648\u0643\u0627\u0633\u064a\u0646\u064a","#FFE4B5"),
      c("\u0623\u0628\u064a\u0636 \u0646\u0627\u0641\u0627\u062c\u0648","#FFDEAD"),
      c("\u0643\u062d\u0644\u064a","#000080"),
      c("\u0631\u0628\u0627\u0637\u064a \u0642\u062f\u064a\u0645","#FDF5E6"),
      c("\u0632\u064a\u062a\u0648\u0646\u064a","#808000"),
      c("\u0632\u064a\u062a\u0648\u0646\u064a \u0631\u0645\u0627\u062f\u064a","#6B8E23"),
      c("\u0628\u0631\u062a\u0642\u0627\u0644\u064a","#FFA500"),
      c("\u0623\u062d\u0645\u0631 \u0628\u0631\u062a\u0642\u0627\u0644\u064a","#FF4500"),
      c("\u0623\u0648\u0631\u0643\u064a\u062f\u064a","#DA70D6"),
      c("\u0630\u0647\u0628\u064a \u0628\u0627\u0647\u062a","#EEE8AA"),
      c("\u0623\u062e\u0636\u0631 \u0628\u0627\u0647\u062a","#98FB98"),
      c("\u062a\u0631\u0643\u0648\u0627\u0632\u064a \u0628\u0627\u0647\u062a","#AFEEEE"),
      c("\u0623\u062d\u0645\u0631 \u0628\u0646\u0641\u0633\u062c\u064a \u0628\u0627\u0647\u062a","#DB7093"),
      c("\u0628\u0627\u0628\u0627\u064a\u0627","#FFEFD5"),
      c("\u062d\u0646\u0637\u064a","#FFDAB9"),
      c("\u0628\u064a\u0631\u0648","#CD853F"),
      c("\u0632\u0647\u0631\u064a","#FFC0CB"),
      c("\u0628\u0631\u0642\u0648\u0642\u064a","#DDA0DD"),
      c("\u0623\u0632\u0631\u0642 \u0645\u0633\u062d\u0648\u0642\u064a","#B0E0E6"),
      c("\u0623\u0631\u062c\u0648\u0627\u0646\u064a","#800080"),
      c("\u0623\u062d\u0645\u0631","#FF0000"),
      c("\u0628\u0646\u064a \u0648\u0631\u062f\u064a","#BC8F8F"),
      c("\u0623\u0632\u0631\u0642 \u0645\u0644\u0643\u064a","#4169E1"),
      c("\u0628\u0646\u064a \u0627\u0644\u0633\u0631\u062c","#8B4513"),
      c("\u0633\u0627\u0644\u0645\u0648\u0646\u064a","#FA8072"),
      c("\u0628\u0646\u064a \u0631\u0645\u0644\u064a","#F4A460"),
      c("\u0623\u062e\u0636\u0631 \u0628\u062d\u0631\u064a","#2E8B57"),
      c("\u0635\u062f\u0641\u064a","#FFF5EE"),
      c("\u0633\u064a\u064a\u0646\u0627","#A0522D"),
      c("\u0641\u0636\u064a","#C0C0C0"),
      c("\u0623\u0632\u0631\u0642 \u0633\u0645\u0627\u064a","#87CEEB"),
      c("\u0623\u0632\u0631\u0642 \u0623\u0631\u062f\u0648\u0627\u0632\u064a","#6A5ACD"),
      c("\u0631\u0645\u0627\u062f\u064a \u0645\u0639\u062f\u0646\u064a","#708090"),
      c("\u062b\u0644\u062c\u064a","#FFFAFA"),
      c("\u0623\u062e\u0636\u0631 \u0631\u0628\u064a\u0639\u064a","#00FF7F"),
      c("\u0623\u0632\u0631\u0642 \u0645\u0639\u062f\u0646\u064a","#4682B4"),
      c("\u0646\u0637\u064a","#D2B48C"),
      c("\u062d\u0630\u0641\u064a","#008080"),
      c("\u0623\u0631\u062c\u0648\u0627\u0646\u064a","#D8BFD8"),
      c("\u0637\u0645\u0627\u0637\u0645\u064a","#FF6347"),
      c("\u062a\u0631\u0643\u0648\u0627\u0632","#40E0D0"),
      c("\u0628\u0646\u0641\u0633\u062c\u064a","#EE82EE"),
      c("\u0642\u0645\u062d\u064a","#F5DEB3"),
      c("\u0623\u0628\u064a\u0636","#FFFFFF"),
      c("\u062f\u062e\u0627\u0646\u064a \u0642\u0645\u062d\u064a","#F5F5F5"),
      c("\u0623\u0635\u0641\u0631","#FFFF00"),
      c("\u0623\u0635\u0641\u0631 \u0645\u062e\u0636\u0631","#9ACD32")),

    safe_colors = c(
      "\u0623\u0633\u0648\u062f",
      "\u0643\u0633\u062a\u0646\u0627\u0626\u064a",
      "\u0623\u062e\u0636\u0631",
      "\u0643\u062d\u0644\u064a",
      "\u0632\u064a\u062a\u0648\u0646\u064a",
      "\u0623\u0631\u062c\u0648\u0627\u0646\u064a",
      "\u062d\u0630\u0641\u064a",
      "\u0644\u064a\u0645\u064a",
      "\u0623\u0632\u0631\u0642",
      "\u0641\u0636\u064a",
      "\u0631\u0645\u0627\u062f\u064a",
      "\u0623\u0635\u0641\u0631",
      "\u0641\u0648\u0634\u064a",
      "\u0645\u0627\u0626\u064a",
      "\u0623\u0628\u064a\u0636"
    )
  )
)

## person ---------------
person_ar_PS = R6Class(
  "person_ar_PS",
  inherit = person_ar_AA,
  cloneable = FALSE,
  private = list(
    last_names = c(
      "\u062e\u0648\u0631\u064a",
      "\u0634\u0627\u0647\u064a\u0646",
      "\u0627\u0644\u0628\u0631\u063a\u0648\u062b\u064a",
      "\u0627\u0644\u062d\u0633\u064a\u0646\u064a",
      "\u0627\u0644\u0632\u064a\u062f\u0627\u0646\u064a\u0629",
      "\u062c\u0631\u0627\u0631",
      "\u0627\u0644\u0633\u0643\u0627\u0643\u064a\u0646\u064a",
      "\u0637\u0648\u0642\u0627\u0646",
      "\u0646\u0633\u064a\u0628\u0629",
      "\u0627\u0644\u0646\u0634\u0627\u0634\u064a\u0628\u064a",
      "\u0627\u0644\u062e\u0627\u0632\u0646",
      "\u062a\u0631\u0627\u0628\u064a\u0646",
      "\u062f\u063a\u0645\u0634",
      "\u062f\u0644\u0627\u0634\u0629",
      "\u0627\u0644\u0632\u064a\u062a\u0627\u0648\u064a",
      "\u0635\u0644\u064a\u0628\u0627",
      "\u0627\u0644\u062a\u0631\u0643\u0645\u0627\u0646",
      "\u0627\u0644\u0625\u063a\u0628\u0627\u0631\u064a",
      "\u0643\u0633\u0648\u0627\u0646\u064a",
      "\u062c\u0632\u0627\u0631",
      "\u0623\u0628\u0648 \u0627\u0633\u0646\u064a\u0646\u0629",
      "\u0627\u0644\u062a\u0645\u064a\u0645\u064a",
      "\u0627\u0644\u062c\u0646\u064a\u062f\u064a",
      "\u0628\u062f\u0631",
      "\u0623\u0628\u0648 \u0634\u0642\u062f\u0645",
      "\u0623\u0628\u0648 \u063a\u0644\u064a\u0648\u0646",
      "\u0623\u0628\u0648 \u0642\u0645\u0631",
      "\u0627\u0644\u0623\u062f\u063a\u0645",
      "\u062d\u0648\u0633\u0629",
      "\u0627\u0644\u0635\u0627\u0644\u062d\u064a",
      "\u062d\u0645\u0627\u0645\u064a",
      "\u0647\u0627\u0634\u0645",
      "\u0627\u0644\u062d\u0646\u0628\u0644\u064a",
      "\u0623\u0633\u062a\u064a\u062a\u064a\u0629",
      "\u0645\u0631\u0645\u0634",
      "\u0642\u0631\u0627\u062f\u0629",
      "\u0641\u0637\u0627\u064a\u0631",
      "\u0627\u0644\u062e\u0645\u0627\u0634",
      "\u0627\u0644\u062e\u064a\u0627\u0637",
      "\u0627\u0644\u0646\u0639\u0646\u064a\u0634",
      "\u0645\u0647\u064a\u0627\u0631",
      "\u0623\u0628\u0648 \u0634\u0644\u0628\u0643"
    )
  )
)

## company  ------------
company_ar_PS = R6Class(
  "company_ar_PS",
  inherit = company_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_ar_PS$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_PS$new())$first_name,
    last_names = (person_ar_PS$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_PS$new())$last_name
  )
)



## credit_card -----------------
credit_card_ar_PS = R6Class(
  "credit_card_ar_PS",
  inherit = credit_card_init,
  cloneable = FALSE,
  private = list(
    first_names = (person_ar_PS$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_PS$new())$first_name,
    last_names = (person_ar_PS$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_PS$new())$last_name
  )
)



## address ------------------------
address_ar_PS = R6Class(
  "address_ar_PS",
  inherit = address_en_US,
  cloneable = FALSE,
  private = list(
    first_names = (person_ar_PS$new())$.__enclos_env__$private$first_names,
    first_name = (person_ar_PS$new())$first_name,
    last_names = (person_ar_PS$new())$.__enclos_env__$private$last_names,
    last_name = (person_ar_PS$new())$last_name
  ),
  public = list(
    country_code = function(){
      return(sample(c("00972", "+972", "00970", "+970"), 1))
    }
  )
)



## phone_number --------------------
phone_number_ar_PS = R6Class(
  "phone_number_ar_PS",
  inherit = phone_number_en_US,
  cloneable = FALSE,
  private = list(
    cellphone_formats = c(
      '{country_code} {provider_code} ### ####',
      '{country_code}{provider_code}#######',
      '0{provider_code} ### ####',
      '0{provider_code}#######'),

    telephone_formats = c(
      '{country_code} 4 24# ####',
      '{country_code}424#####',
      '04 24# ####',
      '0424#####',

      '{country_code} 9 25# ####',
      '{country_code}925#####',
      '09 25# ####',
      '0925#####',

      '{country_code} 4 26# ####',
      '{country_code}426#####',
      '04 26# ####',
      '0426#####',

      '{country_code} 4 23# ####',
      '{country_code}423#####',
      '04 23# ####',
      '0423#####',

      '{country_code} 4 29# ####',
      '{country_code}429#####',
      '04 29# ####',
      '0429#####',

      '{country_code} 2 29# ####',
      '{country_code}229#####',
      '02 29# ####',
      '0229#####',

      '{country_code} 2 23# ####',
      '{country_code}223#####',
      '02 23# ####',
      '0223#####',

      '{country_code} 2 22# ####',
      '{country_code}222#####',
      '02 22# ####',
      '0222#####',

      '{country_code} 2 27# ####',
      '{country_code}227#####',
      '02 27# ####',
      '0227#####',

      '{country_code} 8 20# ####',
      '{country_code}820#####',
      '08 20# ####',
      '0820#####',

      '{country_code} 8 21# ####',
      '{country_code}821#####',
      '08 21# ####',
      '0821#####',

      '{country_code} 8 24# ####',
      '{country_code}824#####',
      '08 24# ####',
      '0824#####',

      '{country_code} 8 25# ####',
      '{country_code}825#####',
      '08 25# ####',
      '0825#####',

      '{country_code} 8 26# ####',
      '{country_code}826#####',
      '08 26# ####',
      '0826#####',

      '{country_code} 8 28# ####',
      '{country_code}828#####',
      '08 28# ####',
      '0828#####'
    ),

    toll_formats = c(
      '1 700 ### ###',
      '1-700-###-###',
      '1 800 ### ###',
      '1-800-###-###'
    ),

    services_phones_formats = c('100', '101', '102'),

    formats = c(
      '{country_code} {provider_code} ### ####',
      '{country_code}{provider_code}#######',
      '0{provider_code} ### ####',
      '0{provider_code}#######',
      '{country_code} 4 24# ####',
      '{country_code}424#####',
      '04 24# ####',
      '0424#####',

      '{country_code} 9 25# ####',
      '{country_code}925#####',
      '09 25# ####',
      '0925#####',

      '{country_code} 4 26# ####',
      '{country_code}426#####',
      '04 26# ####',
      '0426#####',

      '{country_code} 4 23# ####',
      '{country_code}423#####',
      '04 23# ####',
      '0423#####',

      '{country_code} 4 29# ####',
      '{country_code}429#####',
      '04 29# ####',
      '0429#####',

      '{country_code} 2 29# ####',
      '{country_code}229#####',
      '02 29# ####',
      '0229#####',

      '{country_code} 2 23# ####',
      '{country_code}223#####',
      '02 23# ####',
      '0223#####',

      '{country_code} 2 22# ####',
      '{country_code}222#####',
      '02 22# ####',
      '0222#####',

      '{country_code} 2 27# ####',
      '{country_code}227#####',
      '02 27# ####',
      '0227#####',

      '{country_code} 8 20# ####',
      '{country_code}820#####',
      '08 20# ####',
      '0820#####',

      '{country_code} 8 21# ####',
      '{country_code}821#####',
      '08 21# ####',
      '0821#####',

      '{country_code} 8 24# ####',
      '{country_code}824#####',
      '08 24# ####',
      '0824#####',

      '{country_code} 8 25# ####',
      '{country_code}825#####',
      '08 25# ####',
      '0825#####',

      '{country_code} 8 26# ####',
      '{country_code}826#####',
      '08 26# ####',
      '0826#####',

      '{country_code} 8 28# ####',
      '{country_code}828#####',
      '08 28# ####',
      '0828#####',

      '1 700 ### ###',
      '1-700-###-###',
      '1 800 ### ###',
      '1-800-###-###',
      '100', '101', '102'
    ),

    country_code = (address_ar_PS$new())$country_code
  ),

  public = list(
    provider_code = function(){
      return(sample(c("59", "56"), 1))
    },


    cellphone_number = function(){
      pattern = private$random_element(private$cellphone_formats)
      return(private$numerify(private$format_parse(pattern)))
    },

    telephone_number = function(){
      pattern = private$random_element(private$telephone_formats)
      return(private$numerify(private$format_parse(pattern)))
    },

    service_phone_number = function(){
      pattern = sample(private$services_phones_formats, 1)
      return(private$numerify(private$format_parse(pattern)))
    },

    toll_number = function(){
      pattern = private$random_element(private$toll_formats)
      return(private$numerify(private$format_parse(pattern)))
    },

    phone_number = function(){
      pattern = private$random_element(private$formats)
      return(private$numerify(private$format_parse(pattern)))
    }
  )
)
## profile ------------------
profile_ar_PS = R6Class(
  "profile_ar_PS",
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
                    (person_ar_PS$new())$name_female(),
                    (person_ar_PS$new())$name_male())
      temp = list(
        "username" = (internet_en_US$new())$user_name(),
        "name" = name,
        "sex" = sex,
        "address" = (address_ar_PS$new())$address(),
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
        "company" = (company_ar_PS$new())$company(),
        "ssn" = (ssn_en_US$new())$ssn(),
        "residence" = (address_ar_PS$new())$address(),
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

