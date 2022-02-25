<html lang='de'>
<head>
  <link rel="icon" href="../favicon.ico">
  <link rel='stylesheet' href='../css/main.css'>
  <link rel='stylesheet' href='../css/searchPage.css'>
  <title>Suche</title>
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
  <!--  Header  -->
  <div class="logo">
    <a href="home.php">
      <img src="../img/logo.png" width="393">
    </a>
  </div>
  <!--  Header End  -->

  <!--  Hotbar  -->
  <?php include "hotbar.html" ?>

  <p class="titlebar">
    Suche
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <form class="bigSearchbar" action="searchAll.php" method="post">
      <input name="search" type="text" placeholder="Suchen nach Spielen, Plattformen, ...">
      <button type="submit">Los!</button>
    </form>


    <?php
    if ($_POST["search"] || $_POST["submit"] || $_POST["hotbarSearch"] || $_POST["hotbarSubmit"]) {
      echo "
            <div class='mainbox' style='width: 1070px; height: 800px'>
            <h4>Suchergebnisse</h4>
                <ul class='search-results'>
          ";
      if ($_POST["search"]) {
        $search = $_POST["search"];
      } else {
        $search = $_POST["hotbarSearch"];
      }

      $stmt = $connection->query("SELECT g.imgCover, g.title, YEAR(g.releaseDate), p.name, g.synopsis, g.pagePath, p.pagePath FROM game g, platform p WHERE g.orgPlatform = p.pNo AND title LIKE '%$search%' ORDER BY g.releaseDate");
      while ($rows = $stmt->fetch()) {
        $image = $rows[0];
        $title = $rows[1];
        $release = $rows[2];
        $platform = $rows[3];
        $synopsis = $rows[4];
        $gPagePath = $rows[5];
        $pPagePath = $rows[6];
        echo "
            <li>
              <p>
                <a target='_blank' href='./games/$gPagePath'>
                  <img src='$image'>
                </a>
              </p>
              <div class='search-results-info'>
                <h4>
                  <a href='./games/$gPagePath'>$title</a>
                  |
                  <a href='./platforms/$pPagePath'>$platform</a>
                  |
                  $release
                </h4>
                <p>
                  $synopsis
                </p>
              </div>
            </li>";
      }
      $stmt = $connection->query("SELECT p.imgLogo, p.name, YEAR(p.releaseDate), pub.name, p.synopsis, p.pagePath FROM platform p, publisher pub WHERE p.manufacturer = pub.pubNo AND p.name LIKE '%$search%' OR p.manufacturer = pub.pubNo AND p.alias LIKE '%$search%'");
      while ($rows = $stmt->fetch()) {
        $image = $rows[0];
        $name = $rows[1];
        $release = $rows[2];
        $manufacturer = $rows[3];
        $synopsis = $rows[4];
        $pagePath = $rows[5];
        echo "
            <li>
              <p>
                <a target='_blank' href='./games/$pagePath'>
                  <img src='$image' style='border: none'>
                </a>
              </p>
              <div class='search-results-info'>
                <h4>
                  <a href='./games/$pagePath'>$name</a>
                  |
                  <a>$manufacturer</a>
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
    }
    ?>


  </div>
</div>

</body>

</html>
