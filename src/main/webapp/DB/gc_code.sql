drop table gc_giftcode;
drop sequence gc_giftcode_seq;
create sequence gc_giftcode_seq;
create table gc_giftcode(
code_id number(10) not null primary key,
store_id number(10) not null,
code_name varchar2(1000 CHAR) not null,
startdate date not null,
enddate date not null
)
create table gc_store(
store_id number(10) not null primary key,
type VARCHAR2(50) not null,
title varchar2(50) not null,
subtitle varchar2(100),
content varchar2(1000),
img_file varchar2(100),
price number(10) not null
);

insert into gc_giftcode VALUES(gc_giftcode_seq.nextval,36,'gift-1234567891011121314151617181920',TO_DATE(SYSDATE,'yyyy-mm-dd'),TO_DATE(ADD_MONTHS(SYSDATE,6),'yyyy-mm-dd'));
commit;
select s.title, s.subtitle, s.content, s.img_file, s.price, g.code_name, g.startdate, g.enddate 
from gc_store s inner join gc_giftcode g
on s.store_id = g.store_id;
select * from gc_giftcode;