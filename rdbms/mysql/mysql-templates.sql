CREATE DATABASE postdata CHARACTER SET utf8;
CREATE TABLE    postdata.alldata (national_local_government_code int, 
                                  postal_code_old                varchar(30),
                                  postal_code_new                varchar(30) NOT NULL PRIMARY KEY,
                                  prefectures_katakana           varchar(30),
                                  city_katakana                  varchar(30),
                                  town_area_katakana             varchar(30),
                                  prefectures_kanji              varchar(30),
                                  city_kanji                     varchar(30),
                                  town_area_kanji                varchar(30)
                                 );
