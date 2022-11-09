<?php
    error_reporting(E_ALL);
    ini_set('display_errors',1);
    include('dbcon2.php');
    $android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");

    #변수
    $table_name = "textbook";
    $sp_name = " textbook__Select ";
 	$data = isset($_POST['ID']) ? $_POST['ID'] : '';
	$I_where = " WHERE title like '%$data%' ";
	
	function FillData(&$data, $row) {
    	array_push(
			$data,
			array(
				'textbook_id'=>$row["textbook_id"],
				'title'=>$row["title"],
				'publishing_date'=>$row["publishing_date"],
				'company_name'=>$row["company_name"],
				'school'=>$row["school"],
				'grade'=>$row["grade"],
				'word_number'=>$row["word_number"],
				'status'=>$row["status"],
				'remark'=>$row["remark"],
			)
		);
		return $data;
    }

    #실행
	if ($I_where != null) {
	
		#sql문 설정
		$sql = " CALL $sp_name(\"$I_where\"); ";
    	$stmt = $con->prepare($sql);
		$stmt->execute();
	
		if ($stmt->rowCount() == 0){
		  echo "'";
		  echo $data;
		  echo "' not found.";
		}
		else {
			$data = array();
			while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
				extract($row);
				
				FillData($data, $row);
				
			}
			if (!$android) {
				echo "<pre>";
				print_r($data);
				echo '</pre>';
			}
			else {
				header('Content-Type: application/json; charset=utf8');
    			$json = json_encode(array($table_name => $data), JSON_PRETTY_PRINT + JSON_UNESCAPED_UNICODE);
    			echo $json;
			}
		}
	}
	else {
		echo " login. ";
	}
 
 
?>
 
<?php
$android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");
if (!$android){
?>
 
<html>
   <body>
 
      <form action="<?php $_PHP_SELF ?>" method="POST">
         ID: <input type = "text" name = "ID" />
         <input type = "submit" />
      </form>
 
   </body>
</html>
<?php
}
?>
 