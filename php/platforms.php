<html lang='de'>
<head>
  <link rel='stylesheet' href='../css/main.css'>
  <link rel='stylesheet' href='../css/searchPage.css'>
  <title>Plattformen</title>
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
    Plattformen
  </p>
  <!--  Hotbar End  -->


  <div class="content_box">

    <form class="bigSearchbar" action="platforms.php" method="post">
      <input name="search" type="text" placeholder="Suchen nach Spieleplattformen...">
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
                <a target='_blank' href='./platforms/$pagePath'>
                  <img src='$image' style='border: none'>
                </a>
              </p>
              <div class='search-results-info'>
                <h4>
                  <a href='./platforms/$pagePath'>$name</a>
                  |
                  <a href='#'>$manufacturer</a>
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
      $stmt = $connection->query("SELECT imgPhoto, name, pagePath FROM platform ORDER BY RAND() LIMIT $galleryLimit");
      while ($rows = $stmt->fetch()) {
        $image = $rows[0];
        if (strlen($rows[1]) <= 30) {
          $name = "<br>" . $rows[1];
        } else {
          $name = $rows[1];
        }
        $pagePath = $rows[2];
        echo "
                <li>
                <a target='_blank' href='./platforms/$pagePath'>
                    <img src='$image'>
                </a>
                <a href='./platforms/$pagePath'>
                    <p class='desc'>
                        $name
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
