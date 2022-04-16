<?php


session_start();


require_once "config.php";
if ($_SERVER['REQUEST_METHOD'] == 'POST')
{
$db = mysqli_connect('localhost', 'root', '', 'EqualDB');
$emri = mysqli_real_escape_string($db, $_POST['emri']);
$mbiemri = mysqli_real_escape_string($db, $_POST['mbiemri']);

$email = mysqli_real_escape_string($db, $_POST['email']);
$password = mysqli_real_escape_string($db, $_POST['pass']);


$sql1= "SELECT username FROM users WHERE email=? LIMIT 1";
$stmt = mysqli_prepare($db, $sql1);


// i - Integer d - Double s - String b - Blob
mysqli_stmt_bind_param($stmt, "s", $email);
mysqli_stmt_execute($stmt);
mysqli_stmt_bind_result($stmt, $EmriTest);
mysqli_stmt_fetch($stmt);
if(empty($EmriTest) && !empty($emri) && !empty($mbiemri) && !empty($email) && !empty($password)){
$sql = "INSERT INTO users (username, mbiemri, email, password) VALUES
(?, ?, ?, ?)";
$stmt = mysqli_prepare($db, $sql);
mysqli_stmt_bind_param($stmt, "ssss", $emri, $mbiemri, $email,$password);
if(mysqli_stmt_execute($stmt)){
echo "Shtimi u krye me sukses";
} else{

echo "ERROR: Nuk mund te ekzekutohej query: $sql. " . mysqli_error($db);
}
}
else if(empty($emri) || empty($mbiemri) || empty($email) || empty($password) ){
    echo "Ju lutem plotesoni te gjitha vendet bosh";
    }
    else if(!empty($EmriTest)){
        echo "Ky user ekziston tashme. Jeni te sigurt qe nuk jeni regjistruar?";
        }
}
?>