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


CREATE TABLE `posts`(
  `postId` INT NOT NULL PRIMARY KEY,
  `num_likes` INT NULL DEFAULT 0,
  `num_dislikes` INT NULL DEFAULT 0,
  `post_text` VARCHAR(255) NULL,
  `create_time` DATE NOT NULL,
  `post_link` VARCHAR(255) NOT NULL,
  `post_image`VARCHAR(255) NOT NULL,
  `username` VARCHAR(255) NOT NULL,
  FOREIGN KEY (`post_link`)
    REFERENCES `post_links` (`post_link`),
  FOREIGN KEY (`post_image`)
    REFERENCES `post_images` (`post_image`)
);
