<html>
    <head>
        <title>Db homework</title>
    </head>
    <body>
        <form method="post" action="receive.php">
            <p style="display: inline;" ><b>input query</b></p></br>
            <textarea name="send"></textarea>
            <input type="submit" value="送出">
            <br/>
        </form>
<?php
    $server_name = 'localhost';
	$username = 'root';
	$password = 'wenwen510238';
	$db_name = 'db_homework';
	
	$conn = mysqli_connect($server_name, $username, $password, $db_name);
	if($conn){
		//echo 'connect success';
	}
    else{
        die('資料庫連線錯誤:' . $conn->connect_error);
    }
	$flag=mysqli_select_db($conn,'DB_homework');
	if(!$flag){
		echo 'database is not available';
	}
	mysqli_query($conn,"SET NAMES UTF8");
	mysqli_query($conn,'SET time_zone = "+8:00"'); 
?>
    </body>
</html>

	