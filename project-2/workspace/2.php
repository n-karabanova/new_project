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
				<li class="first leaf"><a href="index.html" title="Журнал" class="item">Главная</a></li>
				<li class="leaf"><a href="index2.html" title="Журнал" class="item active">Галерея</a></li>
				<li class="leaf"><a href="index3.html" title="Журнал" class="item">Список</a></li>
				<li class="leaf"><a href="index4.html" title="Журнал" class="item">Автор</a></li>
			 </ul>
			 </div>
		 </div>
	 </table>
	</div>
	<?php
	  $mysqli = new mysqli("localhost", "nkarabanova", "Naty2307", "newSql");
	  $query = "select * from country";
	  $result = $mysqli->query($query); // выполнение запроса
	  if($mysqli->query($query))
        echo "Даные добавлены";
      else
        echo "Произошла ошибка";
	  while($row = $result->fetch_array(MYSQLI_ASSOC)) {
	    echo $row["Name"].", ".$row["Continent"]."<br>";
	  }
	?>
	<div>
		<div class="col">
			<div class="">
				<img src="austria.png"></img>
				<div class="col-text">
					<div>Австрия</div>
					<a href="index-austria.html">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="belgium.png"></img>
				<div class="col-text">
					<div>Бельгия</div>
					<a href="index-belgium.html">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="denmark.png"></img>
				<div class="col-text">
					<div>Дания</div>
					<a href="index-denmark.html">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="italy.png"></img>
				<div class="col-text">
					<div>Италия</div>
					<a href="index-italy.html">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="spain.png"></img>
				<div class="col-text">
					<div>Испания</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="island.png"></img>
				<div class="col-text">
					<div>Исландия</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="luxembourg.png"></img>
				<div class="col-text">
					<div>Люксембург</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="monaco.png"></img>
				<div class="col-text">
					<div>Монако</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="netherlands.png"></img>
				<div class="col-text">
					<div>Нидерланды</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="france.png"></img>
				<div class="col-text">
					<div>Франция</div>
					<a href="index-france.html">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="sweden.png"></img>
				<div class="col-text">
					<div>Швеция</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
		<div class="col">
			<div class="">
				<img src="switzerland.png"></img>
				<div class="col-text">
					<div>Швейцария</div>
					<a href="#">подробнее...</a>
				</div>
			</div>
		</div>
	</div>
 </body> 
 </html>