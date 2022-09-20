# DB 생성
DROP DATABASE IF EXISTS JSPTest;
CREATE DATABASE JSPTest;
USE JSPTest;

# 게시글 테이블 생성
CREATE TABLE article(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

# 게시글 테스트데이터 생성
INSERT INTO article 
SET regDate = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article 
SET regDate = NOW(),
title = '제목2',
`body` = '내용2';

INSERT INTO article 
SET regDate = NOW(),
title = '제목3',
`body` = '내용3';

INSERT INTO article(regDate,title,`body`)VALUE
(NOW(),CONCAT('제목',RAND()),CONCAT('내용',RAND())),
(NOW(),CONCAT('제목',RAND()),CONCAT('내용',RAND())),
(NOW(),CONCAT('제목',RAND()),CONCAT('내용',RAND())),
(NOW(),CONCAT('제목',RAND()),CONCAT('내용',RAND())),
(NOW(),CONCAT('제목',RAND()),CONCAT('내용',RAND())),
(NOW(),CONCAT('제목',RAND()),CONCAT('내용',RAND()));


SELECT * FROM article;

SELECT COUNT(*) FROM article;

INSERT INTO article 
SET regDate = NOW(),
title = '제목1',
`body` = '내용1';

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member`(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    loginId VARCHAR(100) NOT NULL UNIQUE,
    loginPw VARCHAR(100) NOT NULL,
    `name` VARCHAR(100) NOT NULL
);

DESC `member`;

SELECT * FROM `member`;

INSERT INTO `member`
SET regDate = NOW(),
loginId = 'id1',
loginPw = 'pw1',
 `name` = '홍길동';
 INSERT INTO `member` SET regDate = NOW() , loginId = 'id2' , loginPw = 'pw2' , `name` = '홍길동';

INSERT INTO article 
SET regDate = NOW(),
title = '제목1',
`body` = '내용1';