<html lang='de'>
<head>
  <link rel='stylesheet' href='../css/main.css'>
  <link rel='stylesheet' href='../css/searchPage.css'>
  <title>Spiele</title>
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
    Spiele
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <form class="bigSearchbar" action="games.php" method="post">
      <input name="search" type="text" placeholder="Suchen nach Spieletitel...">
      <button type="submit">Los!</button>
    </form>


    <?php
    if ($_POST["search"] || $_POST["submit"]) {
      echo "
            <div class='mainbox' style='width: 1070px; height: 800px'>
            <h4>Suchergebnisse</h4>
                <ul class='search-results'>
          ";
      $search = $_POST["search"];
      $stmt = $connection->query("SELECT g.imgCover, g.title, YEAR(g.releaseDate), p.name, g.synopsis FROM game g, platform p WHERE g.orgPlatform = p.pNo AND title LIKE '%$search%' ORDER BY g.releaseDate");
      while ($rows = $stmt->fetch()) {
        $image = $rows[0];
        $title = $rows[1];
        $release = $rows[2];
        $platform = $rows[3];
        $synopsis = $rows[4];
        echo "
            <li>
              <p>
                <a target='_blank' href='#'>
                  <img src='$image'>
                </a>
              </p>
              <div class='search-results-info'>
                <h4>
                  <a href='#'>$title</a>
                  |
                  <a href='#'>$platform</a>
                  |
                  $release
                </h4>
                <p>
                  $synopsis
                </p>
              </div>
            </li>";
      }
      echo "
            </ul>
          </div>
          ";
    } else {
      echo "
      <div class='mainbox' style='width: 1070px; height: auto'>

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
        </div>";
    }
    ?>


  </div>
</div>

</body>

</html>
