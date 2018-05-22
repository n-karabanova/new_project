<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <h3>Информация о запросе</h3>
    <pre><?php print_r($_POST) ?></pre>
    <?php
      $mysqli = new mysqli("localhost", "nkarabanova", "Naty2307", "newSql");
      $query = "insert into comeback (name, email, tel, theme, message ) 
      values ('".$_POST['name']."', '".$_POST['email']."', '".$_POST['tel']."', '".$_POST['theme']."', '".$_POST['message']."')";
      //echo $query;
      $mysqli->query("set names utf8");
      //set names utf8;
      if($mysqli->query($query))
        echo "Данные добавлены";
      else
        echo "Произошла ошибка";
    ?>
    <p>
      <a href="index.php">На начальную</a>
    </p>
  </body>
</html>