<html lang='de'>
<head>
  <link rel="icon" href="../favicon.ico">
  <link rel='stylesheet' href='../css/main.css'>
  <title>Login - MyGamesList</title>
</head>
<body>
<!--  Database Connection  -->
<?php
//Create Connection
$connection = null;
include "connection.php";
//Gallery Entry Limit
$galleryLimit = 10;
?>
<!--  Database Connection End -->


<div class="container">
  <!--  Hotbar  -->
  <?php include "hotbar.php" ?>

  <p class="titlebar">
    Login
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <div class="mainbox" style="width: 1070px; height: 99%; overflow: hidden">
      <div style="margin-left: 20px; margin-right: 20px; text-align: center; border-top: 1px solid darkred; border-bottom: 1px solid darkred; padding: 10px; background-color: mistyrose">Erfolgreich ausgeloggt!</div>
      <?php session_destroy()?>
      <div class="loginBox">
        <form action="login.php" method="post">
          <h3>Mit bestehendem Account anmelden</h3>
          <h5>Benutzername</h5>
          <input name="username" size="16" type="text">
          <h5>Passwort</h5>
          <input name="password" size="16" type="text">
          <button name="login" type="submit">Login</button>
          <h3 style="font-size: 16px">Noch kein Acccount?</h3>
          <button name="signUp" style="margin-top: 10px; color: rebeccapurple; background-color: lavender" type="submit">Sign up</button>
        </form>

        <?php
        if ($_POST["username"] || $_POST["password"] || $_POST["submit"] || $_POST["signUp"]) {
          $usernameInput = $_POST["username"];
          $passwordInput = $_POST["password"];
          $loginBtn = $_POST["login"];

          if ($usernameInput || $passwordInput || $loginBtn) {
            $stmt = $connection->query("SELECT username, password, uNo, LPAD(uNo, 7, '0') FROM user WHERE username = '$usernameInput'");
            while ($rows = $stmt->fetch()) {
              $dbUsername = $rows[0];
              $dbPassword = $rows[1];
              $uNo = $rows[2];
              $uNoPad = $rows[3];
            }
            if ($usernameInput == $dbUsername && $passwordInput == $dbPassword) {
              $_SESSION['userid'] = $uNo;
              $_SESSION['username'] = $dbUsername;
              $_SESSION['userpassword'] = $dbPassword;
              $_SESSION['useridpadded'] = $uNoPad;

              echo '<div style="margin-left: 20px; margin-right: 20px; text-align: center; border-top: 1px solid rebeccapurple; border-bottom: 1px solid rebeccapurple; padding: 10px; background-color: lavender">Login erfolgreich</div>';
            } else {
              echo '<div style="margin-left: 20px; margin-right: 20px; text-align: center; border-top: 1px solid darkred; border-bottom: 1px solid darkred; padding: 10px; background-color: mistyrose">Benutzername oder Passwort falsch</div>';
            }
          }
        }
        ?>

      </div>
    </div>



  </div>
</div>

</body>

</html>