use webtest;
drop table if exists team;
CREATE TABLE team(
  teamno      INT                  NOT NULL AUTO_INCREMENT COMMENT '팀 번호',
  tname       VARCHAR (20)         NOT NULL COMMENT '이름',
  skills      TEXT        		   NOT NULL COMMENT '내용',
  wname        VARCHAR (20)        NOT NULL COMMENT '작성자',
  phone       VARCHAR (20)         NOT NULL COMMENT '전화번호',
  address     VARCHAR (20)         NOT NULL COMMENT '주소',
  zipcode     VARCHAR (20)         NOT NULL COMMENT '우편번호',
  gender 	  VARCHAR (20)         NOT NULL COMMENT '성별',
  passwd      VARCHAR (20)         NULL COMMENT '패스워드',
  cnt         SMALLINT             NOT NULL DEFAULT '0' COMMENT '조회수',
  rdate       DATETIME             NOT NULL COMMENT '등록일',
  PRIMARY KEY (teamno)  
);   
-- 생성
INSERT INTO team(tname, skills, wname, phone, address, zipcode, gender, passwd, cnt, rdate)
VALUES('신하영', 'java,jsp,spring', '123','010-1234-5678', '군산', '54084', '남자','1','0', NOW());

select teamno, tname, skills,wname, phone, address, zipcode, gender, passwd, cnt, rdate
from team;

-- 수정
UPDATE team
SET tname='신하영1', skills='java,jsp,spring,python', wname='1234',phone='010-1234-1234', address='군산대', zipcode='54085', gender ='여자', passwd='1'
WHERE teamno=1;
-- 패스워드 확인
SELECT COUNT(*) AS cnt
FROM team
WHERE teamno=1 AND passwd='1';
-- 삭제
DELETE FROM team
WHERE teamno=1;

drop table if exists skill;
CREATE TABLE skill(
  skillno      INT                  NOT NULL AUTO_INCREMENT COMMENT '팀 번호',
  skname       VARCHAR (20)         NOT NULL COMMENT '이름',
  PRIMARY KEY (skillno)  
);   

select * from skill;

INSERT INTO skill(skname)
VALUES('java');

INSERT INTO skill(skname)
VALUES('jsp');

INSERT INTO skill(skname)
VALUES('spring');