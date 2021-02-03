
create database snp122
create Table train(train_id,int primary key,train_name varchar(50),
                  source_location varchar(50),destination_location varchar(50),
                  departure Date,departure Time)

insert into train values(1,'train_1','khagaria','jamshedpur','03-04-2020','5:20:00 PM')
insert into train values(2,'train_2','khagaria','patna','10-05-2020','6:20:00 AM')
insert into train values(3,'train_3','khagaria','saharsa','06-07-2020','5:50:00 PM')
insert into train values(4,'train_4','khagaria','delhi','13-08-2020','9:20:00 AM')

select *
from train

create Table passenger(train_id int Foreign key references train(train_id),
                      passenger_id varchar(50) primary key,
                      p_name varchar(50),seat_no varchar(50),
                      ticket_no varchar(50),Fare int)

select *
from passenger

insert into passenger values(1,'p1','shashi','s1','t1',500)
insert into passenger values(2,'p2','nandan','s2','t2',400)
insert into passenger values(3,'p3','raj','s8','t3',300)
insert into passenger values(4,'p4','ramesh','s4','t4',550)
insert into passenger values(5,'p5','teja','s2','t5',570)
insert into passenger values(6,'p6','amar','s9','t6',340)

select train_name from train where departure Time between '3:00:00 PM' and '6:00:00 PM' and departure Date between '03-03-2020' and '03-05-2020'

select train_id,fare from passenger where fare>200 and fare<600 order by Fare desc