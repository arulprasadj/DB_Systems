<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
</head>

<style>
h1{
text-align:center; 

}
#ud2{
    border: 1px solid black;
	background-color: #f1f1c1
}
</style>



<body >
<div class="container" id="ud1">
<form action="user.php#ud2" method="POST">
<h1>LOAN MANAGEMENT SYSTEM</h1>
<p> QUERY 6: </p>
<p> English query : Display the loan money withdrawal by customer whose account number is #account_number.</p>
<p> SQL : select sum(withdrawal_amount) from withdrawal_transactions w,loan l,customer c,account a 
where c.customer_id=a.customer_id and c.customer_id=l.customer_id
and l.loan_id=w.loan_id and a.account_number=#account_number group by w.loan_id  ;</p>
<input type ="text" name="q6txt" ></input>
<button  value="Query6" name="q6">query6</button>

<p> QUERY 7: </p>
<p> English query : Write a query display the EMI and loan repayment period whose account number is #account_number.</p>
<p> SQL : select emi,loan_period from interest i,loan l,customer c,account a 
where c.customer_id=a.customer_id and c.customer_id=l.customer_id
and l.loan_id=i.loan_id  and account_number= #account_number ;</p>
<input type ="text" name="q7txt" ></input>
<button  value="Query7" name="q7">query7</button>


<p> QUERY 8: </p>
<p> English query : Write a query display the due amount that has to be paid by customer whose account number is #account_number.</p>
<p> SQL : select loan_tobepaid from interest i,loan l,customer c,account a 
where c.customer_id=a.customer_id and c.customer_id=l.customer_id
and l.loan_id=i.loan_id  and account_number=#account_number order by l.loan_id</p>
<input type ="text" name="q8txt" ></input>
<input type="radio" name="q8radioasc">Ascending order</input>
<input type="radio" name="q8radiodes">Descending order</input><br>
<button  value="Query8" name="q8">query8</button>

<p> QUERY 9: </p>
<p> English query : Write a query display the withdrawal and payoff transactions of the customer whose account Number is #account_number.</p>
<p> SQL : select distinctrow l.loan_id ,withdrawal_amount,withdrawal_date,payoff_amount,payoff_date 
from withdrawal_transactions w,payoff_transactions p,customer c,account a,loan l
where w.loan_id=l.loan_id and p.loan_id=l.loan_id and l.customer_id=c.customer_id and
 c.customer_id=a.customer_id and a.account_number=#account_number and w.loan_id=p.loan_id</p>
<input type ="text" name="q9txt" ></input>
<button  value="Query9" name="q9">query9</button>

<p> QUERY 10: </p>
<p> English query : Write a query display the count of loans whose loan amount is more than average loan amount 
              given by the bank.</p>
