INSERT INTO `user` (`username`, `firstname`, `lastname`, `gender`)
VALUES 
	('parth29', 'parth', 'pawar', 'm'),
	('milan4', 'milan', 'panchal', 'm'),
	('rusdes', 'rushil', 'desai', 'm'),
    ('niravp', 'nirav', 'pocha', 'm'),
    ('alexa', 'alexandra', 'doe', 'f'),
    ('taylors', 'taylor', 'swift', 'f');


INSERT INTO `post_images`
VALUES 
	('Hello world post 1 image'),
	('john doe post 1 image'),
	('something post 1 image'), 
	('big bang post 1 image'),
	('bitcoin post 1 image'),
	('happy diwali post 1 image'),
	('John Wick post 1 image');
    
INSERT INTO `post_links`
VALUES 
	('Hello world post 1 link'),
	('john doe post 1 link'),
	('something post 1 link'), 
	('big bang post 1 link'),
	('bitcoin post 1 link'),
	('happy diwali post 1 link'),
	('John Wick post 1 link');

INSERT INTO `post`
VALUES 
	(1, 2, 0, 'Hello world post 1 text', '2020-11-02', 'Hello world post 1 link', 'Hello world post 1 image', 'milan4'),
	(2, 10, 4, 'john doe post 1 text', '2020-9-14', 'john doe post 1 link', 'john doe post 1 image', 'milan4'),
	(3, 5, 1, 'something post 1 text', '2020-9-24', 'something post 1 link', 'something post 1 image', 'rusdes'),
	(4, 8, 2, 'big bang post 1 text', '2019-11-04', 'big bang post 1 link', 'big bang post 1 image', 'niravp'),
	(5, 0, 7, 'bitcoin post 1 text', '2019-11-24', 'bitcoin post 1 link', 'bitcoin post 1 image', 'alexa'),
	(6, 2, 0, 'John Wick post 1 text', '2020-11-04', 'John Wick post 1 link', 'John Wick post 1 image', 'milan4'),
	(7, 10, 4, 'happy diwali post 1 text', '2019-01-24', 'happy diwali post 1 link', 'happy diwali post 1 image', 'niravp');
