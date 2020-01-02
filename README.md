# faker
生成各类"假"数据的faker的R版本.

## 安装

```r
devtools::install_github("LuYang19/faker")
```

## 使用指南
```r
library(faker)
fake = faker(locale = "zh_CN")
```
faker通过对locale的设置来实现多种不同语言之间的切换(默认locale = "en_US")，这里有几个比较常见的语言代号：

- 简体中文：zh_CN
- 繁体中文：zh_TW
- 美国英文：en_US
- 英国英文：en_GB
- 德文：de_DE
- 日文：ja_JP
- 韩文：ko_KR
- 法文：fr_FR

### address

```r
fake$address$address()
fake$address$building_number()
fake$address$city()
fake$address$city_name()
fake$address$city_suffix()
fake$address$country()
fake$address$country_code()
fake$address$district()
fake$address$postcode()
fake$address$province()
fake$address$street_address()
fake$address$street_name()
fake$address$street_suffix()
```



### automotive 

```r
fake$automotive$license_plate()
```

### bank
```r
fake$bank$bank_country()
fake$bank$bban()
fake$bank$iban()
```

### barcode

```r
fake$barcode$ean(13)
fake$barcode$ean13()
fake$barcode$ean8()
```

### color

```r
fake$color$color_name()
fake$color$hex_color()
fake$color$rgb_color()
fake$color$rgb_css_color()
fake$color$safe_color_name()
fake$color$safe_hex_color()
```

### company

```r
fake$company$bs()
fake$company$catch_phrase()
fake$company$company()
fake$company$company_suffix()
```

### credit_card

```r
fake$credit_card$credit_card_expire()
fake$credit_card$credit_card_full()
fake$credit_card$credit_card_number()
fake$credit_card$credit_card_provider()
fake$credit_card$credit_card_security_code()
```

### credit_score

```r
fake$credit_score$credit_score()
fake$credit_score$credit_score_full()
fake$credit_score$credit_score_name()
fake$credit_score$credit_score_provider()
```

### currency

```r
fake$currency$cryptocurrency()
fake$currency$cryptocurrency_code()
fake$currency$cryptocurrency_name()
fake$currency$currency()
fake$currency$currency_code()
fake$currency$currency_name()
```

### date_time

```r
fake$date_time$am_pm()
fake$date_time$century()
fake$date_time$date()
fake$date_time$date_of_birth(minimum_age = 0, maximum_age = 100)
fake$date_time$day_of_month()
fake$date_time$day_of_week()
fake$date_time$iso8601()
fake$date_time$month()
fake$date_time$month_name()
fake$date_time$time()
fake$date_time$time_diff("2000-01-01","2010-01-01")
fake$date_time$timezone()
fake$date_time$unix_time()
fake$date_time$year()
```

### file

```r
fake$file$file_extension()
fake$file$file_name()
fake$file$file_path()
fake$file$mime_type()
fake$file$unix_device()
fake$file$unix_partition()
```

### geo 

```r
fake$geo$coordinate(radius = 0.001)
fake$geo$latitude()
fake$geo$latlng()
fake$geo$local_latlng()
fake$geo$location_on_land()
fake$geo$longitude()
```

### internet

```r
fake$internet$ascii_company_email()
fake$internet$ascii_email()
fake$internet$ascii_free_email()
fake$internet$ascii_safe_email()
fake$internet$company_email()
fake$internet$domain_name()
fake$internet$domain_word()
fake$internet$email()
fake$internet$free_email()
fake$internet$free_email_domain()
fake$internet$hostname()
fake$internet$image_url()
fake$internet$ipv4()
fake$internet$ipv4_network_class()
fake$internet$ipv4_private()          
fake$internet$ipv4_public()
fake$internet$ipv6()
fake$internet$mac_address()
fake$internet$safe_email()
fake$internet$slug()
fake$internet$tld()
fake$internet$uri()
fake$internet$uri_extension()
fake$internet$uri_page()
fake$internet$uri_path()
fake$internet$url()
fake$internet$user_name()
```

### isbn 

```r
fake$isbn$isbn10()
fake$isbn$isbn13()
```

### job

```r
fake$job$job()
```

### lorem

```r
fake$lorem$paragraph()
fake$lorem$paragraphs()
fake$lorem$sentence()
fake$lorem$sentences()
fake$lorem$text()
fake$lorem$texts()
fake$lorem$word()
fake$lorem$words()
```

### microservice

```r
fake$microservice$microservice()
```

### misc

```r
fake$misc$md5()
fake$misc$password()
fake$misc$sha1()
fake$misc$sha256()
fake$misc$sha512()
```

### person

```r
fake$person$first_name()
fake$person$first_name_female()
fake$person$first_name_male()
fake$person$first_romanized_name()
fake$person$last_name()
fake$person$last_name_female()
fake$person$last_name_male()
fake$person$last_romanized_name()
fake$person$name()
fake$person$name_female()
fake$person$name_male()
fake$person$prefix()
fake$person$prefix_female()
fake$person$prefix_male()
fake$person$romanized_name()
fake$person$suffix()
fake$person$suffix_female()
fake$person$suffix_male()
```

### phone_number

```r
fake$phone_number$msisdn()
fake$phone_number$phone_number()
fake$phone_number$phonenumber_prefix()
```

### profile

```r
fake$profile$profile()
fake$profile$simple_profile()
```

### ssn

```r
fake$ssn$ssn()
```

### user_agent

```r
fake$user_agent$android_platform_token()
fake$user_agent$chrome()
fake$user_agent$firefox())
fake$user_agent$internet_explorer()
fake$user_agent$ios_platform_token()
fake$user_agent$linux_platform_token()
fake$user_agent$linux_processor()
fake$user_agent$mac_platform_token()
fake$user_agent$mac_processor()
fake$user_agent$opera()
fake$user_agent$safari()
fake$user_agent$user_agent()
fake$user_agent$windows_platform_token()
```

### web

```r
fake$web$apache()
fake$web$content_type()
fake$web$content_type_popular()            
fake$web$iis()
fake$web$nginx()
fake$web$server_token()
fake$web$varnish()
```

### wifi_essid

```r
fake$wifi_essid$bbox_default_essid()
fake$wifi_essid$common_essid()
fake$wifi_essid$upc_default_essid()
fake$wifi_essid$wifi_essid()
```





