## faker ---------------------------------------
#' Generates fake data by locale.
#' 
#' @param locale A Character.
#' return a R6 for fake data.
faker = function(locale) {
  if(missing(locale)) return(faker_en_US$new())
  generator = eval(parse(text = str_c("faker_", locale)))
  if (class(generator) == "R6ClassGenerator") return(generator$new())
  else return("Please check the locale.")
}
## faker_init ---------------------------------
faker_init = R6Class(
  "faker_init",
  cloneable = FALSE,
  public = list(
    address = address_init$new(),
    automotive = automotive_init$new(),
    bank = bank_init$new(),
    barcode = barcode_init$new(),
    color = color_init$new(),
    company = company_init$new(),
    credit_card = credit_card_init$new(),
    credit_score = credit_score_init$new(),
    currency = currency_init$new(),
    date_time = date_time_init$new(),
    file = file_init$new(),
    geo = geo_init$new(),
    internet = internet_init$new(),
    isbn = isbn_init$new(),
    job = job_init$new(),
    lorem = lorem_init$new(),
    microservice = microservice_init$new(),
    misc = misc_init$new(),
    person = person_init$new(),
    phone_number = phone_number_init$new(),
    profile = profile_init$new(),
    ssn = ssn_init$new(),
    user_agent = user_agent_init$new(),
    web = web_init$new(),
    wifi_essid = wifi_essid_init$new()
  )
)

## faker_en_US ----------------------------------------
faker_en_US = R6Class(
  "faker_en_US",
  inherit = faker_init,
  cloneable = FALSE,
  public = list(
    address = address_en_US$new(),
    automotive = automotive_en_US$new(),
    bank = bank_en_GB$new(),
    color = color_init$new(),
    company = company_en_US$new(),
    credit_card = credit_card_en_US$new(),
    currency = currency_init$new(),
    date_time = date_time_init$new(),
    file = file_en_US$new(),
    internet = internet_en_US$new(),
    lorem = lorem_en_US$new(),
    person = person_en_US$new(),
    phone_number = phone_number_en_US$new(),
    profile = profile_en_US$new(),
    ssn = ssn_en_US$new()
  )
)
## faker_en --------------------------------------
faker_en = R6Class(
  "faker_en",
  inherit = faker_en_US,
  cloneable = FALSE
)
## faker_la ----------------------------------------------
faker_la = R6Class(
  "faker_la",
  inherit = faker_en_US,
  cloneable = FALSE,
  public = list(
    lorem = lorem_la$new(),
    file = file_la$new(),
    internet = internet_la$new()
  )
)

## faker_ar_AA ------------------------------------------------
faker_ar_AA = R6Class(
  "faker_ar_AA",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    address = address_ar_AA$new(),
    company = company_ar_AA$new(),
    credit_card = credit_card_ar_AA$new(),
    date_time = date_time_ar_AA$new(),
    file = file_ar_AA$new(),
    internet = internet_ar_AA$new(),
    job = job_ar_AA$new(),
    lorem = lorem_ar_AA$new(),
    person = person_ar_AA$new(),
    profile = profile_ar_AA$new()
  )
)

## faker_ar_EG ------------------------------------------------------
faker_ar_EG = R6Class(
  "faker_ar_EG",
  cloneable = FALSE,
  inherit = faker_la,
  public = list(
    internet = internet_en_US$new(),
    date_time = date_time_ar_EG$new()
  )
)
## faker_ar_JO -----------
faker_ar_JO = R6Class(
  "faker_ar_JO",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    internet = internet_en_US$new(),
    automotive = automotive_ar_JO$new(),
    phone_number = phone_number_ar_JO$new()
  )
)

## faker_ar_PS --------------------------------------
faker_ar_PS = R6Class(
  "faker_ar_PS",
  cloneable = FALSE,
  inherit = faker_la,
  public = list(
    address = address_ar_PS$new(),
    automotive = automotive_ar_PS$new(),
    color = color_ar_PS$new(),
    company = company_ar_PS$new(),
    credit_card = credit_card_ar_PS$new(),
    internet = internet_en_US$new(),
    person = person_ar_PS$new(),
    phone_number = phone_number_ar_PS$new(),
    profile = profile_ar_PS$new()
  )
)
## faker_ar_SA ----------------------------------------------
faker_ar_SA = R6Class(
  "faker_ar_SA",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    address = address_ar_SA$new(),
    automotive = automotive_ar_SA$new(),
    company = company_ar_SA$new(),
    credit_card = credit_card_ar_SA$new(),
    internet = internet_en_US$new(),
    person = person_ar_SA$new(),
    profile = profile_ar_SA$new()
  )
)

