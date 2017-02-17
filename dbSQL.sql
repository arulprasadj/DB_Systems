/*1.Write a query display the customer’s account number whose loan status is requested.*/

select a.account_number from account a join customer c on c.customer_id=a.customer_id join 
loan l on a.customer_id=l.customer_id where l.loan_status='requested'
order by a.account_number;


/*2.Write a query display the customer’s name, account number who haven’t started paying the EMI amount.*/

select distinct customer_fname,account_number from customer c ,account a,loan l 
where c.customer_id=l.customer_id and c.customer_id=a.customer_id
 and l.loan_id  not in (select distinct loan_id from payoff_transactions)
 and loan_status='sanctioned' order by account_number,customer_fname;

 
 /*3.Write a query display the customer’s bank ID who got the same amount of loan as they requested*/
 
 select customer_id from  loan  where loan_requestedamount=loan_sactionedamount order by customer_id;

/*4.Write a query display the count of customers whose loan amount is 20,000 USD and above.*/
select count(customer_id) as No_of_customers from loan where loan_sactionedamount>=20000 ; 

/*5.Write a query display the customer’s name and account number who have not withdrawal theirs loan money yet.*/

select distinct customer_fname,account_number from customer c,account a ,loan l 
where c.customer_id=l.customer_id and c.customer_id=a.customer_id
and l.loan_id not in (select distinct loan_id from withdrawal_transactions) and
 loan_status='sanctioned' order by customer_fname,account_number;

/*6.	Display the loan money withdrawal by customer whose account number is ‘sxn002’.*/

select sum(withdrawal_amount) from withdrawal_transactions w,loan l,customer c,account a 
where c.customer_id=a.customer_id and c.customer_id=l.customer_id
and l.loan_id=w.loan_id and a.account_number='sxn002' group by w.loan_id  ;

/*7.Write a query display the EMI and loan repayment period whose account number is ‘bxr008’.*/

select emi,loan_period from interest i,loan l,customer c,account a 
where c.customer_id=a.customer_id and c.customer_id=l.customer_id
and l.loan_id=i.loan_id  and account_number='bxr008';

/*8.Write a query display the due amount that has to be paid by customer whose account number is ‘vxs016’.*/

select loan_tobepaid from interest i,loan l,customer c,account a 
where c.customer_id=a.customer_id and c.customer_id=l.customer_id
and l.loan_id=i.loan_id  and account_number='vxs016' order by l.loan_id;

/*9.Write a query display the withdrawal and payoff transactions of the customer whose account Number is ‘dxp004’.*/

select distinctrow l.loan_id ,withdrawal_amount,withdrawal_date,payoff_amount,payoff_date 
from withdrawal_transactions w,payoff_transactions p,customer c,account a,loan l
where w.loan_id=l.loan_id and p.loan_id=l.loan_id and l.customer_id=c.customer_id and
 c.customer_id=a.customer_id and a.account_number='dxp004' and w.loan_id=p.loan_id ;
 
 /*10.Write a query display the count of loans whose loan amount is more than average loan amount 
              given by the bank.*/

 select count(loan_id) from loan where loan_sactionedamount > (select avg(loan_sactionedamount) from loan);
 
 /*11.Write a query to dipaly the loan_id of loan which was withdrawan more than once */
 
 select l.loan_id from loan l join withdrawal_transactions w on l.loan_id=w.loan_id group by l.loan_id having count(*)>1;
 
 /*12. Write a query to dipaly the loan_id of loan  which is being paid by  more than once */
 
 select l.loan_id from loan l join payoff_transactions p on l.loan_id = p.loan_id group by l.loan_id having count(*)>1;

/*diplaying view activelons */
select distinct * from activeloans;

