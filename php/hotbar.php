<div class="logo">
  <a href="home.php">
    <img alt="MyGamesList Logo" src="../img/logo.png" width="400px">
  </a>
  <?php
  if (!$_SESSION['userid']) {
    echo "<a href='login.php' style='float: right; color: white; background-color: rebeccapurple; padding: 10px; font-weight: bold; border-radius: 5px; margin: 10px; margin-top: 30px'>Login</a>";
  } else {
    echo "<a href='logout.php' style='float: right; color: darkred; background-color: mistyrose; padding: 10px; font-weight: bold; border-radius: 5px; margin: 9px; margin-top: 30px'>Logout</a>";
    echo "<a href='lists/$userIdPad.php' style='text-align: center ;float: right; color: white; background-color: rebeccapurple; padding: 10px; font-weight: bold; border-radius: 5px; margin: 9px; margin-top: 30px'>$userName's Liste</a>";
  }
  ?>
</div>

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
      <a class="dropdown" href="about.php">Über</a>
      <a class="dropdown" href="faq.php">FAQ</a>
      <a class="dropdown" href="impressum.php">Impressum</a>
    </dif>
  </li>

  <li style="float: right; alignment: center; margin-right: 8px">
    <form class="searchbar" action="searchAll.php" method="post">
      <input name="hotbarSearch" type="text" placeholder="Suchen nach...">
      <button type="hotbarSubmit">
        <img alt="Such-Icon" style="height: 20px; filter: saturate(0%) brightness(50%)" src="../icons/search_glass.png">
      </button>
    </form>
  </li>
</ul>