## faker_bg_BG ------------------------------
faker_bg_BG = R6Class(
  "faker_bg_BG",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_bg_BG$new(),
    company = company_bg_BG$new(),
    internet = internet_bg_BG$new(),
    phone_number = phone_number_bg_BG$new(),
    credit_card = credit_card_bg_BG$new(),
    address = address_bg_BG$new(),
    ssn = ssn_bg_BG$new(),
    profile = profile_bg_BG$new()
  )
)
## faker_bs_BA -------------------------------------
faker_bs_BA = R6Class(
  "faker_bs_BA",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    internt = internet_bs_BA$new(),
    job = job_bs_BA$new(),
    phone_number = phone_number_bs_BA$new(),
    profile = profile_bs_BA$new()
  )
)

## faker_cs_CZ -------------------------------------
faker_cs_CZ = R6Class(
  "faker_cs_CZ",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_cs_CZ$new(),
    company = company_cs_CZ$new(),
    credit_card = credit_card_cs_CZ$new(),
    address = address_cs_CZ$new(),
    internt = internet_cs_CZ$new(),
    phone_number = phone_number_cs_CZ$new(),
    ssn = ssn_cs_CZ$new(),
    profile = profile_cs_CZ$new()
  )
)
## faker_de ---------------------------------------------
faker_de = R6Class(
  "faker_de",
  inherit = faker_de_DE,
  cloneable = FALSE
)
## faker_de_DE -----------------------------------------
faker_de_DE = R6Class(
  "faker_de_DE",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_de_DE$new(),
    bank = bank_de_DE$new(),
    person = person_de_DE$new(),
    company = company_de_DE$new(),
    credit_card = credit_card_de_DE$new(),
    address = address_de_DE$new(),
    internet = internet_de_DE$new(),
    phone_number = phone_number_de_DE$new(),
    ssn = ssn_de_DE$new(),
    profile = profile_de_DE$new()
  )
)

## faker_de_AT -------------------------
faker_de_AT = R6Class(
  "faker_de_AT",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    bank = bank_de_AT$new(),
    person = person_de_AT$new(),
    address = address_de_AT$new(),
    geo = geo_de_AT$new(),
    internet = internet_de_AT$new(),
    ssn = ssn_de_AT$new(),
    company = company_de_AT$new(),
    credit_card = credit_card_de_AT$new(),
    profile = profile_de_AT$new()
  )
)
## faker_de_CH -------------------------------
faker_de_CH = R6Class(
  "faker_de_CH",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_de_CH$new(),
    ssn = ssn_de_CH$new(),
    company = company_de_CH$new(),
    credit_card = credit_card_de_CH$new(),
    internet = internet_en_US$new(),
    address = address_de_CH$new(),
    profile = profile_de_CH$new()
  )
)

## faker_dk_DK -----------------
faker_dk_DK = R6Class(
  "faker_dk_DK",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_dk_DK$new(),
    ssn = ssn_dk_DK$new(),
    company = company_dk_DK$new(),
    credit_card = credit_card_dk_DK$new(),
    internet = internet_en_US$new(),
    address = address_dk_DK$new(),
    phone_number = phone_number_dk_DK$new(),
    profile = profile_dk_DK$new()
  )
)
## faker_el_CY ------------------------------
faker_el_CY = R6Class(
  "faker_el_CY",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    ssn = ssn_el_CY$new(),
    internet = internet_en_US$new(),
    profile = profile_el_CY$new()
  )
)

## faker_el_GR -------------------
faker_el_GR = R6Class(
  "faker_el_GR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_el_GR$new(),
    address = address_el_GR$new(),
    geo = geo_el_GR$new(),
    lorem = lorem_el_GR$new(),
    internet = internet_el_GR$new(),
    phone_number = phone_number_el_GR$new(),
    ssn = ssn_el_GR$new(),
    company = company_el_GR$new(),
    credit_card = credit_card_el_GR$new(),
    file = file_el_GR$new(),
    profile = profile_el_GR$new()
  )
)

