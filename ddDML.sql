use online_loan;
insert into user values ('u001','user1');
insert into user values ('u002','user2');
insert into user values ('u003','user3');
insert into user values ('u004','user4');
insert into user values ('u005','user5');
insert into user values ('u006','user6');
insert into user values ('u007','user8');
insert into user values ('u009','user9');
insert into user values ('u010','user10');
insert into user values ('u011','user11');
insert into user values ('u012','user12');
insert into user values ('u013','user13');
insert into user values ('u014','user14');
insert into user values ('u015','user15');
insert into user values ('u016','user16');
insert into user values ('u017','user17');
insert into user values ('u018','user18');
insert into user values ('u019','user19');
insert into user values ('u020','user20');
insert into user values ('ba10001','admin1');
insert into user values ('ba10002','admin2');
insert into user values ('ba10003','admin3');
insert into user values ('ba10004','admin4');
insert into user values ('ba10005','admin5');
insert into user values ('ba10006','admin6');
insert into user values ('ba10007','admin7');


insert into admin values (10001,'admin1@gmail.com');
insert into admin values (10002,'admin2@gmail.com');
insert into admin values (10003,'admin3@gmail.com');
insert into admin values (10004,'admin4@gmail.com');
insert into admin values (10005,'admin5@gmail.com');
insert into admin values (10006,'admin6@gmail.com');
insert into admin values (10007,'admin7@gmail.com');

insert into customer values(001,'hari','krishna',52682256,'harikrishna@gmail.com','hakr12345','105 mitchell street,arlington,TX76010');
insert into customer values(002,'sajay','noolu',0012345645,'sanjaynoolu@gmail.com','sano78945','102 mitchell street,arlington,TX76010');
insert into customer values(003,'virat','kohli',68267894,'viratkohli@gmail.com','viko10102','45 cooper street,arlington,TX76013');
insert into customer values(004,'disha','patani',6823204,'dishapatani@gmail.com','dipa75362','oxford apartments,arlington,TX76018');
insert into customer values(005,'shradha','sharma',45612352,'shradhasharma@gmail.com','shsh21234','central perk apartments,irving,TX76052');
insert into customer values(006,'yeshawanth','guna',12345675,'yeshawanth@gmail.com','yegu4565','zen apts-136,dallas,TX71230');
insert into customer values(007,'mahesh','manohar',563856256,'maheshmano@gmail.com','mama50145','121 baker street,lasvegas,N10210');
insert into customer values(008,'bhuvi','raja',123856256,'bhuviraja@gmail.com','bura78945','wayne apartments,gotham,G45602');
insert into customer values(009,'bruce','wayne',984802233,'batman@gmail.com','brwa24582','wayne apartments,gotham,G45602');
insert into customer values(010,'oliver','queen',332451789,'greenarrow@gmail.com','olqu00982','queen apartments-456,starlingcity,SC78251');
insert into customer values(011,'barry','allen',562322336,'flash@gmail.com','baal09834','flash apartments-87,central city,CC45010');
insert into customer values(012,'randal','savage',456127802,'randalsavage@gmail.com','rasa55520','chara apartments-123,central city,CC23010');
insert into customer values(013,'diana','prince',1010123456,'wonderwoman@gmail.com','dipr75194','103 wonder apts street,Themyscira,TH98456');
insert into customer values(014,'john','stewart',68256037,'greenlantern@gmail.com','jost47852','123 lantern street,newyork,Nk65823');
insert into customer values(015,'aqua','man',456523710,'aquaman@gmail.com','aqma12123','452 arthurstreet,atlantis,AT20306');
insert into customer values(016,'victor','stone',32345789,'cyborg@gmail.com','vist43241','103 star street,starling city,ST20506');
insert into customer values(017,'jonn','jonzz',88850234,'martianmanhun@gmail.com','mamh','21 aries street,,TX76010');
insert into customer values(018,'clark','kent',134102570,'superman@gmail.com','sm55620','201 polis street,metropolis,MP32145');
insert into customer values(019,'shayera','hol',565789142,'wonderman@gmail.com','shho67123','33 joseph street,central city,CC45012');
insert into customer values(020,'Ray','palmer',199419982,'atom@gmail.com','rapa85203','52 cooper street,starling city,SC78250');

