<html lang='de'>
<head>
  <link rel="icon" href="../favicon.ico">
  <link rel='stylesheet' href='../css/main.css'>
  <title>FAQ - MyGamesList</title>
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
    FAQ
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <div class="mainbox" style="width: 1070px; height: 99%; overflow: hidden">

      <div class="faq" style="margin-left: 10px">
      <h3>F: Wie kann ich mich anmelden?</h3>
      <ul>
        <li>Klicken Sie oben rechts auf der Seite auf den "Login"-Knopf.</li>
      </ul>
      <h3>F: Wie kann ich mich ausloggen?</h3>
      <ul>
        <li>Klicken Sie, wenn Sie angemeldet sind, oben rechts auf der Seite auf den "Login"-Knopf.</li>
      </ul>
      <h3>F: Wie kann ich eine Liste erstellen?</h3>
      <ul>
        <li>Beim Anlegen eines Nutzerkontos wird automatisch eine Liste für Sie erstellt, die Sie jederzeit oben rechts auf den "...'s Liste"-Knopf.
        Sollte keine Liste für Sie erstellt worden sein, melden Sie sich beim Administrator.</li>
      </ul>
      <h3>F: Wieso ist ein Spiel, das ich suche, nicht verfügbar?</h3>
      <ul>
        <li>Diese Website ist ein Ein-Mann-Projekt. Datensätze anzulegen kostest sehr, SEHR viel Zeit, die ich ab einem bestimmten Punkt nicht mehr aufbringen kann. Ich bitte um Verständnis.</li>
      </ul>
      <h3>F: Wie kann ich ein Spiel zu meiner Liste hinzufügen?</h3>
      <ul>
        <li>Klicken Sie auf dem Eintrag eines Spieles "Zur Liste hinzufügen"-Knopf.</li>
      </ul>
      </div>

    </div>


  </div>
</div>

</body>

</html>
