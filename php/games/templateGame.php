<?php
$connection = null;
include "../connection.php";
$galleryLimit = 10;

$stmt = $connection->query("SELECT title, imgCover, synTitle, orgTitle, orgPlatform, releaseDate, refSeries, metaScore, synopsis, pagePath FROM game WHERE gNo = $gameNumber");
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

  $pagePath = $rows[9];
}

$stmt = $connection->query("SELECT refPrequel FROM prequel WHERE refOrigin = $gameNumber");
while ($rows = $stmt->fetch()) {
  $checkPrequel = $rows[0];
}

$stmt = $connection->query("SELECT refOrigin FROM prequel WHERE refPrequel = $gameNumber");
while ($rows = $stmt->fetch()) {
  $checkSequel = $rows[0];
}

$stmt = $connection->query("SELECT refRemake FROM remake WHERE refOrigin = $gameNumber");
while ($rows = $stmt->fetch()) {
  $checkRemake = $rows[0];
}

$stmt = $connection->query("SELECT refRemaster FROM remaster WHERE refOrigin = $gameNumber");
while ($rows = $stmt->fetch()) {
  $checkRemaster = $rows[0];
}

$stmt = $connection->query("SELECT refOrigin FROM remake WHERE refRemake = $gameNumber");
while ($rows = $stmt->fetch()) {
  $checkRemakeOrigin = $rows[0];
}

