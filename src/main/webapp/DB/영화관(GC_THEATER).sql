
DROP TABLE GC_THEATER; 
DROP SEQUENCE GC_THEATER_SEQ;

/* GC_THEATER 테이블 (영화관) */
CREATE TABLE GC_THEATER (
  THEATER_ID NUMBER(10)        NOT NULL PRIMARY KEY,  --THEATER 고유키
  CNAME      VARCHAR2(10 CHAR) NOT NULL,              --도시 이름 (서울, 인천/경기)
  LNAME      VARCHAR2(10 CHAR) NOT NULL,              --지역 이름 (신촌, 강남, 성신)
  TNAME      VARCHAR2(10 CHAR) NOT NULL,              --영화관 이름 (1관, 2관, 3D관, 4D관)
  TTYPE      VARCHAR2(10 CHAR) NOT NULL,              --영화관 종류 (일반, 3D, 4D)
  SEATCOUNT  NUMBER(3)         NOT NULL,              --좌석 개수
  MNAME      VARCHAR2(30 CHAR) NOT NULL,              --영화 이름
  MSTARTHOUR DATE              NOT NULL,              --영화 상영 시작시간
  MENDHOUR   DATE              NOT NULL,              --영화 상영 종료시간
  PRICE      NUMBER(5)         NOT NULL               --가격
);
CREATE SEQUENCE GC_THEATER_SEQ;


/* GC_THEATER 데이터 삽입 */
insert into gc_theater values(gc_theater_seq.nextval, '서울', '신촌', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '신촌', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '신촌', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '강남', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '강남', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '강남', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '수유', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '수유', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '서울', '수유', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '일산', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '일산', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '일산', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '수원', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '수원', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '수원', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '평택', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '평택', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '인천/경기', '평택', '3관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '보령', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '보령', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '천안', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '천안', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '대전', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '대전/충청/세종', '대전', '2관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '부산/대구/경상', '대구', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '부산/대구/경상', '해운대', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

insert into gc_theater values(gc_theater_seq.nextval, '부산/대구/경상', '울산', '1관', '일반', 100, '쿵푸팬더3', 
to_date('2016-02-03 12:00:00', 'yyyy-mm-dd hh24:mi:ss'), to_date('2016-02-03 14:00:00', 'yyyy-mm-dd hh24:mi:ss'), 10000);

commit;
