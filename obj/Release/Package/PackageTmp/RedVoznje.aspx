<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RedVoznje.aspx.cs" Inherits="B15.RedVoznje" %>

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
                
                <br />
    <asp:Label ID="Label1" runat="server" Text="Linija:"></asp:Label>
        &nbsp;<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="linije/Linija1.txt">Linija1</asp:ListItem>
                <asp:ListItem Value="linije/Linija25.txt">Linija25</asp:ListItem>
                <asp:ListItem Value="linije/Linija45.txt">Linija45</asp:ListItem>
                <asp:ListItem Value="linije/Linija7.txt">Linija7</asp:ListItem>
                <asp:ListItem Value="linije/Linija72.txt">Linija72</asp:ListItem>
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Smer: "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server">
            </asp:DropDownList>
            &nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Prikaži" OnClick="Button1_Click"/>
            <br />
    <br />
                <hr class="fading_line"/>
    Polasci:<br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="redniBr" HeaderText="Rbr"  >
                        <HeaderStyle BorderColor="White" BorderStyle="Solid" BorderWidth="1px" />
                    </asp:BoundField>                    
                    <asp:BoundField DataField="vreme" HeaderText="Polazak" >
                    </asp:BoundField>
                </Columns>
            </asp:GridView>
               
                
            </div>
        </div>
        <div class="footer">
            <div class="fcol1">
                Elektrotehnička škola "Zemun" Beograd
            </div>
            <div class="fcol2">              
                <a class="a" href="/Kontakt.aspx">Kontakt</a>
                <a class="a" href="/KorisnickoUputstvo.aspx">Uputstvo</a>
                <a class="a" href="">O autoru</a>
            </div>           
        </div>
        </div>
    </form>
</body>
</html>
