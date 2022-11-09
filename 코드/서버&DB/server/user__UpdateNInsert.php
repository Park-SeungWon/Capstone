<?php
    error_reporting(E_ALL);
    ini_set('display_errors',1);
    include('dbcon2.php');
    $android = strpos($_SERVER['HTTP_USER_AGENT'], "Android");

	#변수
    $table_name = "user";
    $sp_name = " user__UpdateNInsert ";

	$user_id = $_POST['user_id'];
	$password = $_POST['password'];
	$authority_level = isset($_POST['$authority_level']) ? $_POST['authority_level'] : null;
	$name = isset($_POST['name']) ? $_POST['name'] : null;
	$email = isset($_POST['email']) ? $_POST['email'] : null;
	$status = isset($_POST['status']) ? (int)$_POST['status'] : 0;
	$remark = isset($_POST['remark']) ? $_POST['remark'] : null;

    if( (($_SERVER['REQUEST_METHOD'] == 'POST') && isset($_POST['submit'])) || $android ) {
		
		if(empty($user_id)){
            $errMSG = "empty ID";
        }
		if(empty($password)){
        	$errMSG = "empty password";
        }
		
		try {
			#sql문 설정
			$sql = " CALL $sp_name(	'$user_id',
									'$password',
									'$authority_level',
									'$name',
									'$email',
									'$status',
									'$remark');";
			$stmt = $con->prepare($sql);
			$stmt->execute();
			
			if($stmt->execute())
			{
				$successMSG = "SUCCESS";
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
				status: <input type = "text" name = "status" />
				phonenumber: <input type = "text" name = "phoneNumber" />
				usersort: <input type = "text" name = "userSort" />
				<input type = "submit" name = "submit" />
			</form>

	   </body>
	</html>
<?php
	}
?>
 