<%@ Page Language="C#" AutoEventWireup="true"
    CodeFile="Feedback.aspx.cs" Inherits="Feedback"
    MasterPageFile="~/MasterPage.master" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .form-container {
            background: #f9f9f9;
            padding: 20px 25px;
            margin: auto;
            max-width: 480px;
            font-family: Arial, sans-serif;
        }
       #h2{
            text-align: center;
            margin-bottom: 18px;
            color: Blue;
        }
        .form-container label {
            display: block;
            font-size: 15px;
            margin-top: 10px;
            color: #444;
        }
        .form-container input[type="text"],
        .form-container input[type="email"],
        .form-container textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #bbb;
            border-radius: 6px;
            margin-top: 4px;
            font-size: 14px;
        }
        .form-container input[type="text"]:focus,
        .form-container input[type="email"]:focus,
        .form-container textarea:focus {
            border-color: #0077cc;
            box-shadow: 0 0 5px rgba(0,119,204,0.25);
            outline: none;
        }
        .form-container input[type="submit"] {
            width: 100%;
            margin-top: 16px;
            padding: 10px;
            font-size: 16px;
            background: #0077cc;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .form-container input[type="submit"]:hover {
            background: #005fa1;
        }
        .status {
            text-align: center;
            margin-top: 12px;
            font-size: 14px;
        }
        .form-table td {
            padding: 4px;
        }
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-container">
        <h2 id="h2">Submit Your Feedback</h2>
        <center>
        <table class="form-table">
            <tr>
                <td><asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server"
                        ControlToValidate="txtName" ErrorMessage="* Required"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td><asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="181px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail" ErrorMessage="* Required"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="* Invalid Format"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td><asp:Label ID="lblFeedback" runat="server" Text="Feedback:"></asp:Label></td>
                <td>
                    <asp:TextBox ID="txtFeedback" runat="server"
                        TextMode="MultiLine" Rows="5"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfvFeedback" runat="server"
                        ControlToValidate="txtFeedback" ErrorMessage="* Required"
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit"
                        OnClick="btnSubmit_Click" />
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblStatus" runat="server" CssClass="status"></asp:Label>
                </td>
            </tr>
        </table>
        </center>
    </div>

</asp:Content>