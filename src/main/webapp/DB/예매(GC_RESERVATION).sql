

DROP TABLE GC_RESERVATION; 
DROP SEQUENCE GC_RESERVATION_SEQ;

/* GC_RESERVATION 테이블 (영화 예매) */
CREATE TABLE GC_RESERVATION (
  RESERVATION_ID NUMBER(10)        NOT NULL PRIMARY KEY,  --RESERVATION 고유키
  USERID         VARCHAR2(12 CHAR) NOT NULL,              --사용자 아이디
  CNAME          VARCHAR2(10 CHAR) NOT NULL,              --도시 이름
  LNAME          VARCHAR2(10 CHAR) NOT NULL,              --지역 이름
  TNAME          VARCHAR2(10 CHAR) NOT NULL,              --영화관 이름
  TTYPE          VARCHAR2(10 CHAR) NOT NULL,              --영화관 종류
  SEAT           VARCHAR2(50 CHAR) NOT NULL,              --좌석 위치
  MNAME          VARCHAR2(30 CHAR) NOT NULL,              --영화 이름
  MSTARTHOUR     DATE              NOT NULL,              --영화 시작 시간
  MENDHOUR       DATE              NOT NULL,              --영화 종료 시간
  CHILDREN       NUMBER(1)         NULL,                  --청소년
  ADULT          NUMBER(1)         NULL,                  --성인
  PRICE          NUMBER(6)         NOT NULL               --총 가격
);

CREATE SEQUENCE GC_RESERVATION_SEQ;

COMMIT;