insert into account values('hxk001','2010-08-29','savings',825000,001);
insert into account values('sxn002','2011-08-21','savings',225000,002);
insert into account values('vxk003','2011-07-2','savings',2000,003);
insert into account values('dxp004','2010-08-9','savings',500,004);
insert into account values('sxs005','2011-04-6','savings',56005,005);
insert into account values('yxg006','2009-01-01','current',121212,006);
insert into account values('mxm007','2019-05-05','current',128732,007);
insert into account values('bxr008','2011-12-9','savings',2000,008);
insert into account values('bxw009','2010-12-9','current',925100,009);
insert into account values('oxq010','2011-04-05','savings',3333,010);
insert into account values('bxa011','2009-04-21','savings',82000,011);
insert into account values('rxs012','2011-08-2','savings',20200,012);
insert into account values('dxp013','2010-07-01','current',545000,013);
insert into account values('jxs014','2011-08-05','current',625000,014);
insert into account values('axm015','2010-11-2','savings',35000,015);
insert into account values('vxs016','2009-02-19','savings',2000,016);
insert into account values('jxj017','2010-10-10','savings',10000,017);
insert into account values('cxk018','2011-07-13','savings',90000,018);
insert into account values('sxh019','2009-08-11','savings',35000,019);
insert into account values('rxp020','2011-08-29','savings',23000,020);

insert into loan values (90001,202020,200000,'house','2012-05-12',002,10001,'sanctioned');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90002,50000,'house','2014-07-12',003,'requested');
insert into loan values (90003,8000,5000,'car','2013-08-22',005,10002,'sanctioned');
insert into loan values (90004,50000,30000,'comapny','2013-12-28',004,10002,'sanctioned');
insert into loan values (90005,12000,12000,'house','2012-08-12',008,10002,'sanctioned');
insert into loan values (90006,1000,1000,'car','2014-09-12',009,10002,'sanctioned');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90007,50000,'house','2013-08-12',010,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90008,1500,'car','2014-03-17',013,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90009,20000,'company','2015-07-12',014,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90010,5000,'boat','2015-03-22',015,'requested');
insert into loan values (90011,10000,10000,'car','2015-09-12',016,10003,'sanctioned');
insert into loan values (90012,35000,30000,'house','2014-01-18',017,10003,'sanctioned');
insert into loan values (90013,500,500,'car','2012-03-22',018,10003,'sanctioned');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90014,5000,'boat','2015-05-22',001,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90015,6000,'house','2015-12-02',006,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90016,50000,'house','2016-05-03',007,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90017,15000,'house','2015-06-19',011,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90018,30000,'house','2015-06-08',012,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90019,9000,'car','2014-03-01',019,'requested');
insert into loan(loan_id,loan_requestedamount,loan_collateral,loan_date,customer_id,loan_status) values (90020,6000,'car','2015-06-01',012,'requested');



insert into interest values ('I0001',10,9229,'24 months',50000,221496,90001,10001);
insert into interest  values ('I0002',10,232,'24 months',0,5537,90003,10002);
insert into interest  values ('I0003',10.5,975,'24 months',10000,3391,90004,10002);
insert into interest  values ('I0004',10.5,657,'20 months',0,13133,90005,10002);
insert into interest  values ('I0005',11,206,'5 months',1000,1028,90006,10002);
insert into interest  values ('I0006',11,466,'24 months',0,1186,90011,10003);
insert into interest  values ('I0007',11,1398,'24 months' ,20000,33358,90012,10003);
insert into interest  values ('I0008',11,103,'5 months',500,514,90013,10003);

insert into withdrawal_transactions values('wt001',100000,'2014-05-08',90001);
insert into withdrawal_transactions values('wt002',50000,'2014-09-08',90001);
insert into withdrawal_transactions values('wt003',5000,'2016-05-08',90003);
insert into withdrawal_transactions values('wt004',20000,'2016-04-08',90004);
insert into withdrawal_transactions values('wt005',12000,'2015-12-08',90005);
insert into withdrawal_transactions values('wt006',10000,'2016-01-28',90011);
insert into withdrawal_transactions values('wt007',15000,'2015-06-18',90012);
insert into withdrawal_transactions values('wt008',50000,'2015-06-29',90012);


insert into payoff_transactions values ('pt001',9229,'2014-06-08',90001);
insert into payoff_transactions values ('pt002',9229,'2014-07-08',90001);
insert into payoff_transactions values ('pt003',9229,'2014-08-08',90001);
insert into payoff_transactions values ('pt004',9229,'2014-09-08',90001);
insert into payoff_transactions values ('pt005',9229,'2014-10-08',90001);
insert into payoff_transactions values ('pt006',232,'2016-06-08',90003);
insert into payoff_transactions values ('pt007',232,'2016-07-08',90003);
insert into payoff_transactions values ('pt008',232,'2016-08-08',90003);
insert into payoff_transactions values ('pt009',20000,'2016-06-08',90004);
insert into payoff_transactions values ('pt010',5000,'2016-06-08',90011);
insert into payoff_transactions values ('pt011',5000,'2016-07-08',90011);


