SET FOREIGN_KEY_CHECKS=0;


DROP TABLE IF EXISTS province;
CREATE TABLE province (
  province_id      char(12),
  name           varchar(64),
  PRIMARY KEY (province_id)
);


DROP TABLE IF EXISTS city;
CREATE TABLE city (
  city_id       char(12),
  name          varchar(64),
  province_id   char(12),
  PRIMARY KEY (city_id)
);


DROP TABLE IF EXISTS county;
CREATE TABLE county (
  county_id char(12),
  name varchar(64),
  city_id char(12),
  PRIMARY KEY (county_id)
);


DROP TABLE IF EXISTS town;
CREATE TABLE town (
  town_id char(12),
  name varchar(64),
  county_id char(12),
  PRIMARY KEY (town_id)
);


DROP TABLE IF EXISTS village;
CREATE TABLE village (
  village_id varchar(12),
  name varchar(64),
  town_id varchar(12),
  PRIMARY KEY (village_id)
);