$stmt = $connection->query("SELECT refOrigin FROM remaster WHERE refRemaster = $gameNumber");
while ($rows = $stmt->fetch()) {
  $checkRemasterOrigin = $rows[0];
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
  <!--  Hotbar  -->
  <?php include "gamePageHotbar.php" ?>

  <p class="titlebar">
    <?php echo "$title" ?>
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <div class='leftbox'>
      <div style="width: 300px; height: auto; border-bottom: 1px solid gray">
        <img alt="<?php echo "$title" ?>" src="../<?php echo "$imgCover" ?>">
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
        <div class="userScoreBox">
          <h4>Nutzerbewertung</h4>
          <?php
          $stmt = $connection->query("SELECT AVG(score) FROM list WHERE refGame = $gameNumber");
          while ($scoreRows = $stmt->fetch()) {
            $userScore = number_format($scoreRows[0], 1, ',');
            echo "<h3>$userScore</h3>";
          }
          ?>
        </div>
      </div>

      <?php
      if ($userId) {
        echo "
      <div class='listAddBox'>
        <div class='addBox'>
          <form action='$pagePath' method='post'>
      ";
        $stmt = $connection->query("SELECT refGame FROM list WHERE refGame = $gameNumber AND refUser = $userId");
        while ($checkGameRow = $stmt->fetch()) {
          $checkGame = $checkGameRow[0];
        }
        if (!$checkGame) {
          echo "
      <button name='listAdd' style='background-color: rebeccapurple; color: white'>Zu Liste hinzufügen</button>
      ";
        } else {
          echo "
      <button name='listRemove' style='background-color: lavender'>Von Liste entfernen</button>
      </form>
      ";
        }
        if (isset($_POST['listAdd'])) {
          $stmt = $connection->query("INSERT INTO list (refUser, refGame, refStatus) VALUES ('$userId', '$gameNumber', 2)");
          echo("<meta http-equiv='refresh' content='0'>");
        } elseif (isset($_POST['listRemove'])) {
          $stmt = $connection->query("DELETE FROM list WHERE refGame = $gameNumber AND refUser = $userId");
          echo("<meta http-equiv='refresh' content='0'>");
        }
        echo "
        </div>
        <div class='scoreSelectBox'>
        ";

        if ($checkGame) {
          $stmt = $connection->query("SELECT score FROM list WHERE refGame = $gameNumber AND refUser = $userId");
          while ($rows = $stmt->fetch()) {
            $setScore = $rows[0];
          }
          echo "
            <div class='scoreSelect'>
                <span style='margin: 5px'>
                    <div style='display: inline-block; margin-left: 5px'>Score</div>
                    <form action='#' method='post'>
                        <input name='score' type='number' min='0' max='10' placeholder='$setScore'>/ 10
                    </form>
                    <div style='display: inline-block; color: yellow'>★</div>
                </span>
            </div>
          ";
          if (isset($_POST['score'])) {
            $score = $_POST['score'];
            $stmt = $connection->query("UPDATE list SET score = $score WHERE refUser = $userId AND refGame = $gameNumber");
          }
        }
        echo "
          </div>";


        echo "
          <div class='statusSelectBox'>";
        if ($checkGame) {
          echo "
            <form action='#' method='post'>
                <select id='status' name='status'>
                    <option value='2'>Am Spielen</option>
                    <option value='3'>Abgeschlossen</option>
                    <option value='4' selected>Nicht fortgesetzt</option>
                    <option value='5'>Abgebrochen</option>
                    <option value='6'>Geplant</option>
                </select>
                <input type='submit' style='width: auto' value='✓'>
            </form>
          ";
          if ($_POST['status']) {
            $status = $_POST['status'];
            $stmt = $connection->query("UPDATE list SET refStatus = $status WHERE refUser = $userId AND refGame = $gameNumber");
          }
        }

        echo "
        </div>
        </div>";
      }

      ?>


      <div class='synopsisBox'>
        <h4>Zusammenfassung:</h4>
        <ul style="list-style-type: none; text-align: justify; padding: 0 60px 20px 20px;">
          <li>
            <?php echo "$synopsis" ?>
          </li>
        </ul>

        <?php
        if ($checkPrequel || $checkSequel || $checkRemake || $checkRemaster || $checkRemakeOrigin || $checkRemasterOrigin) {
          echo "
          <h4>Verwandte Titel:</h4>
          <table style='text-align: left; margin-left: 20px'>";
          if ($checkPrequel) {
            echo "
                <tr><th>Prequel(s):</th><th style='font-weight: normal'> <table>";
            $stmt = $connection->query("SELECT p.refPrequel, g.title, g.pagePath FROM prequel p, game g WHERE p.refOrigin = $gameNumber AND g.gNo = p.refPrequel");
            while ($rows = $stmt->fetch()) {
              echo "
              <tr><th style='font-weight: normal'><a href='../games/$rows[2]'>$rows[1]</a></th></tr>
              ";
            }
            echo "
              </table></th></tr>
            ";
          }
          if ($checkSequel) {
            echo "
                <tr><th>Sequel(s):</th><th style='font-weight: normal'> <table>";
            $stmt = $connection->query("SELECT p.refOrigin, g.title, g.pagePath FROM prequel p, game g WHERE p.refPrequel = $gameNumber AND g.gNo = p.refOrigin");
            while ($rows = $stmt->fetch()) {
              echo "
              <tr><th style='font-weight: normal'><a href='../games/$rows[2]'>$rows[1]</a></th></tr>
              ";
            }
            echo "
              </table></th></tr>
            ";
          }
          if ($checkRemake) {
            echo "
                <tr><th>Remakes(s):</th><th style='font-weight: normal'> <table>";
            $stmt = $connection->query("SELECT r.refRemake, g.title, g.pagePath FROM remake r, game g WHERE r.refOrigin = $gameNumber AND g.gNo = r.refRemake");
            while ($rows = $stmt->fetch()) {
              echo "
              <tr><th style='font-weight: normal'><a href='../games/$rows[2]'>$rows[1]</a></th></tr>
              ";
            }
            echo "
              </table></th></tr>
            ";
          }
          if ($checkRemaster) {
            echo "
                <tr><th>Remaster(s):</th><th style='font-weight: normal'> <table>";
            $stmt = $connection->query("SELECT r.refRemaster, g.title, g.pagePath FROM remaster r, game g WHERE r.refOrigin = $gameNumber AND g.gNo = r.refRemaster");
            while ($rows = $stmt->fetch()) {
              echo "
              <tr><th style='font-weight: normal'><a href='../games/$rows[2]'>$rows[1]</a></th></tr>
              ";
            }
            echo "
              </table></th></tr>
            ";
          }
          if ($checkRemakeOrigin) {
            echo "
                <tr><th>Ursprüngliche(r) Titel:</th><th style='font-weight: normal'> <table>";
            $stmt = $connection->query("SELECT r.refOrigin, g.title, g.pagePath FROM remake r, game g WHERE r.refRemake = $gameNumber AND g.gNo = r.refOrigin");
            while ($rows = $stmt->fetch()) {
              echo "
              <tr><th style='font-weight: normal'><a href='../games/$rows[2]'>$rows[1]</a></th></tr>
              ";
            }
            echo "
              </table></th></tr>
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
