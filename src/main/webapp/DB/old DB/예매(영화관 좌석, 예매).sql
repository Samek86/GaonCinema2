
ALTER TABLE GC_THEATER_SEAT drop CONSTRAINT THEATER_SEAT_FK;

DROP TABLE GC_THEATER_SEAT;
DROP TABLE GC_RESERVATION; DROP SEQUENCE GC_RESERVATION_SEQ;


/* GC_THEATER_SEAT 테이블 (영화관 좌석) */
CREATE TABLE GC_THEATER_SEAT (
  THEATER_ID NUMBER(10)       NOT NULL,                                                    --GC_THEATER 테이블로 외래키 적용  
  SEAT       VARCHAR2(3 CHAR) NOT NULL,                                                    --좌석 위치 (A01, B02, C03)
  ISRESERVED VARCHAR2(5 CHAR) NOT NULL CHECK(ISRESERVED = 'TRUE' OR ISRESERVED = 'FALSE')  --예약 여부
);


ALTER TABLE GC_THEATER_SEAT ADD CONSTRAINT THEATER_SEAT_FK FOREIGN KEY (THEATER_ID) REFERENCES GC_THEATER(THEATER_ID) ON DELETE CASCADE;


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