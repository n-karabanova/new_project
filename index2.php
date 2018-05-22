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
				<li class="first leaf"><a href="index.php" title="Журнал" class="item">Главная</a></li>
				<li class="leaf"><a href="index2.php" title="Журнал" class="item active">Галерея</a></li>
				<li class="leaf"><a href="index3.php" title="Журнал" class="item">Список</a></li>
				<li class="last leaf"><a href="index4.php" title="Журнал" class="item">Автор</a></li>
			 </ul>
			 </div>
		 </div>
	 </table>
	</div>
	<div id="table-div">
	</div>
<script type="text/javascript">
  function getCountries() {
    const promise = new Promise((res,rej) => {
      var xmlhttp = new XMLHttpRequest();  
      xmlhttp.onload = () => res(xmlhttp);
      xmlhttp.onerror = () => rej();
      xmlhttp.open("GET", "getcountry.php");
      xmlhttp.send();
    });
    promise.then((result) => {
      let arr = JSON.parse(result.response);
      document.getElementById('table-div').innerHTML = arr.map(el => 
        `<div class='col'><div class='${el["Code"]}'><img src='${el["Code"]}.png'></img><div class='col-text'><div>${el["Name"]}</div><a href='index-${el["Code"]}.php'>подробнее...</a></div></div></div>`).join(" ");
      });
      
  }
  getCountries();
 </script>
 </body> 
 </html>