<%@ Page Title="View Feedbacks" Language="C#" MasterPageFile="~/MasterPage.master"
    AutoEventWireup="true" CodeFile="ViewFeedbacks.aspx.cs" Inherits="ViewFeedbacks" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        /* Style the actual table that the GridView renders */
        .feedback-grid table {
            width: 100%;
            border-collapse: collapse;
            font-family: Arial, sans-serif;
            margin-top: 20px;
        }
        .feedback-grid table th {
            background-color: #3EB489;
            color: white;
            padding: 8px;
            text-align: left;
        }
        .feedback-grid table td {
            background-color: #EBF9F3;
            padding: 6px;
            border: 1px solid #C8E9D9;
        }
        .feedback-grid table tr:nth-child(even) td {
            background-color: #DDF1EB;
        }
        h2{color:Blue;
           font-family:@Malgun Gothic Semilight;
           text-decoration:underline;}
    </style>
</asp:Content>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center> <h2>Submitted Feedbacks</h2>

    <!-- SqlDataSource to fetch Feedbacks -->
    <asp:SqlDataSource ID="SqlDataSourceFeedbacks" runat="server"
        ConnectionString="<%$ ConnectionStrings:MyConn %>"
        SelectCommand="SELECT Name, Email, FeedbackText, FeedbackDate FROM Feedbacks ORDER BY FeedbackDate DESC">
    </asp:SqlDataSource>

    <!-- GridView bound to SqlDataSource -->
    <asp:GridView ID="gvFeedbacks" runat="server"
        CssClass="feedback-grid"
        DataSourceID="SqlDataSourceFeedbacks"
        AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="Name" HeaderText="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:BoundField DataField="FeedbackText" HeaderText="Feedback" />
            <asp:BoundField DataField="FeedbackDate" HeaderText="Date Submitted"
                DataFormatString="{0:dd MMM yyyy}" />
        </Columns>
    </asp:GridView> </center>

</asp:Content>