## faker_en_AU ------------------------
faker_en_AU = R6Class(
  "faker_en_AU",
  inherit = faker_la,
  public = list(
    address = address_en_AU$new(),
    internet = internet_en_AU$new(),
    phone_number = phone_number_en_AU$new(),
    profile = profile_en_AU$new()
  )
)
## faker_en_CA ------------------------
faker_en_CA = R6Class(
  "faker_en_CA",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    address = address_en_CA$new(),
    automotive = automotive_en_CA$new(),
    phone_number = phone_number_en_CA$new(),
    internet = internet_en_US$new(),
    ssn = ssn_en_CA$new(),
    profile = profile_en_CA$new()
  )
)

## faker_en_GB -----------------------------
faker_en_GB = R6Class(
  "faker_en_GB",
  inherit = faker_la,
  public = list(
    automotive = automotive_en_GB$new(),
    person = person_en_GB$new(),
    address = address_en_GB$new(),
    phone_number = phone_number_en_GB$new(),
    ssn = ssn_en_GB$new(),
    company = company_en_GB$new(),
    credit_card = credit_card_en_GB$new(),
    internet = internet_en_GB$new(),
    profile = profile_en_GB$new()
  )
)

## faker_en_IE ----------------------------
faker_en_IE = R6Class(
  "faker_en_IE",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    ssn = ssn_en_IE$new(),
    internet = internet_en_US$new(),
    profile = profile_en_IE$new()
  )
)
## faker_en_NZ ------------------------
faker_en_NZ = R6Class(
  "faker_en_NZ",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_en_NZ$new(),
    person = person_en_NZ$new(),
    address = address_en_NZ$new(),
    internet = internet_en_NZ$new(),
    phone_number = phone_number_en_NZ$new(),
    company = company_en_NZ$new(),
    credit_card = credit_card_en_NZ$new(),
    profile = profile_en_NZ$new()
  )
)

## faker_en_TH -------------------------
faker_en_TH = R6Class(
  "faker_en_TH",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_en_TH$new(),
    company = company_en_TH$new(),
    credit_card = credit_card_en_TH$new(),
    address = address_en_TH$new(),
    internet = internet_en_TH$new(),
    profile = profile_en_TH$new()
  )
)

## faker_es_ES ------------------------
faker_es_ES = R6Class(
  "faker_es_ES",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_es_ES$new(),
    company = company_es_ES$new(),
    credit_card = credit_card_es_ES$new(),
    address = address_es_ES$new(),
    internet = internet_en_US$new(),
    phone_number = phone_number_es_ES$new(),
    ssn = ssn_es_ES$new(),
    profile = profile_es_ES$new()
  )
)
## faker_es -------------------------
faker_es = R6Class(
  "faker_es",
  inherit = faker_es_ES,
  cloneable = FALSE
)
## faker_es_CA -------------------------
faker_es_CA = R6Class(
  "faker_es_CA",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_es_CA$new(),
    company = company_es_CA$new(),
    credit_card = credit_card_es_CA$new(),
    address = address_es_CA$new(),
    internet = internet_en_US$new(),
    ssn = ssn_es_ES$new(),
    profile = profile_es_CA$new()
  )
)


## faker_es_MX --------------------------------
faker_es_MX = R6Class(
  "faker_es_MX",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_es_MX$new(),
    company = company_es_MX$new(),
    address = address_es_MX$new(),
    phone_number = phone_number_es_MX$new(),
    ssn = ssn_es_MX$new(),
    credit_card = credit_card_es_MX$new(),
    internet = internet_en_US$new(),
    profile = profile_es_MX$new()
  )
)

## faker_et_EE -------------------------------
faker_et_EE = R6Class(
  "faker_et_EE",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_et_EE$new(),
    ssn = ssn_et_EE$new(),
    address = address_et_EE$new(),
    company = company_et_EE$new(),
    credit_card = credit_card_et_EE$new(),
    internet = internet_en_US$new(),
    profile = profile_et_EE$new()
  )
)
## faker_fa_IR -------------------------------
faker_fa_IR = R6Class(
  "faker_fa_IR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_fa_IR$new(),
    address = address_fa_IR$new(),
    company = company_fa_IR$new(),
    credit_card = credit_card_fa_IR$new(),
    internet = internet_fa_IR$new(),
    phone_number = phone_number_fa_IR$new(),
    job = job_fa_IR$new(),
    profile = profile_fa_IR$new()
  )
)


