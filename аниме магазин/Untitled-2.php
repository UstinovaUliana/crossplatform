<html>

<style>
header {
    height: 200px;
    background-color: rgb(216, 216, 216);
}

#logo {
    float:left;
    padding-left: 50px;
    width: 100 px;
}

#nav {
    float:right;
}

#navv{
    display: inline;
    font-size: 10pt;
    height: 100px;
    width: 100px;
    padding: 30px;
}

#up{
    background: url();
}

#up1 {
    text-align:center;
    font-size: 30pt;
    color:rgb(194, 42, 42);
}

#up2 {
    display: inline;
    margin: 20px;
    font-size: 10px;
    padding-top: 60 px;
    padding-left: 30 px;
    padding-right: 30 px;
    background-color: springgreen;
    border-radius: 10 em;
}

#mid {
    background-image: url();
}

#mid1{
    display: inline;
    margin: 20px;
    font-size: 16px;
    background-color: tan;
    color:saddlebrown;
    padding: 30 px;
    border-radius: 10 em;
}

#pic {
    float:left;
    width: px;
    height: px;
    padding: px;
}

#down {
    display: inline;
    margin: 20px;
    font-size: 10pt;
    padding: 30 px;
    background-color:pink;
    color:purple;
    border-radius: 10 em;
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
    margin: 20 px
}


</style>
    <head>
        <title> <IMG src=""> Аниме-магазин "Лисичка"</title>
        <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    </head>

    <body>
        <header><IMG id="logo" src="">
        <ul id="nav"><li id="navv">fgdfgf</li><li id="navv">sdghdf</li><li id="navv">dfjfghkfd</li></ul>
        </header>
        <main>
            <div id="up">
                <p id="up1">ЛИСИЧКА</p>;
                <ul><li id="up2" ALIGN="left">fgdfgf</li><li id="up2" ALIGN="center">sdghdf</li><li id="up2" ALIGN="right">dfjfghkfd</li></ul>
            </div> 
            <div id="mid">
            <ul><li id="mid1" ALIGN="left">fgdfgf</li><li id="mid1" ALIGN="center">sdghdf</li><li id="mid1" ALIGN="right">dfjfghkfd</li></ul>
            <ul><li id="mid1" ALIGN="center">fgdfgf</li></ul>
            <ul><li id="mid1"ALIGN="left">fgdfgf</li><li id="mid1" ALIGN="right">sdghdf</li></ul>
            </div>
            <div>
            <ul><li id="down" ALIGN="left">fgdfgf</li><li id="down">sdghdf</li><li id="down">sdghdf</li><li id="down" ALIGN="right">dfjfghkfd</li></ul>
            </div>

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
<div class="otzivi1">
<h1> Отзывы </h1><br>

<?php
/* Подключаемся к базе данных */
$db=mysql_connect("localhost", "root","");
mysql_select_db("praktika", $db);

/* Выбираем данные */
$sql="SELECT name, email, message FROM back1";
$result=mysql_query($sql);

while ($line=mysql_fetch_row($result)) {
echo "<div style='border:2px solid; width:50%; padding:5px;'><b>Имя:</b>".$line[0]."<br> <b>Email:</b>".$line[1]."<br><b>Сообщение:</b>".$line[2]."<br></div><br>";
}
?>

            </div>
        </main>
        <footer>
        <p>qwerrtyuiopalskfjhggds</p>
        </footer>
    </body>

    
</html> 