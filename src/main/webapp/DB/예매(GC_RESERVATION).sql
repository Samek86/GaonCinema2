
DROP TABLE GC_RESERVATION; 
DROP SEQUENCE GC_RESERVATION_SEQ;

/* GC_RESERVATION 테이블 (영화 예매) */
CREATE TABLE GC_RESERVATION (
  RESERVATION_ID      NUMBER(10)         NOT NULL PRIMARY KEY,  --RESERVATION 고유키
  THEATER_SCHEDULE_ID NUMBER(10)         NOT NULL,              --THEATER_SCHEDULE 외래키(FK)
  CNAME               VARCHAR2(10 CHAR)  NOT NULL,
  LNAME               VARCHAR2(10 CHAR)  NOT NULL,
  TNAME               VARCHAR2(10 CHAR)  NOT NULL,
  TTYPE               VARCHAR2(10 CHAR)  NOT NULL,
  MSTARTHOUR          DATE               NOT NULL,
  MENDHOUR            DATE               NOT NULL,
  NAME_K              VARCHAR2(100 CHAR) NOT NULL,
  NAME_E              VARCHAR2(100 CHAR) NOT NULL,
  AGE                 VARCHAR2(20 CHAR)  NOT NULL,
  POSTER              VARCHAR2(30 CHAR)  NOT NULL,
  R_TIME              NUMBER(4)          NOT NULL,
  USERID              VARCHAR2(12 CHAR)  NOT NULL,              --사용자 아이디
  SEAT                VARCHAR2(50 CHAR)  NOT NULL,              --좌석 위치
  CHILDREN            NUMBER(1)          NULL,                  --청소년
  ADULT               NUMBER(1)          NULL,                  --성인
  PRICE               NUMBER(6)          NOT NULL               --총 가격
);
CREATE SEQUENCE GC_RESERVATION_SEQ;

/* GC_RESERVATION 데이터 삽입 */
INSERT INTO GC_RESERVATION VALUES 
(GC_RESERVATION_SEQ.NEXTVAL, 1, '서울', '강남', '1관', '2D', TO_DATE('2016-02-01 09:00:00', 'YYYY-MM-DD HH24:MI:SS'), 
TO_DATE('2016-02-01 11:04:00', 'YYYY-MM-DD HH24:MI:SS'), '히말라야', 'The Himalayas', '12', 'HM_poster.jpg', 124, 
'admin', 'A1', 0, 1, 9000);

COMMIT;
