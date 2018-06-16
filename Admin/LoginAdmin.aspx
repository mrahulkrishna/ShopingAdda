﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginAdmin.aspx.cs" Inherits="ShopingAdda.Admin.LoginAdmin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <title> Admin Panel</title>
</head>
<body class="body">
    <form id="form1" runat="server">
    <div style="margin: 200px;">
        <table align="center" style="border: 1px ridge #999999; width: 450px;">
            <tr>
                <td align="center" colspan="2">
                    <asp:Label ID="Label1" runat="server" Font-Names="Aharoni" ForeColor="#006699" Text="ADMIN PANEL"></asp:Label>
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%;">
                    LoginId :
                </td>
                <td align="center" style="width: 50%;">
                    <asp:TextBox ID="txtLoginId" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%;">
                    Password :
                </td>
                <td align="center" style="width: 50%;">
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 50%;">
                    &nbsp;
                </td>
                <td align="center" style="width: 50%;">
                    <asp:Button ID="btnLogin" runat="server" Text="Login"  Width="70px" 
                        onclick="btnLogin_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <hr />
                    <asp:Label ID="lblAlert" runat="server" Font-Names="Aharoni" ForeColor="Red" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    &nbsp; &copy; 2017<a href="../Home.aspx">Shopping Adda</a>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