# faker_fi_FI ---------------------------
faker_fi_FI = R6Class(
  "faker_fi_FI",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    bank = bank_fi_FI$new(),
    person = person_fi_FI$new(),
    address = address_fi_FI$new(),
    company = company_fi_FI$new(),
    credit_card = credit_card_fi_FI$new(),
    internet = internet_fi_FI$new(),
    phone_number = phone_number_fi_FI$new(),
    job = job_fi_FI$new(),
    ssn = ssn_fi_FI$new(),
    profile = profile_fi_FI$new()
  )
)

# faker_fr_CH ---------------------------
faker_fr_CH = R6Class(
  "faker_fr_CH",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_fr_CH$new(),
    address = address_fr_CH$new(),
    company = company_fr_CH$new(),
    credit_card = credit_card_fr_CH$new(),
    internet = internet_fr_CH$new(),
    phone_number = phone_number_fr_CH$new(),
    job = job_fr_CH$new(),
    ssn = ssn_fr_CH$new(),
    profile = profile_fr_CH$new()
  )
)

# faker_fr_FR ---------------------------
faker_fr_FR = R6Class(
  "faker_fr_FR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    bank = bank_fr_FR$new(),
    color = color_fr_FR$new(),
    person = person_fr_FR$new(),
    address = address_fr_FR$new(),
    date_time = date_time_fr_FR$new(),
    company = company_fr_FR$new(),
    lorem = lorem_fr_FR$new(),
    file = file_fr_FR$new(),
    credit_card = credit_card_fr_FR$new(),
    internet = internet_fr_FR$new(),
    phone_number = phone_number_fr_FR$new(),
    job = job_fr_FR$new(),
    ssn = ssn_fr_FR$new(),
    profile = profile_fr_FR$new()
  )
)

# faker_he_IL ---------------------------
faker_he_IL = R6Class(
  "faker_he_IL",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_he_IL$new(),
    address = address_he_IL$new(),
    company = company_he_IL$new(),
    credit_card = credit_card_he_IL$new(),
    internet = internet_en_US$new(),
    phone_number = phone_number_he_IL$new(),
    lorem = lorem_he_IL$new(),
    file = file_he_IL$new(),
    ssn = ssn_he_IL$new(),
    profile = profile_he_IL$new()
  )
)

# faker_hi_IN ---------------------------
faker_hi_IN = R6Class(
  "faker_hi_IN",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_hi_IN$new(),
    address = address_hi_IN$new(),
    company = company_hi_IN$new(),
    credit_card = credit_card_hi_IN$new(),
    internet = internet_en_US$new(),
    phone_number = phone_number_hi_IN$new(),
    profile = profile_hi_IN$new()
  )
)

# faker_hr_HR ---------------------------
faker_hr_HR = R6Class(
  "faker_hr_HR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    color = color_hr_HR$new(),
    person = person_hr_HR$new(),
    address = address_hr_HR$new(),
    date_time = date_time_hr_HR$new(),
    company = company_hr_HR$new(),
    credit_card = credit_card_hr_HR$new(),
    internet = internet_hr_HR$new(),
    job = job_hr_HR$new(),
    phone_number = phone_number_hr_HR$new(),
    ssn = ssn_hr_HR$new(),
    profile = profile_hr_HR$new()
  )
)

# faker_hu_HU ---------------------------
faker_hu_HU = R6Class(
  "faker_hu_HU",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_hu_HU$new(),
    person = person_hu_HU$new(),
    address = address_hu_HU$new(),
    date_time = date_time_hu_HU$new(),
    company = company_hu_HU$new(),
    credit_card = credit_card_hu_HU$new(),
    internet = internet_hu_HU$new(),
    job = job_hu_HU$new(),
    phone_number = phone_number_hu_HU$new(),
    ssn = ssn_hu_HU$new(),
    profile = profile_hu_HU$new()
  )
)

# faker_hy_AM ---------------------------
faker_hy_AM = R6Class(
  "faker_hy_AM",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    color = color_hy_AM$new(),
    person = person_hy_AM$new(),
    address = address_hy_AM$new(),
    date_time = date_time_hy_AM$new(),
    company = company_hy_AM$new(),
    credit_card = credit_card_hy_AM$new(),
    internet = internet_en_US$new(),
    job = job_hy_AM$new(),
    phone_number = phone_number_hy_AM$new(),
    lorem = lorem_hy_AM$new(),
    file = file_hy_AM$new(),
    profile = profile_hy_AM$new()
  )
)

