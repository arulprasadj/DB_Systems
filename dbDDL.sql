create schema online_loan;
use online_loan;
create table user (user_id varchar(10),password varchar(10) not null,constraint upk primary key(user_id));

create table admin (admin_id int(10),admin_emailid varchar(25),constraint apk primary key(admin_id));

create table customer (customer_id int(10),customer_fname varchar(10),customer_lname varchar(10),
customer_contactno int(10),customer_emailid varchar(25),
	customer_nationalid varchar(9) not null,customer_address varchar(50),constraint cpk primary key(customer_id));
    


create table account (account_number varchar(15) ,account_openingdate date not null,
account_type varchar(10) ,account_balance double(12,4) not null,customer_id int(10),
constraint apk primary key(account_number),check (account_balance > 0),
constraint acfk foreign key(customer_id) references customer(customer_id) on delete set null on update cascade);
    
create table loan (loan_id int(10),loan_requestedamount double(12,4) not null,loan_sactionedamount double(12,4),
loan_collateral varchar(10) not null,loan_date date,
customer_id int(10),admin_id int(10),loan_status varchar(10),
constraint lpk primary key(loan_id),
constraint lcfk foreign key(customer_id) references customer(customer_id) on delete set null on update cascade,
constraint lafk foreign key(Admin_id) references admin(admin_id) on delete set null on update cascade,
constraint cklo check(loan_requestedamount>0),
constraint ck2lo check(loan_sanctionedamount>0));



create table interest (interest_id varchar(10),interest_rate double(5,3) not null,emi double(10,4) not null,
loan_period varchar(10) not null,loan_balance double(12,4),loan_tobepaid double(12,4),
loan_id int(10),admin_id int(10),
constraint ipk primary key(interest_id),check(interest_rate>0),check(emi>0),
constraint ilfk foreign key(loan_id) references loan(loan_id) on delete set null on update cascade,
constraint iafk foreign key(admin_id) references admin(admin_id) on delete set null on update cascade,
check(loan_balance<=loan(loan_sanctionedamount)),
check(loan_tobepaid>=loan(loan_sanctionedamount)));

create table withdrawal_transactions(withdrawal_id varchar(10),withdrawal_amount double(12,4) not null,
withdrawal_date date,loan_id int(10),constraint wpk primary key(withdrawal_id),
constraint wlfk foreign key(loan_id) references loan(loan_id) on delete set null on update cascade,
check(withdrawal_amount<interest(loan_balance)),
check(withdrawal_date>loan(loan_date)) );

create table payoff_transactions(payoff_id varchar(10),payoff_amount double(12,4) not null,payoff_date date,loan_id int(10),
constraint ppk primary key(payoff_id),
constraint plfk foreign key(loan_id) references loan(loan_id) on delete set null on update cascade,
check(payoff_amount<=interest(loan_tobepaid)),check(payoff_date>withdrawal_transactions(withdrawal_date)) );

create view activeloans as 
select l.loan_id from loan l,withdrawal_transactions w,payoff_transactions p
 where l.loan_id=w.loan_id or l.loan_id=p.loan_id;



