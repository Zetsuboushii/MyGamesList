<html lang='de'>
<head>
  <link rel='stylesheet' href='../css/main.css'>
  <title>MyGamesList</title>
</head>
<body>
<!--  Database Connection  -->
<?php
//Create Connection
try {
  $connection = new PDO('mysql:host=localhost;dbname=mgl', 'root', '');
  $connection->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
  echo "Error: " . $e->getMessage();
}
//Gallery Entry Limit
$galleryLimit = 10;
?>
<!--  Database Connection End -->


<div class="container">
  <!--  Header  -->
  <div class="logo">
    <a href="home.php">
      <img src="../img/logo.png" width="393">
    </a>
  </div>
  <!--  Header End  -->

  <!--  Hotbar  -->
  <ul class="hotbar">
    <li><a href="home.php">Startseite</a></li>

    <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">Spiele</a>
      <div class="dropdown-content">
        <a class="dropdown" href="games.php">Suche</a>
      </div>
    </li>

    <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">Plattformen</a>
      <div class="dropdown-content">
        <a class="dropdown" href="platforms.php">Suche</a>
      </div>
    </li>

    <li class="dropdown">
      <a href="javascript:void(0)" class="dropbtn">Hilfe</a>
      <dif class="dropdown-content">
        <a class="dropdown" href="#">Über</a>
        <a class="dropdown" href="#">FAQ</a>
        <a class="dropdown" href="#">Impressum</a>
      </dif>
    </li>

    <li style="float: right; alignment: center; margin-right: 8px">
      <form class="searchbar" action="#">
        <input type="text" placeholder="Suchen nach..." name="suche">
        <button type="submit">Los!</button>
      </form>
    </li>
  </ul>

  <p class="titlebar">
    Startseite
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">


    <?php
    echo "
    <div class='mainbox' style='width: 700px; height: 905px'>

      <h4>Vorschläge</h4>
      <ul class='gallery'>
        ";
    $stmt = $connection->query("SELECT imgCover, title FROM game ORDER BY RAND() LIMIT $galleryLimit");
    while ($rows = $stmt->fetch()) {
      $image = $rows[0];
      if (strlen($rows[1]) <= 30) {
        $title = "<br>" . $rows[1];
      } else {
        $title = $rows[1];
      }
      echo "
        <li>
          <a target='_blank' href='#'>
            <img src='$image'>
          </a>
          <a href='#'>
            <p class='desc'>
              $title
            </p>
          </a>
        </li>
        ";
    }
    echo "
    </ul>
    <h4>Q1 2022 Releases</h4>
    <ul class='gallery'>
    ";
    $stmt = $connection->query("SELECT imgCover, title FROM game WHERE releaseDate BETWEEN CAST('2022-01-01' AS DATE) AND CAST('2022-03-31' AS DATE) ORDER BY releaseDate DESC");
    while ($rows = $stmt->fetch()) {
      $image = $rows[0];
      if (strlen($rows[1]) <= 30) {
        $title = "<br>" . $rows[1];
      } else {
        $title = $rows[1];
      }
      echo "
            <li>
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
            </li>
            ";
    }
    echo "
    </ul>

    <h4>Q4 2021 Releases</h4>
    <ul class='gallery'>
    ";
    $stmt = $connection->query("SELECT imgCover, title FROM game WHERE releaseDate BETWEEN CAST('2021-10-01' AS DATE) AND CAST('2021-12-31' AS DATE) ORDER BY releaseDate DESC");
    while ($rows = $stmt->fetch()) {
      $image = $rows[0];
      if (strlen($rows[1]) <= 30) {
        $title = "<br>" . $rows[1];
      } else {
        $title = $rows[1];
      }
      echo "
            <li>
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
            </li>
            ";
    }
    echo "
    </ul>
    </div>
    ";
    ?>

    <div class="mainbox" style="width: 350px; float: right">
      <h4>Aktuell bestbewerteste Titel</h4>
      <ul class="sidebox">
        <li>
          <span>1</span>
          <?php
          $stmt = $connection->query("SELECT DISTINCT g.imgCover, g.title, p.name FROM game g, platform p WHERE g.releaseDate IS NOT NULL AND g.orgPlatform = p.pNo AND g.releaseDate < NOW() AND DATEDIFF(NOW(), g.releaseDate) < 250 ORDER BY g.metaScore DESC LIMIT 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            $title = $rows[1];
            $platform = $rows[2];
            echo "
                <p>
                    <a href='#'>
                        <img src='$image'>
                    </a>
                </p>
                <div class='sidebox-info'>
                    <h4>
                        <a class='sidebox-info-title' href='#'>$title</a>
                    </h4>
                    <br>
                        <a class='sidebox-info-platform' href='#'>$platform</a>
                </div>
            ";
          }
          ?>
        </li>
        <li>
          <span>2</span>
          <?php
          $stmt = $connection->query("SELECT DISTINCT g.imgCover, g.title, p.name FROM game g, platform p WHERE g.releaseDate IS NOT NULL AND g.orgPlatform = p.pNo AND g.releaseDate < NOW() AND DATEDIFF(NOW(), g.releaseDate) < 250 ORDER BY g.metaScore DESC LIMIT 1 OFFSET 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            $title = $rows[1];
            $platform = $rows[2];
            echo "
                <p>
                    <a href='#'>
                        <img src='$image'>
                    </a>
                </p>
                <div class='sidebox-info'>
                    <h4>
                        <a class='sidebox-info-title' href='#'>$title</a>
                    </h4>
                    <br>
                        <a class='sidebox-info-platform' href='#'>$platform</a>
                </div>
            ";
          }
          ?>
        </li>
        <li>
          <span>3</span>
          <?php
          $stmt = $connection->query("SELECT DISTINCT g.imgCover, g.title, p.name FROM game g, platform p WHERE g.releaseDate IS NOT NULL AND g.orgPlatform = p.pNo AND g.releaseDate < NOW() AND DATEDIFF(NOW(), g.releaseDate) < 250 ORDER BY g.metaScore DESC LIMIT 1 OFFSET 2");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            $title = $rows[1];
            $platform = $rows[2];
            echo "
                <p>
                    <a href='#'>
                        <img src='$image'>
                    </a>
                </p>
                <div class='sidebox-info'>
                    <h4>
                        <a class='sidebox-info-title' href='#'>$title</a>
                    </h4>
                    <br>
                        <a class='sidebox-info-platform' href='#'>$platform</a>
                </div>
            ";
          }
          ?>
        </li>
      </ul>
    </div>

    <div class="mainbox" style="width: 350px; float: right">
      <h4>Bestbewerteste Titel</h4>
      <ul class="sidebox">
        <li>
          <span>1</span>
          <?php
          $stmt = $connection->query("SELECT DISTINCT g.imgCover, g.title, p.name FROM game g, platform p WHERE g.orgPlatform = p.pNo ORDER BY metaScore DESC LIMIT 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            $title = $rows[1];
            $platform = $rows[2];
            echo "
                <p>
                    <a href='#'>
                        <img src='$image'>
                    </a>
                </p>
                <div class='sidebox-info'>
                    <h4>
                        <a class='sidebox-info-title' href='#'>$title</a>
                    </h4>
                    <br>
                        <a class='sidebox-info-platform' href='#'>$platform</a>
                </div>
            ";
          }
          ?>
        </li>
        <li>
          <span>2</span>
          <?php
          $stmt = $connection->query("SELECT DISTINCT g.imgCover, g.title, p.name FROM game g, platform p WHERE g.orgPlatform = p.pNo ORDER BY metaScore DESC LIMIT 1 OFFSET 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            $title = $rows[1];
            $platform = $rows[2];
            echo "
                <p>
                    <a href='#'>
                        <img src='$image'>
                    </a>
                </p>
                <div class='sidebox-info'>
                    <h4>
                        <a class='sidebox-info-title' href='#'>$title</a>
                    </h4>
                    <br>
                        <a class='sidebox-info-platform' href='#'>$platform</a>
                </div>
            ";
          }
          ?>
        </li>
        <li>
          <span>3</span>
          <?php
          $stmt = $connection->query("SELECT DISTINCT g.imgCover, g.title, p.name FROM game g, platform p WHERE g.orgPlatform = p.pNo ORDER BY metaScore DESC LIMIT 1 OFFSET 2");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            $title = $rows[1];
            $platform = $rows[2];
            echo "
                <p>
                    <a href='#'>
                        <img src='$image'>
                    </a>
                </p>
                <div class='sidebox-info'>
                    <h4>
                        <a class='sidebox-info-title' href='#'>$title</a>
                    </h4>
                    <br>
                        <a class='sidebox-info-platform' href='#'>$platform</a>
                </div>
            ";
          }
          ?>
        </li>
      </ul>
    </div>


  </div>
</div>

</body>

</html>