# faker_id_ID---------------------------
faker_id_ID = R6Class(
  "faker_id_ID",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_id_ID$new(),
    person = person_id_ID$new(),
    address = address_id_ID$new(),
    date_time = date_time_id_ID$new(),
    company = company_id_ID$new(),
    credit_card = credit_card_id_ID$new(),
    internet = internet_id_ID$new(),
    phone_number = phone_number_id_ID$new(),
    profile = profile_id_ID$new()
  )
)

# faker_it_IT---------------------------
faker_it_IT = R6Class(
  "faker_it_IT",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    bank = bank_it_IT$new(),
    person = person_it_IT$new(),
    address = address_it_IT$new(),
    company = company_it_IT$new(),
    credit_card = credit_card_it_IT$new(),
    internet = internet_it_IT$new(),
    phone_number = phone_number_it_IT$new(),
    ssn = ssn_it_IT$new(),
    profile = profile_it_IT$new()
  )
)

# faker_ja_JP ---------------------------
faker_ja_JP = R6Class(
  "faker_ja_JP",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_ja_JP$new(),
    address = address_ja_JP$new(),
    company = company_ja_JP$new(),
    credit_card = credit_card_ja_JP$new(),
    internet = internet_ja_JP$new(),
    phone_number = phone_number_ja_JP$new(),
    lorem = lorem_ja_JP$new(),
    file = file_ja_JP$new(),
    profile = profile_ja_JP$new()
  )
)

# faker_ka_GE ---------------------------------------------
faker_ka_GE = R6Class(
  "faker_ka_GE",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_ka_GE$new(),
    address = address_ka_GE$new(),
    company = company_ka_GE$new(),
    credit_card = credit_card_ka_GE$new(),
    internet = internet_en_US$new(),
    profile = profile_ka_GE$new()
  )
)

# faker_ko_KR ---------------------------------------------
faker_ko_KR = R6Class(
  "faker_ko_KR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_ko_KR$new(),
    address = address_ko_KR$new(),
    company = company_ko_KR$new(),
    credit_card = credit_card_ko_KR$new(),
    date_time = date_time_ko_KR$new(),
    internet = internet_ko_KR$new(),
    job = job_ko_KR$new(),
    ssn = ssn_ko_KR$new(),
    profile = profile_ko_KR$new()
  )
)

# faker_lb_LU ----------------------------------------------
faker_lb_LU = R6Class(
  "faker_lb_LU",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    ssn = ssn_lb_LU$new(),
    internet = internet_en_US$new(),
    profile = profile_lb_LU$new()
  )
)

# faker_lt_LT ----------------------------------------------
faker_lt_LT = R6Class(
  "faker_lt_LT",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_lt_LT$new(),
    phone_number = phone_number_lt_LT$new(),
    ssn = ssn_lt_LT$new(),
    credit_card = credit_card_lt_LT$new(),
    company = company_lt_LT$new(),
    address = address_lt_LT$new(),
    internet = internet_en_US$new(),
    profile = profile_lt_LT$new()
  )
)

# faker_lv_LV ----------------------------------------------
faker_lv_LV = R6Class(
  "faker_lv_LV",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_lv_LV$new(),
    phone_number = phone_number_lv_LV$new(),
    ssn = ssn_lv_LV$new(),
    credit_card = credit_card_lv_LV$new(),
    company = company_lv_LV$new(),
    address = address_lv_LV$new(),
    internet = internet_en_US$new(),
    profile = profile_lv_LV$new()
  )
)

# faker_mt_MT ----------------------------------------------
faker_mt_MT = R6Class(
  "faker_mt_MT",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    ssn = ssn_mt_MT$new(),
    internet = internet_en_US$new(),
    profile = profile_mt_MT$new()
  )
)

# faker_ne_NP ----------------------------------------------
faker_ne_NP = R6Class(
  "faker_ne_NP",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_ne_NP$new(),
    phone_number = phone_number_ne_NP$new(),
    credit_card = credit_card_ne_NP$new(),
    company = company_ne_NP$new(),
    address = address_ne_NP$new(),
    internet = internet_en_US$new(),
    profile = profile_ne_NP$new()
  )
)

