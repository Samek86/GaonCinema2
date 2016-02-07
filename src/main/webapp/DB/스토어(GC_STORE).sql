drop sequence gc_store_seq;
drop table gc_store;

create sequence gc_store_seq;
/*스토어 테이블 생성*/
create table gc_store(
store_id number(10) not null primary key,
type VARCHAR2(50) not null,
title varchar2(50) not null,
subtitle varchar2(100),
img_file varchar2(100),
price number(10) not null
);