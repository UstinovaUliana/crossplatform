<html>

<style>
header {
    height: 70px;
    background-color: rgb(216, 216, 216);
}
.light-theme {
    background-color: beige;
}
.dark-theme {
    background-color:rgb(37, 38, 68);
}
.theme-button {
    margin-left: 120px;
    margin-top: 20px;  
    background-color: rgb(216, 216, 216);
}
#logo {
    float:left;
    margin-left: 30px;
    margin-top: 20px;
    width: 10 px;
    height: 10 px;
    position: absolute;
    left:0px;
    top:0px;
}

#nav {
    float:right;
    height: 50px;
}

#navv{
    display: inline;
    font-size: 10pt;
    height: 50px;
    width: 100px;
    padding: 30px;
}

#up{
    background: url(pics/kitl12.jpg) no-repeat;
    padding:30px;
    margin:20px;
}

#up1 {
    text-align:center;
    font-size: 30pt;
    color:rgb(194, 42, 42);
}
h1 {
    text-align:center;
    font-size: 25pt;
    color:rgb(255, 255, 255);
}
#up2 {
    padding:10px;
    display: inline;
    font-size: 15px;
    background-color: springgreen;
    border-radius: 10px;
}

#mid {
    background: url(pics/kitl3.jpg) no-repeat;
    padding:30px;
    margin:20px;
}
#green {
    display: flex;
    justify-content: space-between;
    margin: 80px;
    margin-top: 40px;
    text-align: center;
}
#midd {
    display: flex;
    justify-content: space-between;
    margin: 40px;
}
#midd1 {
    display: flex;
    justify-content: space-between;
    margin: 40px;
    text-align:center;
}

#mid1{
    display: inline;
    margin: 20px;
    font-size: 20px;
    background-color: tan;
    color:saddlebrown;
    box-sizing: border-box;
    padding: 20px;
    border-radius: 10px;
    width:1200px;
    height: 300px;
    text-align:center;
}

#pic {
    display: inline;
    float:center;
    height: 200px;
    margin-top:20px;
}

#down {
    display: inline;
    margin: 20px;
    font-size: 10pt;
    padding: 10 px;
    background-color:pink;
    color:purple;
    border-radius: 10px;
    width:250px;
    height: 150px;
}
#zn {
    display: flex;
}
#form {
    font-size: 10pt;
    border-radius: 10 em;
}

#button {
    font-size: px;
    background-color:red;
    color:white;
    border-radius: 0em;
}

footer {
    font-size: 20 px;
    margin: 20 px;
    height: 200px;
    background-color: rgb(216, 216, 216);
}


</style>
    <head>
        <title> Аниме-магазин "Кицуне"</title>
        <link rel="shortcut icon" href="pics/logo.png">
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    </head>

    <body class="page light-theme">
        <header>
          <img id="logo" src="pics/logo.png" width=60px >
            <div id="nav">
        <ul ><li id="navv"> Ежедневно с 10:00 до 22:00</li><li id="navv">Справочная: +7(985)000-00-00</li><li id="navv">kitsune@shop21363.ru</li></ul>
             </div>
             <button class="theme-button" type="button">Изменить тему</button>
    </header>
        <main>
            <div id="up">
                <p id="up1">АНИМЕ-МАГАЗИН "КИЦУНЕ"</p>;
             <ul id="green"><li id="up2" ALIGN="left"><p id="up2"><a href="#mid">Популярные товары</a></p></li><li id="up2" ALIGN="center"><p id="up2" ALIGN="center"><a href="#otz">Отзывы</a></p></li><li id="up2" ALIGN="right"><p id="up2"><a href="#otzivi1">Оставить отзыв</a></p></li></ul>        
                </div> 
        
            <div id="mid">
                <div>
            <h1>Популярные товары</h1>
            <ul id="midd"><li id="mid1" ALIGN="left">Аниме <br><img src="pics/anime.jpg" id="pic"></li>
                <li id="mid1" ALIGN="center">Фигурки<br><img src="pics/figs1.jpg" id="pic"></li>
                <li id="mid1" ALIGN="right">Манга<br><img src="pics/manga.jpg" id="pic"></li></ul>
            <ul id="midd1"><li id="mid1" ALIGN="center">Значки <br> <ul id="zn"><li><img src="pics/z1.jpg" id="pic"></li><li><img src="pics/z2.jpg" id="pic"></li><li><img src="pics/z3.jpg" id="pic"></li><li><img src="pics/z4.jpg" id="pic"></li><li><img src="pics/z5.jpg" id="pic"></li></ul></li></ul>
            <ul id="midd"><li id="mid1"ALIGN="left">Сумки<br><img src="pics/sumki1.jpg" id="pic"></li><li id="mid1" ALIGN="right">Обложки<br><img src="pics/obl1.jpg" id="pic"></li></ul>
            </div>
            <div id="otz">
                <h1> Отзывы </h1>
            <ul id="midd"><li id="down" ALIGN="left">fgdfgf</li><li id="down">sdghdf</li><li id="down">sdghdf</li><li id="down" ALIGN="right">dfjfghkfd</li></ul>
            </div>
        

           

<div id="otzivi1">
<h2> Оставить отзыв </h2><br>

<?php
/* Подключаемся к базе данных */
$db=mysql_connect("localhost", "root","");
mysql_select_db("anime", $db);

$name = $_POST["sirname"]; 
$email = $_POST["email"];
$text_message = $_POST["message"];

$sql = "INSERT INTO message(name, email, message) VALUES ('$name', '$email', '$text_message')";
$result=mysql_query($sql) or die("Ошибка в запросе!".mysql_error());



/* Выбираем данные */
$sql="SELECT name, email, message FROM back1";
$result=mysql_query($sql);

while ($line=mysql_fetch_row($result)) {
echo "<div><b>Имя:</b>".$line[0]."<br> <b>Email:</b>".$line[1]."<br><b>Сообщение:</b>".$line[2]."<br></div><br>";
}
?>

           

            <form name="form1" method="post" action="test.php">


                <p>
             Ваше имя:<br><input type="text" name="sirname" >
            </p> 
            <p> 
            Ваш Email:<br>  <input  type="text" name="email">
            </p>
            <p> 
            Сообщение:<br>  
            <textarea name="message"></textarea> <br>
            </p>
            <p>
            <input type="submit" name="send" value="Отправить">
            </p>
            </form>
        </div>
        </main>
        <footer>
        <ul ><li id="foot"> Ежедневно с 10:00 до 22:00</li><li id="foot">Справочная: +7(985)000-00-00</li><li id="foot">kitsune@shop21363.ru</li></ul>
        </footer>
        <script src="Untitled-1.js"></script>
    </body>

    
</html> 