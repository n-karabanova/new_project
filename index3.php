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
				<li class="leaf"><a href="index2.php" title="Журнал" class="item">Галерея</a></li>
				<li class="leaf"><a href="index3.php" title="Журнал" class="item active">Список</a></li>
				<li class="last leaf"><a href="index4.php" title="Журнал" class="item">Автор</a></li>
			 </ul>
			 </div>
		 </div>
	 </table>
	</div>
	<tr>
		<ul id="ul-country" class="ul-country">
		</ul>		 
	</tr>
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
      document.getElementById('ul-country').innerHTML = arr.map(el => 
        `<li class='li-list'><img class='list-img' src='${el["Code"]}.png' href='index-${el["Code"]}.php'></img><a href='index-${el["Code"]}.php'>${el["Name"]}</a></div></li>`).join(" ");
      });
  }
  getCountries();
 </script>
 </body> 
 </html>