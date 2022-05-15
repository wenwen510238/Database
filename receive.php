<?php
    $sql = $_POST['send'];
    echo "你的查詢指令是 :</br> $sql";
    echo '</br>';

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
    $result = mysqli_query($conn,$sql);
    if(!$result){
        die($conn->error);
    }
    $result_array = [];
    echo '<table border = "2">';
    echo '<tr align="center">';
    while ($meta = mysqli_fetch_field($result)) {//擷取欄位名稱
        echo "<td> $meta->name </td>";
    }
    echo "</tr>";
    while($row=mysqli_fetch_row($result)) {//傳回資料列的筆數
        echo "<tr>";
        for($j=0; $j<mysqli_num_fields($result); $j++) {//資料的欄位數
            echo "<td>$row[$j]</td>";
        }
        echo "</tr>";
    }
    echo "</table>";
?>