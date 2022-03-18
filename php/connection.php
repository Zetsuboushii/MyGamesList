<?php
session_start();
try {
  $connection = new PDO('mysql:host=localhost;dbname=mgl', 'root', '');
  $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
  echo "Error: " . $e->getMessage();
}
$userId = $_SESSION['userid'];
$userName = $_SESSION['username'];
$userPassword = $_SESSION['userpassword'];
$userIdPad = $_SESSION['useridpadded'];
?>
