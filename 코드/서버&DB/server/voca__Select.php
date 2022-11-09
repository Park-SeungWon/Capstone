<?php
    error_reporting(E_ALL);
    ini_set('display_errors',1);
    include('dbcon2.php');
    $android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");

    #변수
    $table_name = "voca";
    $sp_name = " voca__Select ";
 	$voca_note_id = isset($_POST['voca_note_id']) ? $_POST['voca_note_id'] : '';
 	$data = isset($_POST['ID']) ? $_POST['ID'] : '';
	//$I_where = " WHERE /*voca_note_id = 'voca_note_id' AND*/ word like '%$data%' ";
	$I_where = " WHERE word like '%$data%' ";
	
	function FillData(&$data, $row) {
    	array_push(
			$data,
			array(
				'voca_note_id'=>$row["voca_note_id"],
				'word'=>$row["word"],
				'mean'=>$row["mean"],
				'word_class'=>$row["word_class"],
				'overlapping_number'=>$row["overlapping_number"],
				'importance_level'=>$row["importance_level"],
				'sentences_example'=>$row["sentences_example"],
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
 