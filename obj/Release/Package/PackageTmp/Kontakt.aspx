<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kontakt.aspx.cs" Inherits="B15.Kontakt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="styleB15.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
            <div class="hcol1">
                Zadatak 7
            </div>
            <div class="hcol2">
                Red vožnje           
            </div>           
        </div>
        <div class="main">
            <div class="container">                
                <asp:Label ID="Label1" runat="server" Text="Ime:"></asp:Label>
                
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="E-mail:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Naslov poruke:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Poruka:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Posalji" />
                
                
            </div>
        </div>
        <div class="footer">
            <div class="fcol1">
                Elektrotehnička škola "Zemun" Beograd
            </div>
            <div class="fcol2">    
                <a class="a" href="/RedVoznje.aspx">Početna</a>
                <a class="a" href="/Kontakt.aspx">Kontakt</a>
                <a class="a" href="/KorisnickoUputstvo.aspx">Uputstvo</a>
                
            </div>           
        </div>
        </div>
    </form>
</body>
</html>
