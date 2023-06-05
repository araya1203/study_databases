-- INSERT INTO table_name 
-- (column1, column2, column3, ...)
-- VALUES 
-- (value1, value2, value3, ...);


INSERT INTO address_code_ID
(ADDRESS, ADDRESS_CODE_ID)
VALUES
('서울시','A-01'),
('부산시','A-02'),
('경기도','A-03'),
('대전시','A-04'),
('인천시','A-05');

INSERT INTO gender_code
(GENDER, GENDER_CODE)
VALUES
('남','G-01');

INSERT INTO gender_code
(GENDER, GENDER_CODE)
VALUES
('여','G-04');


INSERT INTO members
(NAME, AGE, TELEPHONE, MEMBERS_ID, GENDER_CODE, ADDRESS_CODE_ID)
VALUES
('홍길동', 30, '010-1234-5678', 'M-01', 'G-01', 'A-01'),
('박영희', 25, '010-9876-5432', 'M-02', 'G-04', 'A-02'),
('김철수', 35, '010-1111-2222', 'M-03', 'G-01', 'A-03'),
('이영미', 28, '010-3333-4444', 'M-04', 'G-04', 'A-04'),
('정민호', 32, '010-5555-6666', 'M-05', 'G-01', 'A-05');

INSERT INTO hobby_code_id
(HOBBY, HOBBY_CODE_ID)
VALUES
('요리','MH-01'),
('등산','MH-02'),
('영화감상','MH-03'),
('독서','MH-04'),
('음악감상','MH-05'),
('요가','MH-06'),
('여행','MH-07'),
('사진촬영','MH-08'),
('수영','MH-09');

INSERT INTO members_hobby
(MEMBERS_ID,HOBBY_CODE_ID)
VALUES
('MH-01','M-01'),
('MH-02','M-01'),
('MH-03','M-02'),
('MH-04','M-02'),
('MH-05','M-03'),
('MH-06','M-03'),
('MH-07','M-04'),
('MH-08','M-04'),
('MH-09','M-05');

INSERT INTO members_login
(EMAIL, MEMBERS_ID, MEMBERS_LOGIN_ID)
VALUES

('hong@gmail.com', 'M-01', 'L-01'),
('park.younghee@naver.com', 'M-02',	'L-02'),
('kimchulsu@gmail.com',	'M-03',	'L-03'),
('leeyoungmi@naver.com', 'M-04', 'L-04'),
('jmh123@gmail.com', 'M-05', 'L-05');


