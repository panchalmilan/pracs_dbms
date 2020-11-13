INSERT INTO `user` (`username`, `firstname`, `lastname`, `gender`)
VALUES ('parth29', 'parth', 'pawar', 'm'),
('milan4', 'milan', 'panchal', 'm'),
('rusdes', 'rushil', 'desai', 'm');

INSERT INTO  `follow_user` 
VALUES ('parth29', 'milan4'),
('parth29', 'rusdes'),
('rusdes', 'parth29');