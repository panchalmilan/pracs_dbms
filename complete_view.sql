-- 1
-- create all tables using createDB.sql


-- 2
-- insert data in user, topic, follow_topic 
INSERT INTO `user` (`username`, `firstname`, `lastname`, `gender`)
VALUES 
	('parth29', 'parth', 'pawar', 'm'),
	('milan4', 'milan', 'panchal', 'm'),
	('rusdes', 'rushil', 'desai', 'm'),
  ('niravp', 'nirav', 'pocha', 'm'),
  ('alexa', 'alexandra', 'doe', 'f'),
  ('taylors', 'taylor', 'swift', 'f');

INSERT INTO `topic` (`topic_name`)
VALUES
	('guitar'),
	('marvel'),
	('weeb'),
	('gym'),
	('football');
    
INSERT INTO `follow_topic` (`username`, `topic_name`)
VALUES
	('parth29', 'guitar'),
	('niravp', 'marvel'),
	('milan4', 'guitar'),
	('parth29', 'weeb'),
	('rusdes', 'gym'),
	('rusdes', 'guitar'),
	('parth29', 'football');

-- 3
-- create view joining user and topic tables
CREATE VIEW `user_by_topic` AS
  SELECT 
    u.username,
    firstname,
    lastname,
    topic_name
      FROM `user` u
  JOIN `follow_topic` ft USING (`username`)


-- 4
-- showing user_by_topic view
SELECT * 
  FROM user_by_topic;


-- 5
-- dropping user_by_topic view
DROP VIEW `user_by_topic`;