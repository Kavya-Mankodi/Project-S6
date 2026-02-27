<%@ Page Title="Admin Login" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .login-container {
            background-color: #EBF9F3;
            border: 1px solid #C8E9D9;
            padding: 25px;
            margin: 30px auto;
            width: 320px;
            border-radius: 8px;
            font-family: Arial, sans-serif;
        }
        .login-container h2 {
            text-align: center;
            color: #3EB489;
            margin-bottom: 20px;
        }
        .login-container label {
            display: block;
            margin-top: 10px;
            font-size: 14px;
            color: #444;
        }
        .login-container input[type="text"],
        .login-container input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #3EB489;
            border-radius: 4px;
            font-size: 14px;
        }
        .login-container input[type="submit"] {
            width: 100%;
            margin-top: 15px;
            padding: 10px;
            background-color: #3EB489;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .login-container input[type="submit"]:hover {
            background-color: #318566;
        }
        .login-error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
        #btnLogin{Background-color:Blue;
                  border-style:groove;
                  font:20px;}
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <div class="login-container">
        <h2>Admin Login</h2>
        
        <asp:Label ID="lblAdminID" runat="server" Text="Admin ID:" AssociatedControlID="txtAdminID"></asp:Label>
        <asp:TextBox ID="txtAdminID" runat="server"></asp:TextBox><br />

        <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="txtPassword"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br />

        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" /><br />

        <asp:Label ID="lblMessage" runat="server" CssClass="login-error"></asp:Label>
    </div>
    </center> 
</asp:Content>