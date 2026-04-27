DROP DATABASE IF EXISTS `JDBC_AM_26_04`;
CREATE DATABASE `JDBC_AM_26_04`;
USE `JDBC_AM_26_04`;

CREATE TABLE article (
                         id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                         regDate DATETIME NOT NULL,
                         updateDate DATETIME NOT NULL,
                         title CHAR(100) NOT NULL,
                         `body` TEXT NOT NULL
);

DESC article;

SELECT *
FROM article;

INSERT INTO article
SET regDate = NOW(),
updateDate = NOW(),
title = CONCAT('제목', SUBSTRING(RAND() * 1000 FROM 1 FOR 2)),
`body` = CONCAT('내용', SUBSTRING(RAND() * 1000 FROM 1 FOR 2));

SELECT NOW();

SELECT '제목1';

SELECT CONCAT('제목2', '2');

SELECT SUBSTRING(RAND() * 1000 FROM 1 FOR 2);

DELETE FROM article;


# ------------- 멤버테이블
CREATE TABLE `member` (
                          id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
                          regDate DATETIME NOT NULL,
                          updateDate DATETIME NOT NULL,
                          loginId CHAR(30) NOT NULL,
                          loginPw CHAR(200) NOT NULL,
                          `name` CHAR(100) NOT NULL
);

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test1',
loginPw = 'test1',
`name` = '회원1';

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = 'test2',
loginPw = 'test2',
`name` = '회원2';

DESC `member`;

SELECT *
FROM `member`;

INSERT INTO `member`
SET regDate = NOW(),
updateDate = NOW(),
loginId = CONCAT('loginId', SUBSTRING(RAND() * 1000 FROM 1 FOR 2)),
loginPw = CONCAT('loginPw', SUBSTRING(RAND() * 1000 FROM 1 FOR 2)),
`name` = CONCAT('name', SUBSTRING(RAND() * 1000 FROM 1 FOR 2));

SELECT *
FROM `member`;