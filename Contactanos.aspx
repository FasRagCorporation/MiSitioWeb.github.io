<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactanos.aspx.cs" Inherits="Prueba.Contactanos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Contactanos</title>
    <meta name="author" content="Agustin Cedano López"/>
    <link rel="icon" href="imagenes/icono_ico.ico" />
    <link rel="stylesheet" type="text/css" href="estilo/sug.css"/>

    <style>
        header {
			background-image:url("imagenes/Portada21.jpg");
			background-repeat: no-repeat;
			background-size: 100%;
			height: 370px;
			opacity: 0.8;
		}
    </style>
</head>
<body>
    <header>
        <a href="GG_127.aspx"><img class="img2" src="imagenes/icono.jpeg" /></a>
        <a href="https://www.facebook.com/GusGamer-127-111047737486157"><img class="img" src="imagenes/Face.png" /></a>
        <a href="https://www.twitch.tv/xxgusgamer_127xx"><img class="img" src="imagenes/Twitch.png" /></a>
        <a href="https://www.youtube.com/channel/UCOm-ZrZn3MgrHq-eXM9_oxA"><img class="img" src="imagenes/You.png" /></a>
    </header>
    <nav class="menu">
        <div id="div_nav">
            <ul>
                <li><a href="index.html">Inicio</a></li>
            </ul>
        </div>
        <div id="div_mar">
            <marquee>!!No olvides pasr por mis redes sociales <3!!</marquee>
        </div>
    </nav>
    <aside>
    </aside>
    <aside class="aside2"></aside><br /><br />
    <form id="form1" runat="server">
        <h1>Contancanos en...</h1>
        <br />
        <h2>WhatsApp</h2>
        <p>311-101-0541</p><br />
        <h2>Correo</h2>
        <p>agustin.cedano.4@gmail.com</p>
    </form>
</body>
</html>
