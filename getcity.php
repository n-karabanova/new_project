<?php
  $mysqli = new mysqli("localhost", "nkarabanova", "Naty2307", "newSql");
  mysqli_set_charset($mysqli, 'utf8');
  $query = "select * from city where CountryCode =  '".$_REQUEST['code']."'";
  $result = $mysqli->query($query); // выполнение запроса
  echo json_encode($result->fetch_all(MYSQLI_ASSOC));
?>