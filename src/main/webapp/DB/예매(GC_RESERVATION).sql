

DROP TABLE GC_RESERVATION; 
DROP SEQUENCE GC_RESERVATION_SEQ;

/* GC_RESERVATION 테이블 (영화 예매) */
CREATE TABLE GC_RESERVATION (
  RESERVATION_ID NUMBER(10)        NOT NULL PRIMARY KEY,  --RESERVATION 고유키
  USERID         VARCHAR2(12 CHAR) NOT NULL,              --사용자 아이디
  LNAME          VARCHAR2(10 CHAR) NOT NULL,              --지역 이름
  TNAME          VARCHAR2(10 CHAR) NOT NULL,              --영화관 이름
  SEAT           VARCHAR2(3 CHAR)  NOT NULL,              --좌석 위치
  MNAME          VARCHAR2(30 CHAR) NOT NULL,              --영화 이름
  MSTART         DATE              NOT NULL,              --영화 시작 시간
  MEND           DATE              NOT NULL,              --영화 종료 시간
  MPRICE         NUMBER(5)         NOT NULL               --영화 가격
);

CREATE SEQUENCE GC_RESERVATION_SEQ;

COMMIT;