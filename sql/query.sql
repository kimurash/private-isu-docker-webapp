-- 2025-08-12 #4

USE isuconp;

ALTER TABLE `comments` ADD INDEX `post_id_idx` (`post_id`);
