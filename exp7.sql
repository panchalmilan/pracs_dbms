-- implicit join condition
SELECT u.username, p.postId, p.num_likes, p.num_dislikes, p.post_image
FROM `user` u
JOIN `post` p
	ON u.username = p.username
ORDER BY username;

-- implicit join where clause
SELECT u.username, p.postId, p.num_likes, p.num_dislikes, p.post_image
FROM `user` u, `post` p
WHERE u.username = p.username
ORDER BY username;    

-- left join syntax
SELECT u.username, p.postId, p.num_likes, p.num_dislikes, p.post_image
FROM `user` u
LEFT JOIN `post` p
	ON u.username = p.username
ORDER BY username;

-- right join syntax
SELECT u.username, p.postId, p.num_likes, p.num_dislikes, p.post_image
FROM `user` u
RIGHT JOIN `post` p
	ON u.username = p.username
ORDER BY username;

-- union
SELECT username FROM `user` 
UNION
SELECT post_image FROM `post` 
WHERE num_likes > 5;
