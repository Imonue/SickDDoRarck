create table customer
(
cusid varchar(20) primary key not null,
cuspw varchar(70),
cusname varchar(20),
cusphone varchar(20)
);

create table store
(
stoid varchar(20) primary key not null,
stopw varchar(40),
stoname varchar(20),
stophone varchar(20),
stotel varchar(20),
stotype varchar(20),
stoaddr varchar(200),
stolati float(13,10),
stolongi float(13,10),
stomaxtable int(3),
stocurtable int(3) default 0
);

create table reservation
(
resid varchar(20) primary key not null,
cusid varchar(20),
stoid varchar(20),
resdate datetime,
cuscount int(3),
foreign key (cusid) references customer (cusid),
foreign key (stoid) references store (stoid)
);

create table reservation_com
(
res_com_id varchar(20) primary key not null,
cus_com_id varchar(20),
sto_com_id varchar(20),
res_com_date datetime,
cus_com_count int(3)
);