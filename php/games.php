<html lang='de'>
<head>
  <link rel='stylesheet' href='../css/main.css'>
  <link rel='stylesheet' href='../css/searchPage.css'>
  <title>Alle Spiele</title>
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
      <input name="search" type="text" placeholder="Suchen nach...">
      <button type="submit">Los!</button>
    </form>

    <?php
    if ($_POST["search"] || $_POST["submit"]){
      $search = $_POST["search"];
      echo "<div class='mainbox' style='width: 1070px; height: 500px'>
        <h4>Ergebnisse</h4>
        <ul class='gallery'>
        <li>";
          $stmt = $connection->query("SELECT imgCover, title FROM game WHERE title LIKE '%$search%'");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            if (strlen($rows[1]) <= 30) {
              $title = "<br>" . $rows[1];
            } else {
              $title = $rows[1];
            }
            echo "
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
            ";
          }
    echo "</li></ul></div>";
    }
    ?>


    <div class="mainbox" style="width: 1070px; height: 500px">

      <h4>Vorschläge</h4>
      <ul class="gallery">
        <li>
          <?php
          $stmt = $connection->query("SELECT imgCover, title FROM game ORDER BY RAND() LIMIT 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            if (strlen($rows[1]) <= 30) {
              $title = "<br>" . $rows[1];
            } else {
              $title = $rows[1];
            }
            echo "
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
            ";
          }
          ?>
        </li>
        <li>
          <?php
          $stmt = $connection->query("SELECT imgCover, title FROM game ORDER BY RAND() LIMIT 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            if (strlen($rows[1]) <= 30) {
              $title = "<br>" . $rows[1];
            } else {
              $title = $rows[1];
            }
            echo "
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
            ";
          }
          ?>
        </li>
        <li>
          <?php
          $stmt = $connection->query("SELECT imgCover, title FROM game ORDER BY RAND() LIMIT 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            if (strlen($rows[1]) <= 30) {
              $title = "<br>" . $rows[1];
            } else {
              $title = $rows[1];
            }
            echo "
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
            ";
          }
          ?>
        </li>
        <li>
          <?php
          $stmt = $connection->query("SELECT imgCover, title FROM game ORDER BY RAND() LIMIT 1");
          while ($rows = $stmt->fetch()) {
            $image = $rows[0];
            if (strlen($rows[1]) <= 30) {
              $title = "<br>" . $rows[1];
            } else {
              $title = $rows[1];
            }
            echo "
                <a target='_blank' href='#'>
                    <img src='$image'>
                </a>
                <a href='#'>
                    <p class='desc'>
                        $title
                    </p>
                </a>
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
