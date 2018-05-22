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
				<li class="leaf"><a href="index3.php" title="Журнал" class="item">Список</a></li>
				<li class="last leaf"><a href="index4.php" title="Журнал" class="item active">Автор</a></li></li>
			 </ul>
			 </div>
		 </div>
		<!--Текст статьи--> 
		<table align="center" class="main-table1"> 
			<tr> 
			<td class="main-page-text" rowspan="4"> 
			<h3>Об авторе</h3> 
			<p class="author-text" style="text-indent:20px">Работу выполнила уценица группы ИВТ-11МО Карабанова Наталия</p>
			</td> 
			</tr>
		</table>
		<h2>Обратная связь</h2>
		<form class="contact_form" action="add.php" method="post">
			<p>
				<label class="lbl" for="name">Имя:</label>
				<input class="input-box" type="text" name="name" maxlength="52" placeholder="Иванов Иван Иванович" required />
			</p>
			<p>
				<label class="lbl" for="email">Email:</label>
				<input class="input-box" type="email" name="email" maxlength="52" placeholder="email@mail.ru" required />
			</p>
			<p>
				<label class="lbl" for="tel">Телефон:</label>
				<input class="input-box" type="tel" name="tel" maxlength="11" placeholder="71234567890" required />
			</p>
			<p>
				<label class="lbl" for="theme">Тема сообщения:</label>
				<input class="input-box" type="text" name="theme" maxlength="52" placeholder="Новая тема" required />
			</p>
			<p>
				<label class="lbl" for="message">Текст сообщения:</label>
				<textarea class="input-box-text" name="message" cols="40" rows="6" maxlength="255" required ></textarea>
			</p>
			<p>
				<input class="btn_new" type="submit" value="Отправить сообщение">
			</p>
		</form>
	 </table>
	 </div>
 </body> 
 </html>
 <script type="text/javascript">
 </script>