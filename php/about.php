<html lang='de'>
<head>
  <link rel="icon" href="../favicon.ico">
  <link rel='stylesheet' href='../css/main.css'>
  <title>Über - MyGamesList</title>
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
    Über
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <div class="mainbox" style="width: 1070px; height: 99%; overflow: hidden">

      <br>
      <br>
      <h1 style="text-align: center">Erstelle deine persönliche Liste</h1>
      <br>
      <table style="margin: auto; text-align: center; vertical-align: top">
        <tr>
          <th style="width: 50%"><h3>Was hast du gespielt?</h3>Erstelle deine personalisierte Liste von unzählig vielen Spielen.</th>
          <th style="width: 50%"><h3>Immer auf dem neuesten Stand bleiben?</h3>Nutze deine Liste um einen effizienten Überblick über alles zu erhalten, was du bereits abschlossen hast, was du gerade spielst oder nutze weitere Status.</th>
        </tr>
      </table>
      <br>
      <h1 style="text-align: center">Entdecke mehr über deine Lieblingsspiele</h1>
      <br>
      <table style="margin: auto; text-align: center">
        <tr>
          <th style="width: 50%"><h3>Du willst mehr über deine Lieblingsspiele erfahren?</h3>Mit einer übersichtlichen und effizienten Struktur erfährst du verschiedenste Informationen über Spiele und verwandte Titel.</th>
          <th style="width: 50%"><h3>Schau was deine Freunde gespielt haben!</h3>Du kannst über den jeweiligen Link die Liste eines/einer Freundes/Freundin aufrufen und erfährst etwas über seinen/ihren Spielegeschmack.</th>
        </tr>
      </table>

      <div class="loginBox" style="border: none">
      <form action="signup.php" method="post">
        <h1 style="text-align: center">Interessiert?</h1>
        <button name="signup" type="submit">Sign Up</button>
      </form>
      </div>

    </div>


  </div>
</div>

</body>

</html>
