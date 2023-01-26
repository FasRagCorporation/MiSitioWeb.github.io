<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Juegos.aspx.cs" Inherits="Prueba.Juegos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Juegos Nuevos</title>
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
        <h1>¿Qué juegos te gustaria que jugara?</h1>
    </header>
    <nav class="menu">
        <div id="div_nav">
            <ul>
                <li><a href="index.html">Inicio</a></li>
                
                <li><a href="Contactanos.aspx">Contáctanos</a></li>
            </ul>
        </div>
        <div id="div_mar">
            <marquee>!!Cualquier sugerencia es buena <3!!</marquee>
        </div>
    </nav>
    <section>
    <form id="form1" runat="server">
        <aside></aside>
        <aside class="aside2"></aside>
        <br /><br /><br />
        <table>
            <tr>
                <td>
                    <asp:Label ID="lbjuego" runat="server" Text="Video Juego:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbjuego" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiereJuego" runat="server" CssClass="validacion" ControlToValidate="tbjuego" ErrorMessange="Campo obligatorio" Text="Campo obligatorio"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:Label ID="lbDescripcion" runat="server" Text="Descripcion del juego"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbDescripcion" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequireDescripcion" runat="server" CssClass="validacion" ControlToValidate="tbDescripcion" ErrorMessange="Campo obligatorio" Text="Campo obligatorio"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lbTipo" runat="server" Text="Tipo de juego:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlTipo" runat="server">
                        <asp:ListItem>Accion</asp:ListItem>
                        <asp:ListItem>RPG</asp:ListItem>
                        <asp:ListItem>Deporte</asp:ListItem>
                        <asp:ListItem>Aventura</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td></td>
                <td>
                    <asp:Label ID="lbCate" runat="server" Text="Modo:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="dlCate" runat="server">
                        <asp:ListItem>Cooperativo</asp:ListItem>
                        <asp:ListItem>Campaña</asp:ListItem>
                        <asp:ListItem>Critica</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <asp:ImageButton ID="btGuardar" runat="server" ImageUrl="imagenes/guardar.png" OnClick="btGuardar_Click" style="height: 32px"></asp:ImageButton>
                    <asp:ImageButton ID="btCancelar" runat="server" ImageUrl="~/imagenes/cancelar.png" OnClick="btCancelar_Click" />
                </td>
            </tr>
        </table>
    </form>
    </section>
</body>
</html>
