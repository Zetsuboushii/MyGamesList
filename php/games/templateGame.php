<?php
$connection = null;
include "../connection.php";
$galleryLimit = 10;

$stmt = $connection->query("SELECT title, imgCover, synTitle, orgTitle, orgPlatform, releaseDate, refSeries, metaScore, synopsis, refPrequel, refSequel, refRemake FROM game WHERE gNo = $gameNumber");
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

  $metaScore = $rows[7];
  $synopsis = $rows[8];

  $prequelNo = $rows[9];
  if ($prequelNo) {
    $stmt = $connection->query("SELECT title, pagePath FROM game WHERE gNo = $prequelNo");
    while ($lRows = $stmt->fetch()) {
      $prequel = $lRows[0];
      $prequelPath = $lRows[1];
    }
  }

  $sequelNo = $rows[10];
  if ($sequelNo) {
    $stmt = $connection->query("SELECT title, pagePath FROM game WHERE gNo = $sequelNo");
    while ($mRows = $stmt->fetch()) {
      $sequel = $mRows[0];
      $sequelPath = $mRows[1];
    }
  }

  $remakeNo = $rows[11];
  if ($remakeNo) {
    $stmt = $connection->query("SELECT title, pagePath FROM game WHERE gNo = $remakeNo");
    while ($nRows = $stmt->fetch()) {
      $remake = $nRows[0];
      $remakePath = $nRows[1];
    }
  }

  $stmt = $connection->query("SELECT title, pagePath FROM game WHERE refRemake = $gameNumber");
  while ($nRows = $stmt->fetch()) {
    $origin = $nRows[0];
    $originPath = $nRows[1];
  }
}
?>

<html lang='de'>
<head>
  <link rel="icon" href="../../favicon.ico">
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
            Genre:
            <ul style="list-style-type: square">
              <?php
              $stmt = $connection->query("SELECT gen.name FROM genre gen, game_genre gg WHERE gg.refGame = $gameNumber AND gg.refGenre = gen.genNo");
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
          <li>
            Entwickler:
            <ul style="list-style-type: square">
              <?php
              $stmt = $connection->query("SELECT dev.name FROM developer dev, game_developer gd WHERE gd.refGame = $gameNumber AND gd.refDeveloper = dev.devNo");
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
          <li>
            Spielmodi:
            <ul style="list-style-type: square">
              <?php
              $stmt = $connection->query("SELECT m.name FROM mode m, game_mode gm WHERE gm.refGame = $gameNumber AND gm.refMode = m.modeNo");
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

    <div class='rightbox'>
      <div class='scoreBox'>
        <div class='metaScoreBox'>
          <h4>MetaScore</h4>
          <?php
          if ($metaScore >= 90) {
            echo "
            <div class='metaScore' style='background-color: limegreen'>
            <h4>$metaScore</h4>
            </div> ";
          } elseif ($metaScore >= 75) {
            echo "
            <div class='metaScore' style='background-color: greenyellow'>
            <h4>$metaScore</h4>
            </div> ";
          } elseif ($metaScore >= 50) {
            echo "
            <div class='metaScore' style='background-color: #ffd500'>
            <h4>$metaScore</h4>
            </div> ";
          } elseif ($metaScore < 50) {
            echo "
            <div class='metaScore' style='background-color: orangered'>
            <h4>$metaScore</h4>
            </div> ";
          }
          ?>
        </div>
        <div class='rankBox'>
          <?php
          if (strtotime($releaseDateRaw) < strtotime(date('Y-m-d'))) {
            $stmt = $connection->query("SELECT RANK() OVER (ORDER BY metaScore DESC) FROM game WHERE releaseDate < NOW() ORDER BY FIELD(gNo, $gameNumber) DESC LIMIT 1");
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
      <div class='listAddBox'>
        <div class='addBox'>
          <?php
          if (true){

          };
          ?>

          <button name='listAdd'>kek +</button>
        </div>
        <div class='scoreSelectBox'>
          kek
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
        if ($prequel || $sequel || $remake || $origin) {
          echo "
          <h4>Verwandte Titel:</h4>
          <table style='text-align: left; margin-left: 20px'>";
          if ($prequel) {
            echo "
            <tr><th>Prequel:</th><th style='font-weight: normal'><a href='../games/$prequelPath'>$prequel</a></th></tr>
            ";
          }
          if ($sequel) {
            echo "
            <tr><th>Sequel:</th><th style='font-weight: normal'><a href='../games/$sequelPath'>$sequel</a></th></tr>
            ";
          }
          if ($remake) {
            echo "
            <tr><th>Remake:</th><th style='font-weight: normal'><a href='../games/$remakePath'>$remake</a></th></tr>
            ";
          }
          if ($origin) {
            echo "
            <tr><th>Ursprünglicher Titel:</th><th style='font-weight: normal'><a href='../games/$originPath'>$origin</a></th></tr>
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
