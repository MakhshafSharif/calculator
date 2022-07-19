<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="calculator1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function validate() {
            var X = document.getElementById("TextBox1").value;
            var Y = document.getElementById("TextBox2").value;
            console.log(X);
            console.log(Y);
            if (X == "" || Y == "") {
                alert("Please fill it");
                return false;
            }
            else {
                return true;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
            <h1>Calculator</h1>
            <asp:Label ID="Label1" runat="server" Text="X"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2"></asp:TextBox><br/>
            <asp:Label ID="Label2" runat="server" Text="Y"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style2"></asp:TextBox><br/>
             <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Select the following operations</asp:ListItem>  
                <asp:ListItem Value="0">Addition </asp:ListItem>  
                <asp:ListItem Value="1">Subtraction</asp:ListItem>  
                <asp:ListItem Value="2">Multiplication</asp:ListItem>  
                <asp:ListItem Value="3">Division</asp:ListItem>  
            </asp:DropDownList><br/>
        <asp:Button runat="server" ID="Button1" OnClientClick="javascript: return validate();"  Text="Click" OnClick ="btnSubmit_Click1"/>
        <asp:TextBox ID="Output" runat="server" CssClass="auto-style2"></asp:TextBox>
    </form>
</body>
</html>
