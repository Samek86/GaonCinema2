
DROP TABLE GC_RESERVATION; 
DROP SEQUENCE GC_RESERVATION_SEQ;

/* GC_RESERVATION 테이블 (영화 예매) */
CREATE TABLE GC_RESERVATION (
  RESERVATION_ID      NUMBER(10)        NOT NULL PRIMARY KEY,  --RESERVATION 고유키
  MOVIE_ID            NUMBER(10)        NOT NULL,              --MOVIE 고유키(FK)
  THEATER_ID          NUMBER(10)        NOT NULL,              --THEATER 고유키(FK)
  THEATER_SCHEDULE_ID NUMBER(10)        NOT NULL,              --THEATER_SCHEDULE 고유키(FK)
  USERID              VARCHAR2(12 CHAR) NOT NULL,              --사용자 아이디
  SEAT                VARCHAR2(50 CHAR) NOT NULL,              --좌석 위치
  CHILDREN            NUMBER(1)         NULL,                  --청소년
  ADULT               NUMBER(1)         NULL,                  --성인
  PRICE               NUMBER(6)         NOT NULL               --총 가격
);

CREATE SEQUENCE GC_RESERVATION_SEQ;

/* GC_RESERVATION 데이터 삽입 */
INSERT INTO GC_RESERVATION VALUES (GC_RESERVATION_SEQ.NEXTVAL, 1, 1, 1, 'admin', 'A1', 0, 1, 9000);

COMMIT;
