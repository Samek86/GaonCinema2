
DROP TABLE GC_EVENT; 
DROP SEQUENCE GC_EVENT_SEQ;

/* GC_EVENT 테이블 (이벤트) !수정 필요! */
CREATE TABLE GC_EVENT (
  EVENT_ID NUMBER(10)          NOT NULL PRIMARY KEY,  --EVENT 고유키
  TITLE    VARCHAR2(30 CHAR)   NOT NULL,              --제목
  CONTENTS VARCHAR2(3000 CHAR) NOT NULL,              --내용
  POSTER   VARCHAR2(100 CHAR)  NOT NULL,              --포스터
  WDATE    DATE                NOT NULL,              --작성일
  Start	   DATE				   NOT NULL,              --시작일
  END	   DATE				   NOT NULL,              --종료일
);

CREATE SEQUENCE GC_EVENT_SEQ;

COMMIT;