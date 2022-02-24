<?php
//Create Connection
$gameNumber = 1;
$connection = null;
include "../connection.php";
//Gallery Entry Limit
$galleryLimit = 10;

$stmt = $connection->query("SELECT title, imgCover, synTitle, orgTitle, orgPlatform, releaseDate, refSeries FROM game WHERE gNo = $gameNumber");
while ($rows = $stmt->fetch()) {
  $title = $rows[0];
  $imgCover = $rows[1];
  $synTitlesRaw = $rows[2];
  $synTitles = explode("^", $synTitlesRaw);
  $orgTitle = $rows[3];

  $orgPlatformNo = $rows[4];
  $stmt = $connection->query("SELECT p.name, p.pagePath FROM platform p WHERE p.pNo = $orgPlatformNo");
  while ($iRows = $stmt->fetch()) {
    $orgPlatform = $iRows[0];
    $orgPlatformPath = $iRows[1];
  }

  $stmt = $connection->query("SELECT refPlatform FROM port WHERE refGame = $gameNumber");
  while ($jRows = $stmt->fetch()) {
    $checkPort = $jRows[0];
  }

  $releaseDateRaw = $rows[5];
  $releaseDate = explode("-", $releaseDateRaw);

  $seriesNo = $rows[6];
  $stmt = $connection->query("SELECT name FROM series WHERE sNo = $seriesNo");
  while ($kRows = $stmt->fetch()) {
    $series = $kRows[0];
  }
}
?>

<html lang='de'>
<head>
  <link rel='stylesheet' href='../../css/main.css'>
  <link rel='stylesheet' href='../../css/gamePage.css'>
  <title><?php echo "$title" ?></title>
</head>
<body>

<div class="container">
  <!--  Header  -->
  <div class="logo">
    <a href="../home.php">
      <img src="../../img/logo.png" width="393">
    </a>
  </div>
  <!--  Header End  -->

  <!--  Hotbar  -->
  <?php include "gamePageHotbar.html" ?>

  <p class="titlebar">
    <?php echo "$title" ?>
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">


    <div class='leftbox'>
      <div style="width: 300px; height: auto; border-bottom: 1px solid gray">
        <img src="../<?php echo "$imgCover" ?>">
      </div>

      <div>
        <h4>Andere Namen:</h4>
        <ul>
          <!--Synonyms-->
          <?php
          if ($synTitles) {
            echo "
            <li>
            Synonyme:
              <ul style='list-style-type: square'>
                ";
            for ($i = 0; $i < count($synTitles); $i++) {
              echo "
              <li>
                $synTitles[$i]
              </li>
              ";
            }
            echo "
              </ul>
            </li>
            ";
          }
          ?>
          <!--OrgTitle-->
          <?php
          if ($orgTitle) {
            echo "
            <li>
            Originaltitel:
              <ul style='list-style-type: square'>
                <li>
                  $orgTitle
                </li>
              </ul>
            </li>
            ";
          }
          ?>
        </ul>

        <h4>Plattformen:</h4>
        <ul>
          <!--OrgPlatform-->
          <li>
            Original Plattform:
            <ul style="list-style-type: square">
              <li><a href="../platforms/<?php echo "$orgPlatformPath" ?>"><?php echo "$orgPlatform" ?></a></li>
            </ul>
          </li>
          <!--Ports-->
          <?php
          if ($checkPort) {
            echo "
            <li>
            Ports:
              <ul style='list-style-type: square'>
                ";
            $stmt = $connection->query("SELECT p.name, p.pagePath FROM platform p, port po WHERE po.refGame = $gameNumber AND po.refPlatform = p.pNo ORDER BY p.releaseDate");
            while ($rows = $stmt->fetch()) {
              $port = $rows[0];
              $portPath = $rows[1];
              echo "
              <li><a href='../platforms/$portPath'>$port</a></li>
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
            Spieleserie:
            <ul style="list-style-type: square">
              <li><?php echo "$series" ?></li>
            </ul>
          </li>
          <li>
            Publisher:
            <ul style="list-style-type: square">
              <?php
              $stmt = $connection->query("SELECT pub.name FROM publisher pub, game_publisher gp WHERE gp.refGame = $gameNumber AND gp.refPublisher = pub.pubNo");
              while ($rows = $stmt->fetch()) {
                echo "
                <li>
                $rows[0]
                </li>
                ";
              }
              ?>
            </ul>
          </li>
        </ul>
      </div>

    </div>

  </div>

</div>

</body>

</html>
