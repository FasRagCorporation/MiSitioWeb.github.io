<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Juegos Nuevos.aspx.cs" Inherits="Prueba.BajaJ" %>

<%@ Register assembly="DevExpress.Web.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Baja Juegos</title>
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
       
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" EnableTheming="True" KeyFieldName="IdJuegos" Theme="RedWine">
            <Settings ShowFilterRow="True" />
            <SettingsCommandButton>
                <NewButton ButtonType="Image" RenderMode="Image">
                    <Image ToolTip="Nuevo Juego" Url="~/imagenes/nuevo.png">
                    </Image>
                </NewButton>
                <UpdateButton ButtonType="Image" RenderMode="Image">
                    <Image ToolTip="Guardar Juego" Url="~/imagenes/guardar.png">
                    </Image>
                </UpdateButton>
                <CancelButton ButtonType="Image" RenderMode="Image">
                    <Image ToolTip="Cancelar Alta del Juego" Url="~/imagenes/cancelar.png">
                    </Image>
                </CancelButton>
                <EditButton ButtonType="Image" RenderMode="Image">
                    <Image ToolTip="Editar" Url="~/imagenes/editar.png">
                    </Image>
                </EditButton>
                <DeleteButton ButtonType="Image" RenderMode="Image">
                    <Image ToolTip="Eliminar registro" Url="~/imagenes/eliminar.png">
                    </Image>
                </DeleteButton>
            </SettingsCommandButton>
            <Columns>
                <dx:GridViewCommandColumn ShowClearFilterButton="True" ShowDeleteButton="True" ShowEditButton="True" ShowNewButtonInHeader="True" VisibleIndex="0">
                    <HeaderStyle BackColor="#CC0000" />
                    <CellStyle BackColor="#CC0000">
                    </CellStyle>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="IdJuegos" ReadOnly="True" Visible="False" VisibleIndex="1">
                    <EditFormSettings Visible="False" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Nombre del Juego" FieldName="Nombre" VisibleIndex="2">
                    <HeaderStyle BackColor="#CC0000" Font-Bold="True" Font-Names="Palatino Linotype" Font-Size="Medium" HorizontalAlign="Center" />
                    <CellStyle Font-Names="Palatino Linotype" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Descripción del Juego" FieldName="Descripcion" VisibleIndex="3">
                    <HeaderStyle BackColor="#CC0000" Font-Bold="True" Font-Names="Palatino Linotype" Font-Size="Medium" HorizontalAlign="Center" />
                    <CellStyle Font-Names="Palatino Linotype" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn FieldName="Categoria" VisibleIndex="4">
                    <PropertiesComboBox DataSourceID="SqlJuegos" TextField="Categoria" ValueField="Categoria">
                    </PropertiesComboBox>
                    <HeaderStyle BackColor="#CC0000" Font-Bold="True" Font-Names="Palatino Linotype" Font-Size="Medium" HorizontalAlign="Center" />
                    <CellStyle Font-Names="Palatino Linotype" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn FieldName="Tipo" VisibleIndex="5">
                    <PropertiesComboBox DataSourceID="SqlJuegos" TextField="Tipo" ValueField="Tipo">
                    </PropertiesComboBox>
                    <HeaderStyle BackColor="#CC0000" Font-Bold="True" Font-Names="Palatino Linotype" Font-Size="Medium" HorizontalAlign="Center" />
                    <CellStyle Font-Names="Palatino Linotype" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataComboBoxColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:PaginaCConnectionString %>" DeleteCommand="DELETE FROM [Juegos] WHERE [IdJuegos] = @original_IdJuegos AND [Nombre] = @original_Nombre AND [Descripcion] = @original_Descripcion AND [Categoria] = @original_Categoria AND [Tipo] = @original_Tipo" InsertCommand="INSERT INTO [Juegos] ([Nombre], [Descripcion], [Categoria], [Tipo]) VALUES (@Nombre, @Descripcion, @Categoria, @Tipo)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Juegos]" UpdateCommand="UPDATE [Juegos] SET [Nombre] = @Nombre, [Descripcion] = @Descripcion, [Categoria] = @Categoria, [Tipo] = @Tipo WHERE [IdJuegos] = @original_IdJuegos AND [Nombre] = @original_Nombre AND [Descripcion] = @original_Descripcion AND [Categoria] = @original_Categoria AND [Tipo] = @original_Tipo">
            <DeleteParameters>
                <asp:Parameter Name="original_IdJuegos" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Descripcion" Type="String" />
                <asp:Parameter Name="original_Categoria" Type="String" />
                <asp:Parameter Name="original_Tipo" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Categoria" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Descripcion" Type="String" />
                <asp:Parameter Name="Categoria" Type="String" />
                <asp:Parameter Name="Tipo" Type="String" />
                <asp:Parameter Name="original_IdJuegos" Type="Int32" />
                <asp:Parameter Name="original_Nombre" Type="String" />
                <asp:Parameter Name="original_Descripcion" Type="String" />
                <asp:Parameter Name="original_Categoria" Type="String" />
                <asp:Parameter Name="original_Tipo" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlJuegos" runat="server" ConnectionString="<%$ ConnectionStrings:PaginaCConnectionString %>" SelectCommand="SELECT * FROM [Juegos]"></asp:SqlDataSource>
       
    </form>
</body>
</html>
