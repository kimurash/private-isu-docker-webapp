-- 2025-08-12 #4

USE isuconp;

CREATE INDEX IF NOT EXISTS `post_id_idx` ON `comments` (`post_id`);
