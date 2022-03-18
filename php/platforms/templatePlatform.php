<?php
$connection = null;
include "../connection.php";
$galleryLimit = 10;

$stmt = $connection->query("SELECT name, alias, releaseDate, consoleType, manufacturer, developer, predecessor, successor, media, generation, millUnitsSold, imgLogo, imgPhoto, synopsis FROM platform WHERE pNo = $platNumber");
while ($rows = $stmt->fetch()) {
  $name = $rows[0];

  $aliasRaw = $rows[1];
  if ($alias) {
    $alias = explode("^", $aliasRaw);
  }

  $releaseDateRaw = $rows[2];
  $releaseDate = explode("-", $releaseDateRaw);

  $consoleTypeNo = $rows[3];
  $stmt = $connection->query("SELECT description FROM consoletype WHERE ctNo = $consoleTypeNo");
  while ($iRows = $stmt->fetch()) {
    $consoleType = $iRows[0];
  }

  $manufacturerNo = $rows[4];
  $stmt = $connection->query("SELECT name FROM publisher WHERE pubNo = $manufacturerNo");
  while ($iRows = $stmt->fetch()) {
    $manufacturer = $iRows[0];
  }

  $developerNo = $rows[5];
  $stmt = $connection->query("SELECT name FROM developer WHERE devNo = $developerNo");
  while ($iRows = $stmt->fetch()) {
    $developer = $iRows[0];
  }

  $predecessorNo = $rows[6];
  if ($predecessorNo) {
    $stmt = $connection->query("SELECT name, pagePath FROM platform WHERE pNo = $predecessorNo");
    while ($iRows = $stmt->fetch()) {
      $predecessor = $iRows[0];
      $predecessorPath = $iRows[1];
    }
  }

  $successorNo = $rows[7];
  if ($successorNo) {
    $stmt = $connection->query("SELECT name, pagePath FROM platform WHERE pNo = $successorNo");
    while ($iRows = $stmt->fetch()) {
      $successor = $iRows[0];
      $successorPath = $iRows[1];
    }
  }

  $media = $rows[8];
  $generation = $rows[9];

  $millUnitsSold = $rows[10];

  $imgLogo = $rows[11];
  $imgPhoto = $rows[12];
  $synopsis = $rows[13];
}
?>

<html lang='de'>
<head>
  <link rel="icon" href="../../favicon.ico">
  <link rel='stylesheet' href='../../css/main.css'>
  <link rel='stylesheet' href='../../css/gamePage.css'>
  <title><?php echo "$name" ?></title>
</head>
<body>

<div class="container">
  <!--  Hotbar  -->
  <?php include "platformPageHotbar.php" ?>

  <p class="titlebar">
    <?php echo "$name" ?>
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <div class='leftbox'>
      <div style="width: 300px; height: auto; border-bottom: 1px solid gray">
        <img alt="<?php echo "$name Logo" ?>" src="../<?php echo "$imgLogo" ?>">
        <img alt="<?php echo "$name Foto" ?>" src="../<?php echo "$imgPhoto" ?>">
      </div>

      <div>
        <h4>Andere Namen:</h4>
        <ul>
          <!--Synonyms-->
          <?php
          if ($alias) {
            echo "
            <li>
            Synonyme:
              <ul style='list-style-type: square'>
                ";
            for ($i = 0; $i < count($alias); $i++) {
              echo "
              <li>
                $alias[$i]
              </li>
              ";
            }
            echo "
              </ul>
            </li>
            ";
          }
          ?>
        </ul>

        <h4>Weitere Informationen:</h4>
        <ul>
          <li>
            Datum der Ersterscheinung:
            <ul style="list-style-type: square">
              <li><?php echo "$releaseDate[2].$releaseDate[1].$releaseDate[0]" ?></li>
            </ul>
          </li>
          <li>
            Konsolentyp:
            <ul style="list-style-type: square">
              <li style="text-transform: capitalize"><?php echo "$consoleType" ?></li>
            </ul>
          </li>
          <li>
            Hersteller:
            <ul style="list-style-type: square">
              <li style="text-transform: capitalize"><?php echo "$manufacturer" ?></li>
            </ul>
          </li>
          <?php
          if ($developer) {
            echo "
            <li>
            Entwickler:
            <ul style='list-style-type: square'>
              <li style='text-transform: capitalize'>$developer</li>
            </ul>
            </li>
            ";
          }
          ?>
          <li>
            Speichermedium:
            <ul style="list-style-type: square">
              <li style="text-transform: capitalize"><?php echo "$media" ?></li>
            </ul>
          </li>
          <li>
            Generation:
            <ul style="list-style-type: square">
              <li style="text-transform: capitalize"><?php echo "$generation" ?>. Konsolengeneration</li>
            </ul>
          </li>
          <li>
            Verkaufte Einheiten weltweit:
            <ul style="list-style-type: square">
              <li style="text-transform: capitalize"><?php echo "$millUnitsSold" ?> Millionen</li>
            </ul>
          </li>
        </ul>
      </div>

    </div>

    <div class='rightbox'>
      <div class='scoreBox' style="width: 200px">
        <div class='rankBox'>
          <?php
          if (strtotime($releaseDateRaw) < strtotime(date('Y-m-d'))) {
            $stmt = $connection->query("SELECT RANK() OVER (ORDER BY millUnitsSold DESC) FROM platform WHERE releaseDate < NOW() ORDER BY FIELD(pNo, $platNumber) DESC LIMIT 1");
            while ($rankRow = $stmt->fetch()) {
              $rank = $rankRow[0];
            }
          } else {
            $rank = '----';
          }
          ?>
          <h4>Ranking</h4>
          <h3># <?php echo "$rank" ?></h3>
        </div>
      </div>
      <div class='synopsisBox'>
        <h4>Zusammenfassung:</h4>
        <ul style="list-style-type: none; text-align: justify; padding: 0 60px 20px 20px;">
          <li>
            <?php echo "$synopsis" ?>
          </li>
        </ul>

        <?php
        if ($predecessor || $successor) {
          echo "
          <h4>Verwandte Konsolen:</h4>
          <table style='text-align: left; margin-left: 20px'>";
          if ($predecessor) {
            echo "
            <tr><th>Vorgängerkonsole:</th><th style='font-weight: normal'><a href='../platforms/$predecessorPath'>$predecessor</a></th></tr>
            ";
          }
          if ($successor) {
            echo "
            <tr><th>Nachfolgekonsole:</th><th style='font-weight: normal'><a href='../platforms/$successorPath'>$successor</a></th></tr>
            ";
          }
          echo "</table>";
        }
        ?>

      </div>
    </div>

  </div>

</div>

</body>

</html>