# faker_nl_BE ----------------------------------------------
faker_nl_BE = R6Class(
  "faker_nl_BE",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    phone_number = phone_number_nl_BE$new(),
    address = address_nl_BE$new(),
    internet = internet_en_US$new(),
    ssn = ssn_nl_BE$new(),
    profile = profile_nl_BE$new()
  )
)

# faker_nl_NL ----------------------------------------------
faker_nl_NL = R6Class(
  "faker_nl_NL",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    bank = bank_nl_NL$new(),
    person = person_nl_NL$new(),
    company = company_nl_NL$new(),
    address = address_nl_NL$new(),
    phone_number = phone_number_nl_NL$new(),
    ssn = ssn_nl_NL$new(),
    credit_card = credit_card_nl_NL$new(),
    internet = internet_en_US$new(),
    profile = profile_nl_NL$new()
  )
)

# faker_no_NO ----------------------------------------------
faker_no_NO = R6Class(
  "faker_no_NO",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    bank = bank_no_NO$new(),
    person = person_no_NO$new(),
    company = company_no_NO$new(),
    address = address_no_NO$new(),
    internet = internet_no_NO$new(),
    phone_number = phone_number_no_NO$new(),
    ssn = ssn_no_NO$new(),
    credit_card = credit_card_no_NO$new(),
    profile = profile_no_NO$new()
  )
)


# faker_pl_PL ----------------------------------------------
faker_pl_PL = R6Class(
  "faker_pl_PL",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_pl_PL$new(),
    bank = bank_pl_PL$new(),
    person = person_pl_PL$new(),
    company = company_pl_PL$new(),
    date_time = date_time_pl_PL$new(),
    address = address_pl_PL$new(),
    job = job_pl_PL$new(),
    lorem = lorem_pl_PL$new(),
    file = file_pl_PL$new(),
    internet = internet_pl_PL$new(),
    phone_number = phone_number_pl_PL$new(),
    ssn = ssn_pl_PL$new(),
    credit_card = credit_card_pl_PL$new(),
    profile = profile_pl_PL$new()
  )
)



# faker_pt_BR ---------------------------------------------
faker_pt_BR = R6Class(
  "faker_pt_BR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_pt_BR$new(),
    color = color_pt_BR$new(),
    person = person_pt_BR$new(),
    company = company_pt_BR$new(),
    address = address_pt_BR$new(),
    job = job_pt_BR$new(),
    internet = internet_pt_BR$new(),
    phone_number = phone_number_pt_BR$new(),
    ssn = ssn_pt_BR$new(),
    credit_card = credit_card_pt_BR$new(),
    profile = profile_pt_BR$new()
  )
)



# faker_pt_PT ---------------------------------------------
faker_pt_PT = R6Class(
  "faker_pt_PT",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_pt_PT$new(),
    company = company_pt_PT$new(),
    address = address_pt_PT$new(),
    internet = internet_en_US$new(),
    phone_number = phone_number_pt_PT$new(),
    ssn = ssn_pt_PT$new(),
    credit_card = credit_card_pt_PT$new(),
    profile = profile_pt_PT$new()
  )
)



# faker_ro_RO ---------------------------------------------
faker_ro_RO = R6Class(
  "faker_ro_RO",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_ro_RO$new(),
    company = company_ro_RO$new(),
    address = address_ro_RO$new(),
    internet = internet_en_US$new(),
    ssn = ssn_ro_RO$new(),
    credit_card = credit_card_ro_RO$new(),
    profile = profile_ro_RO$new()
  )
)



# faker_ru_RU ---------------------------------------------
faker_ru_RU = R6Class(
  "faker_ru_RU",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_ru_RU$new(),
    color = color_ru_RU$new(),
    person = person_ru_RU$new(),
    company = company_ru_RU$new(),
    address = address_ru_RU$new(),
    date_time = date_time_ru_RU$new(),
    job = job_ru_RU$new(),
    lorem = lorem_ru_RU$new(),
    file = file_ru_RU$new(),
    phone_number = phone_number_ru_RU$new(),
    internet = internet_ru_RU$new(),
    ssn = ssn_ru_RU$new(),
    credit_card = credit_card_ru_RU$new(),
    profile = profile_ru_RU$new()
  )
)



