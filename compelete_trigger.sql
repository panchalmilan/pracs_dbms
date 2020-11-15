-- 1: create db tables using createDB.sql
-- 2: insert data using insertData2.sql
-- 3: trigger creation on post table 
  -- trigger gets executed whenever a post is deleted, it deletes respective post from 
  -- post_image and post_link table

DELIMITER $$
DROP TRIGGER IF EXISTS `post_after_delete`;
CREATE TRIGGER `post_after_delete`
	AFTER DELETE ON `post`
	FOR EACH ROW -- trigger gets executed whenever a row is deleted from post table
BEGIN 
    -- deleting respective post_image from post_images table
    DELETE FROM `post_images`
    WHERE `post_image` = OLD.post_image;

    -- deleting respective post_link from post_links table
    DELETE FROM `post_links`
    WHERE `post_link` = OLD.post_link;
END $$
DELIMITER ;

-- 4: Viewing a trigger
SHOW TRIGGERS

-- 5: Deleting a triiger
DROP TRIGGER `post_after_delete`