<p> SQL : select count(loan_id) from loan where loan_sactionedamount > (select avg(loan_sactionedamount) from loan</p>
<button  value="Query10" name="q10">query10</button>

<p> QUERY 11: </p>
<p> English query : Write a query to dipaly the loan_id of loan which was withdrawan more than once.</p>
<p> SQL :  select l.loan_id from loan l join withdrawal_transactions w on l.loan_id=w.loan_id group by l.loan_id having count(*)>1</p>
<button  value="Query11" name="q11">query11</button>

<p> QUERY 12: </p>
<p> English query :  Write a query to dipaly the loan_id of loan  which is being paid by  more than once .</p>
<p> SQL :  select l.loan_id from loan l join payoff_transactions p on l.loan_id = p.loan_id group by l.loan_id having count(*)>1</p>
<button  value="Query12" name="q12">query12</button>

<p> QUERY 13: </p>
<p > English query : diplaying view activelons.</p>
<p > SQL :  select distinct * from activeloans;</p>
 <button class="btn btn-default"  type ="submit" value="Query13" name="q13">query13</button> 
<p> </p>

<div style="height:250px;  width:800px; overflow:scroll;"id="ud2">
<?php
//header('Location:default.php#d2');

$servername = "localhost";
$username = "root";
$password = "";
$conn = new mysqli($servername, $username, $password,'online_loan');
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
//echo "Connected successfully <br>";

if(isset($_POST['q6']) && isset($_POST['q6txt'])  )
{
		$q6accno= $_POST['q6txt'];
		$sql6 = "select sum(withdrawal_amount) as Withdrawal_sum from withdrawal_transactions w,loan l,customer c,account a 
					where c.customer_id=a.customer_id and c.customer_id=l.customer_id
					and l.loan_id=w.loan_id and a.account_number='$q6accno' group by w.loan_id  ";

		$result6	= $conn -> query($sql6);
    
		while($tuple6= $result6-> fetch_assoc())
	    {
			echo " ".$tuple6["Withdrawal_sum"]. "<br>";
		}

	
}
if(isset($_POST['q7']) && isset($_POST['q7txt'])  )
{
		$q7accno= $_POST['q7txt'];
		$sql7 = "select emi,loan_period from interest i,loan l,customer c,account a 
					where c.customer_id=a.customer_id and c.customer_id=l.customer_id
						and l.loan_id=i.loan_id  and account_number='$q7accno'  ";

		$result7	= $conn -> query($sql7);
    
		while($tuple7= $result7-> fetch_assoc())
	    {
			echo " ".$tuple7["emi"]." ".$tuple7["loan_period"]. "<br>";
		}

	
}
if(isset($_POST['q8'])&& isset($_POST['q7txt']))
{

	if(isset($_POST['q8radioasc']))
	{
		$q7accno= $_POST['q7txt'];

	$sql8 = "select loan_tobepaid from interest i,loan l,customer c,account a 
			where c.customer_id=a.customer_id and c.customer_id=l.customer_id
				and l.loan_id=i.loan_id  and account_number='vxs016' order by l.loan_id";

	$result8	= $conn -> query($sql8);
    
	while($tuple8= $result8-> fetch_assoc())
	    {
			echo " ".$tuple8["loan_tobepaid"]. "<br>";
		}
	}
	if(isset($_POST['q8radiodes']) && isset($_POST['q7txt']))
	{
				$q7accno= $_POST['q7txt'];
	$sql8a = "select loan_tobepaid from interest i,loan l,customer c,account a 
					where c.customer_id=a.customer_id and c.customer_id=l.customer_id
				and l.loan_id=i.loan_id  and account_number='vxs016' order by l.loan_id DESC";

	$result8a	= $conn -> query($sql8a);
    
	while($tuple8a= $result8a-> fetch_assoc())
	    {
			echo " ".$tuple8a["loan_tobepaid"]. "<br>";
		}
	}
	
}
if(isset($_POST['q9']) && isset($_POST['q9txt'])  )
{
		$q9accno= $_POST['q9txt'];
		$sql9 = "select distinctrow l.loan_id ,withdrawal_amount,withdrawal_date,payoff_amount,payoff_date 
					from withdrawal_transactions w,payoff_transactions p,customer c,account a,loan l
					where w.loan_id=l.loan_id and p.loan_id=l.loan_id and l.customer_id=c.customer_id and
					c.customer_id=a.customer_id and a.account_number='$q9accno' and w.loan_id=p.loan_id ";

		$result9	= $conn -> query($sql9);
    
		while($tuple9= $result9-> fetch_assoc())
	    {
			echo " ".$tuple9["loan_id"]." ".$tuple9["withdrawal_amount"]." ".$tuple9["withdrawal_date"]." ".$tuple9["payoff_amount"]." ".$tuple9["payoff_date"]. "<br>";
		}

	
}
if(isset($_POST['q10'])   )
{
	
		$sql10 = "select count(loan_id) as count from loan where loan_sactionedamount > (select avg(loan_sactionedamount) from loan)";

		$result10	= $conn -> query($sql10);
    
		while($tuple10= $result10-> fetch_assoc())
	    {
			echo " ".$tuple10["count"]. "<br>";
		}

	
}
if(isset($_POST['q11'])   )
{
	
		$sql11 = " select l.loan_id  from loan l join withdrawal_transactions w on l.loan_id=w.loan_id group by l.loan_id having count(*)>1";

		$result11	= $conn -> query($sql11);
    
		while($tuple11= $result11-> fetch_assoc())
	    {
			echo " " .$tuple11["loan_id"]. "<br>";
		}

	
}
if(isset($_POST['q12'])   )
{
	
		$sql12 = "  select l.loan_id from loan l join payoff_transactions p on l.loan_id = p.loan_id group by l.loan_id having count(*)>1";

		$result12	= $conn -> query($sql12);
    
		while($tuple12= $result12-> fetch_assoc())
	    {
			echo " " .$tuple12["loan_id"]. "<br>";
		}

	
}
if(isset($_POST['q13'])   )
{
	
		$sql13 = " select distinct * from activeloans;";

		$result13	= $conn -> query($sql13);
    
		while($tuple13= $result13-> fetch_assoc())
	    {
			echo " " .$tuple13["loan_id"]. "<br>";
		}

	
}


mysqli_close($conn);


?>
</div>	

</form>
</div>

</body>



</html>