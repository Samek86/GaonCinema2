
DROP TABLE GC_THEATER; 
DROP SEQUENCE GC_THEATER_SEQ;

/* GC_THEATER 테이블 (영화관) */
CREATE TABLE GC_THEATER (
  THEATER_ID   NUMBER(10)        NOT NULL PRIMARY KEY,  --THEATER 고유키
  CNAME        VARCHAR2(10 CHAR) NOT NULL,              --도시 이름 (서울, 인천/경기)
  LNAME        VARCHAR2(10 CHAR) NOT NULL,              --지역 이름 (신촌, 강남, 성신)
  TNAME        VARCHAR2(10 CHAR) NOT NULL,              --영화관 이름 (1관, 2관, 3D관, 4D관)
  TTYPE        VARCHAR2(10 CHAR) NOT NULL,              --영화관 종류 (일반, 3D, 4D)
  TIMG         VARCHAR2(50 CHAR) NOT NULL,              --영화관 이미지
  SEATCOUNT    NUMBER(3)         NOT NULL,              --좌석 총 개수
  SEATROWCOUNT NUMBER(2)         NOT NULL,              --좌석 행 개수
  SEATCOLCOUNT NUMBER(2)         NOT NULL,              --좌석 열 개수
  SEATSTYLE    NUMBER(2)         NOT NULL               --스타일
);
CREATE SEQUENCE GC_THEATER_SEQ;


/* GC_THEATER 데이터 삽입 */

/* 서울 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '강남', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '강남', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '강남', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '목동', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '목동', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '목동', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '센트럴', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '센트럴', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '센트럴', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '신촌', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '신촌', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '신촌', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '이수', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '이수', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '이수', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '화곡', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '화곡', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '화곡', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '동대문', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '동대문', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '동대문', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '상봉', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '상봉', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '상봉', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '수유', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '수유', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '수유', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '은평', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '은평', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '은평', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '코엑스', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '코엑스', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '코엑스', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

/* 인천/경기 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '검단', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '검단', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '검단', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '남양주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '남양주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '남양주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '백석', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '백석', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '백석', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '분당', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '분당', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '분당', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '수원남문', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '수원남문', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '수원남문', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '양주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '양주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '양주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '영통', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '영통', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '영통', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '인천논현', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '인천논현', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '인천논현', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '킨텍스', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '킨텍스', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '킨텍스', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '파주출판도시', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '파주출판도시', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '파주출판도시', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', 'DriveM(용인)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', 'DriveM(용인)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', 'DriveM(용인)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '김포', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '김포', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '김포', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '동탄', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '동탄', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '동탄', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '별내', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '별내', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '별내', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '수원', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '수원', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '수원', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '안산중앙', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '안산중앙', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '안산중앙', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '연수', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '연수', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '연수', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '오산', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '오산', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '오산', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '일산', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '일산', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '일산', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '파주금촌', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '파주금촌', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '파주금촌', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '평택', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '평택', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '인천/경기', '평택', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

/* 대전/충청/세종 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '공주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '공주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '공주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '보령', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '보령', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '보령', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '제천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '제천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '제천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '천안', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '천안', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '천안', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '대전', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '대전', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '대전', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '세종', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '세종', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '세종', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '진천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '진천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '진천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '충주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '충주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '대전/충청/세종', '충주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);


/* 부산/대구/경상 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '거창', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '거창', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '거창', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '경주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '경주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '경주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '구미강동', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '구미강동', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '구미강동', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '대구(칠성로)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '대구(칠성로)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '대구(칠성로)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '문경', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '문경', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '문경', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '북대구(칠곡)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '북대구(칠곡)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '북대구(칠곡)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '서면', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '서면', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '서면', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '울산', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '울산', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '울산', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '진주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '진주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '진주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '해운대', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '해운대', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '해운대', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '경남대', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '경남대', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '경남대', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '구미', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '구미', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '구미', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '김천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '김천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '김천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '덕천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '덕천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '덕천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '부산극장', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '부산극장', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '부산극장', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '사천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '사천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '사천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '안동', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '안동', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '안동', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '장산', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '장산', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '장산', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '창원', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '창원', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '부산/대구/경상', '창원', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

/* 광주/전라 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '광주(충장로)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '광주(충장로)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '광주(충장로)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '목포', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '목포', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '목포', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '송천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '송천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '송천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '신대(순천)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '신대(순천)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '신대(순천)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '전대(광주)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '전대(광주)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '전대(광주)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '첨단', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '첨단', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '첨단', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '콜럼버스 하남', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '콜럼버스 하남', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '콜럼버스 하남', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '남원', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '남원', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '남원', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '목포하당(포르모)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '목포하당(포르모)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '목포하당(포르모)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '순천', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '순천', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '순천', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '여수', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '여수', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '여수', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '전주(객사)', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '전주(객사)', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '전주(객사)', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '콜럼버스 상무', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '콜럼버스 상무', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '광주/전라', '콜럼버스 상무', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

/* 강원 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '강원', '속초', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '강원', '속초', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '강원', '속초', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '강원', '원주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '강원', '원주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '강원', '원주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

/* 제주 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '제주', '제주', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '제주', '제주', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '제주', '제주', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '제주', '제주아라', '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '제주', '제주아라', '2관', '2D', 'theater_sample.jpg', 400, 20, 20, 2);
INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '제주', '제주아라', '3관', '2D', 'theater_sample.jpg', 70, 7, 10, 3);

COMMIT;

/* 참고 이전 sample
insert into gc_theater values(gc_theater_seq.nextval, '서울', '신촌', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '평택', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '보령', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '부산/대구/경상', '울산', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

commit;
*/