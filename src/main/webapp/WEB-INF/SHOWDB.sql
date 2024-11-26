SHOW DATABASE;

CREATE TABLE member(
	id int NOT NULL AUTO_INCREMENT,
	name VARCHAR(100) NOT NULL,
	passwd VARCHAR(50) NOT NULL,
	PRIMARY KEY (id)
);

TABLE member;
DESC member;

--열 추가
ALTER TABLE member ADD phone VARCHAR(20);
ALTER TABLE member ADD nickname VARCHAR(50);

-- 열 삭제
ALTER TABLE member DROP COLUMN nickname;

--열의 이름을 수정하기
ALTER TABLE member CHANGE COLUMN passwd password varchar(60);

--테이블의 이름을 수정하기
RENAME TABLE member TO student;
TABLE student;

--테이블에서 데이터 삽입하기
INSERT INTO stident VALUES('1', '홍길순', '1235', '01055556666');
INSERT INTO stident VALUES('2', '수여인', '1236', '01077778888');
INSERT INTO stident VALUES('3', '수여남', '1237', '01099991111');
INSERT INTO stident VALUES('4', '홍길동', '1238', '01022223333');

--조회 할 때
SELECT id, name, phone FROM student;
SELECT * FROM student ORDER BY is DESC LIMIT 2;
SELECT * FROM student WHERE id=2;

INSERT INTO student VALUES('99', 'JISOO', '0000', null);

--열의 값 수정 할때
UPDATE student SET phone="01055554444" WHERE name='JISOO';
SELECT * FROM student;

INSERT INTO student VALUES('15', 'Tracy', 'abcd', null);
TABLE student;

--행을 삭제하려면
DELETE FROM student WHERE id = '15';

--CRUD 기능
--C (Create)생성: INSERT .../ CREATE
--R(Read) 조회, 읽기:SELECT ../SHOW..
--U(Update) 수정, 변경: UPDATE.. / ALTER..
--D(Delete)삭제: DELETE.. DROP..


