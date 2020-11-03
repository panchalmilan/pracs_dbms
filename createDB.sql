DROP DATABASE IF EXISTS `social_network`;
CREATE DATABASE `social_network`;
USE `social_network`;


CREATE TABLE `post_images`(
  `post_image` VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE `post_links`(
  `post_link` VARCHAR(255) NOT NULL PRIMARY KEY
);
