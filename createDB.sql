DROP DATABASE IF EXISTS `social_network`;
CREATE DATABASE `social_network`;
USE `social_network`;


CREATE TABLE `user`(
  `username` VARCHAR(255) NOT NULL PRIMARY KEY,
  `firstname` VARCHAR(255) NOT NULL,
  `lastname` VARCHAR(255) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  `birth_date` DATE NULL
);


CREATE TABLE `post_images`(
  `post_image` VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE `post_links`(
  `post_link` VARCHAR(255) NOT NULL PRIMARY KEY
);

CREATE TABLE `follow_user`(
  `followeeId` VARCHAR(255) NOT NULL,
  `followerId` VARCHAR(255) NOT NULL,
  FOREIGN KEY (`followeeId`)
    REFERENCES `user` (`username`),
  FOREIGN KEY (`followerId`)
    REFERENCES `user` (`username`),
  CONSTRAINT PK_follow_user PRIMARY KEY (`followeeId`, `followerId`)
);


CREATE TABLE `group`(
  `group_name` VARCHAR(255) NOT NULL,
  `groupId` INT NOT NULL PRIMARY KEY
);

CREATE TABLE `group_member`(
  `member_name` VARCHAR(255) NOT NULL,
  `groupId` INT NOT NULL,
  FOREIGN KEY (`groupId`)
    REFERENCES `group` (`groupId`),
  FOREIGN KEY (`member_name`)
    REFERENCES `user` (`username`),
  CONSTRAINT PK_group_member PRIMARY KEY (`member_name`, `groupId`)
);


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
    REFERENCES `post_images` (`post_image`),
  FOREIGN KEY (`username`)
    REFERENCES `user` (`username`)
);
