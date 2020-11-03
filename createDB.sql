DROP DATABASE IF EXISTS `social_network`;
CREATE DATABASE `social_network`;
USE `social_network`;


CREATE TABLE `post_images`(
  `post_image` VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE `post_links`(
  `post_link` VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE `follow_user`(
  `followeeId` INT NOT NULL,
  `followerId` INT NOT NULL,
  CONSTRAINT PK_follow_user PRIMARY KEY (`followeeId`, `followerId`)
);

CREATE TABLE `group_member`(
  `member_name` VARCHAR(255) NOT NULL,
  `groupId` INT NOT NULL,
  CONSTRAINT PK_group_member PRIMARY KEY (`member_name`, `groupId`)
);

CREATE TABLE `group`(
  `group_name` VARCHAR(255) NOT NULL,
  `groupId` INT NOT NULL PRIMARY KEY
);

ALTER TABLE `group_member`
  ADD FOREIGN KEY (`groupId`)
      REFERENCES `group` (`groupId`);