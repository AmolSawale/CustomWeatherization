<%@ page title="" language="C#" masterpagefile="~/Admin/Admin_Master_Page.master" autoeventwireup="true" inherits="Manage_PaidReport, App_Web_manage_paidreport.aspx.fdf7a39c" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />
    <br />
    <h1>Manage Payments</h1>
    <asp:HiddenField ID="hdnID" Value="" runat="server" />
    <table align="center">
        <tr>
            <td>Job Number:</td>
            <td>
                <asp:TextBox ID="txtJobNumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Total Amount:</td>
            <td>
                <asp:TextBox ID="txtTamt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Paid Amount:</td>
            <td>
                <asp:TextBox ID="txtPamt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Remaining Amount:</td>
            <td>
                <asp:TextBox ID="txtRamt" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:Button ID="rtn_Update" runat="server" Text="Update" OnClick="rtn_Update_Click" />
            </td>
        </tr>
    </table>

</asp:Content>

