<!DOCTYPE html>
 <html lang="ru">
    <head>
        <meta charset="utf-8" />
		<link rel="stylesheet" href="style.css">
        <title>Документ без названия</title>
	</head>
 <body align="center">
	<div class="container">
	 <table align="center"> 
	 <tr> 
		<!--Шапка сайта.-->
		 <table align="center" class="main-table1"> 
			<tr> 
			<th class="th-header"> 
			 <h1 class="header-text">Страны Европы
			 </h1> 
			</th> 
			</tr> 
		 </table>
		 <div id="site_navigation" class="site-navigation">
			 <div id="main_menu" class="main-menu">
			 <ul class="menu">
				<li class="first leaf"><a href="index.php" title="Журнал" class="item active">Главная</a></li>
				<li class="leaf"><a href="index2.php" title="Журнал" class="item">Галерея</a></li>
				<li class="leaf"><a href="index3.php" title="Журнал" class="item">Список</a></li>
				<li class="last leaf"><a href="index4.php" title="Журнал" class="item">Автор</a></li>
			 </ul>
			 </div>
		 </div>
		<!--Текст статьи--> 
		<table align="center" class="main-table-country"> 
		<tr> 
			<td class="main-page-text" rowspan="4"> 
				<h3>Бельгия</h3>
				<img class="img-country" src="belgium-1.jpg"></img>
				<p>
					<?php
					  $mysqli = new mysqli("localhost", "nkarabanova", "Naty2307", "newSql");
					  mysqli_set_charset($mysqli, 'utf8');
					  $query = "select * from country where Code =  'BEL'";
					  $result = $mysqli->query($query); // выполнение запроса
					  while($row = $result->fetch_array(MYSQLI_ASSOC)) {
					    echo "<p>Столица страны: ".$row["Capital"]."</p>";
					  }
					?>
				</p>
					<?php
					  $mysqli = new mysqli("localhost", "nkarabanova", "Naty2307", "newSql");
					  mysqli_set_charset($mysqli, 'utf8');
					  $query = "select * from countryinfo where  CountryCode =  'BEL' order by OrderText";
					  $result = $mysqli->query($query); // выполнение запроса
					  while($row = $result->fetch_array(MYSQLI_ASSOC)) {
					    echo "<p>".$row["Text"]."</p>";
					  }
					?>
					<h3>Достопримечательности страны</h3>
					<h2>Площадь Гран Плас</h2>
					<img class="img-country" src="belgium-2.jpg"></img>
					<?php
					  $mysqli = new mysqli("localhost", "nkarabanova", "Naty2307", "newSql");
					  mysqli_set_charset($mysqli, 'utf8');
					  $query = "select * from countryattraction where  CountryCode =  'BEL' order by OrderText";
					  $result = $mysqli->query($query); // выполнение запроса
					  while($row = $result->fetch_array(MYSQLI_ASSOC)) {
					    echo "<p>".$row["Text"]."</p>";
					  }
					?>
				<h2>Известные города</h2>
				  <ul style="text-align: left;" id="ul-city">
				  </ul>
			</td> 
		</tr>  
		</table> 
	 </table>
	 </div>
 <script type="text/javascript">
   function getCities(code) {
    const promise = new Promise((res,rej) => {
      var xmlhttp = new XMLHttpRequest();  
      xmlhttp.onload = () => res(xmlhttp);
      xmlhttp.onerror = () => rej();
      xmlhttp.open("GET", "getcity.php?code=" + code);
      xmlhttp.send();
    });
    promise.then((result) => {
      let arr = JSON.parse(result.response);
      document.getElementById('ul-city').innerHTML = arr.map(el => 
        `<li>${el["Name"]}</li>`).join(" ");
      });
    }
  getCities('BEL');
 </script>
 </body> 
 </html>
