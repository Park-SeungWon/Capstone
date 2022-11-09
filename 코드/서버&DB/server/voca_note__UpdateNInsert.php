<?php
    error_reporting(E_ALL);
    ini_set('display_errors',1);
    include('dbcon2.php');
    $android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");

	#변수
    $table_name = "voca_note";
    $sp_name = " voca_note__UpdateNInsert ";

	$voca_note_id  = $_POST['voca_note_id'];
	$voca_unit_id = isset($_POST['voca_unit_id']) ? $_POST['voca_unit_id'] : null;
	$word_number = isset((int)$_POST['word_number']) ? $_POST['word_number'] : 0;
	$type = isset($_POST['type']) ? $_POST['type'] : null;
	$remark = isset($_POST['remark']) ? $_POST['remark'] : null;

    if( (($_SERVER['REQUEST_METHOD'] == 'POST') && isset($_POST['submit'])) || $android ) {

		try {
			#sql문 설정
			$sql = " CALL $sp_name(	'$voca_note_id',
									'$voca_unit_id',
									'$word_number',
									'$type',
									'$remark',
									'$O_data');";
			$stmt = $con->prepare($sql);
			$stmt->execute();
			
			if($stmt->execute())
			{
				$successMSG = "voca_unit_id : " $O_data + " <pre>SUCCESS</pre>";
			}
			else
			{
				$errMSG = "FAIL";
			}
		}
		catch (PDOException $e) {
			 die("Database error: " . $e->getMessage());
		}
	}  
	else {
		echo " user__UpNIn. ";
	}
?>

<?php
	if (isset($errMSG)) echo $errMSG;
	if (isset($successMSG)) echo $successMSG;
	$android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");
	if( !$android ) {
?>
	<html>
	   <body>
			<form action="<?php $_PHP_SELF ?>" method="POST">
				ID: <input type = "text" name = "user_id" />
				Password: <input type = "text" name = "password" />
				email: <input type = "text" name = "email" />
				phonenumber: <input type = "text" name = "phoneNumber" />
				usersort: <input type = "text" name = "userSort" />
				<input type = "submit" name = "submit" />
			</form>

	   </body>
	</html>
<?php
	}
?>
 