# faker_sk_SK ---------------------------------------------
faker_sk_SK = R6Class(
  "faker_sk_SK",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    company = company_sk_SK$new(),
    address = address_sk_SK$new(),
    phone_number = phone_number_sk_SK$new(),
    internet = internet_sk_SK$new(),
    ssn = ssn_sk_SK$new(),
    profile = profile_sk_SK$new()
  )
)



# faker_sl_SI ---------------------------------------------
faker_sl_SI = R6Class(
  "faker_sl_SI",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_sl_SI$new(),
    company = company_sl_SI$new(),
    address = address_sl_SI$new(),
    date_time = date_time_sl_SI$new(),
    credit_card = credit_card_sl_SI$new(),
    phone_number = phone_number_sl_SI$new(),
    internet = internet_sl_SI$new(),
    ssn = ssn_sl_SI$new(),
    profile = profile_sl_SI$new()
  )
)




# faker_sv_SE ---------------------------------------------
faker_sv_SE = R6Class(
  "faker_sv_SE",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    automotive = automotive_sv_SE$new(),
    person = person_sv_SE$new(),
    company = company_sv_SE$new(),
    address = address_sv_SE$new(),
    credit_card = credit_card_sv_SE$new(),
    phone_number = phone_number_sv_SE$new(),
    internet = internet_sv_SE$new(),
    ssn = ssn_sv_SE$new(),
    profile = profile_sv_SE$new()
  )
)




# faker_th_TH ---------------------------------------------
faker_th_TH = R6Class(
  "faker_th_TH",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_th_TH$new(),
    company = company_th_TH$new(),
    address = address_th_TH$new(),
    credit_card = credit_card_th_TH$new(),
    phone_number = phone_number_th_TH$new(),
    internet = internet_en_US$new(),
    job = job_th_TH$new(),
    profile = profile_th_TH$new()
  )
)




# faker_tr_TR ---------------------------------------------
faker_tr_TR = R6Class(
  "faker_tr_TR",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_tr_TR$new(),
    company = company_tr_TR$new(),
    address = address_tr_TR$new(),
    credit_card = credit_card_tr_TR$new(),
    internet = internet_en_US$new(),
    profile = profile_tr_TR$new()
  )
)




# faker_tw_GH ---------------------------------------------
faker_tw_GH = R6Class(
  "faker_tw_GH",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_tw_GH$new(),
    company = company_tw_GH$new(),
    address = address_tw_GH$new(),
    credit_card = credit_card_tw_GH$new(),
    phone_number = phone_number_tw_GH$new(),
    internet = internet_tw_GH$new(),
    profile = profile_tw_GH$new()
  )
)




# faker_uk_UA ---------------------------------------------
faker_uk_UA = R6Class(
  "faker_uk_UA",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    color = color_uk_UA$new(),
    person = person_uk_UA$new(),
    company = company_uk_UA$new(),
    address = address_uk_UA$new(),
    credit_card = credit_card_uk_UA$new(),
    phone_number = phone_number_uk_UA$new(),
    internet = internet_uk_UA$new(),
    job = job_uk_UA$new(),
    ssn = ssn_uk_UA$new(),
    profile = profile_uk_UA$new()
  )
)




# faker_zh_CN ---------------------------------------------
faker_zh_CN = R6Class(
  "faker_zh_CN",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_zh_CN$new(),
    company = company_zh_CN$new(),
    address = address_zh_CN$new(),
    credit_card = credit_card_zh_CN$new(),
    date_time = date_time_zh_CN$new(),
    phone_number = phone_number_zh_CN$new(),
    lorem = lorem_zh_CN$new(),
    file = file_zh_CN$new(),
    internet = internet_zh_CN$new(),
    job = job_zh_CN$new(),
    ssn = ssn_zh_CN$new(),
    profile = profile_zh_CN$new()
  )
)




# faker_zh_TW ---------------------------------------------
faker_zh_TW = R6Class(
  "faker_zh_TW",
  inherit = faker_la,
  cloneable = FALSE,
  public = list(
    person = person_zh_TW$new(),
    company = company_zh_TW$new(),
    address = address_zh_TW$new(),
    credit_card = credit_card_zh_TW$new(),
    phone_number = phone_number_zh_TW$new(),
    lorem = lorem_zh_TW$new(),
    file = file_zh_TW$new(),
    internet = internet_zh_TW$new(),
    job = job_zh_TW$new(),
    ssn = ssn_zh_TW$new(),
    profile = profile_zh_TW$new()
  )
)



