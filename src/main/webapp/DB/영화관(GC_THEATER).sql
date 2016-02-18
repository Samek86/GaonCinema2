
DROP TABLE GC_THEATER; 
DROP SEQUENCE GC_THEATER_SEQ;

/* GC_THEATER 테이블 (영화관) */
CREATE TABLE GC_THEATER (
  THEATER_ID   NUMBER(10)        NOT NULL PRIMARY KEY,  --THEATER 고유키
  CNAME        VARCHAR2(10 CHAR) NOT NULL,              --도시 이름 (서울, 인천/경기)
  CORDER       NUMBER(3)         NOT NULL,              --도시 순서 (가나다 순이 아닌 서울, 인천, 경기 순서로 뿌려주도록)
  LNAME        VARCHAR2(10 CHAR) NOT NULL,              --지역 이름 (신촌, 강남, 성신)
  TNAME        VARCHAR2(10 CHAR) NOT NULL,              --영화관 이름 (1관, 2관, 3D관, 4D관)
  TTYPE        VARCHAR2(10 CHAR) NOT NULL,              --영화관 종류 (2D, 3D, 4D)
  TIMG         VARCHAR2(50 CHAR) NOT NULL,              --영화관 이미지
  SEATCOUNT    NUMBER(3)         NOT NULL,              --좌석 총 개수
  SEATROWCOUNT NUMBER(2)         NOT NULL,              --좌석 행 개수
  SEATCOLCOUNT NUMBER(2)         NOT NULL,              --좌석 열 개수
  SEATSTYLE    NUMBER(2)         NOT NULL               --스타일
);
CREATE SEQUENCE GC_THEATER_SEQ;


/* GC_THEATER 데이터 삽입 */

INSERT INTO GC_THEATER VALUES (GC_THEATER_SEQ.NEXTVAL, '서울', '신촌', 1, '1관', '2D', 'theater_sample.jpg', 90, 9, 10, 1);

COMMIT;
