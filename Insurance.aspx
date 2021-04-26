<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Insurance.aspx.cs" Inherits="GymProject.Insurance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
    <center>

   <br />
        <br />

    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="ID" />
            <asp:BoundField DataField="firstName" HeaderText="First Name" />
            <asp:BoundField DataField="lastName" HeaderText="Last Name" />
            <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" />
            <asp:CheckBoxField DataField="IsApprove" HeaderText="Is Improve?" />
        </Columns>
        <EditRowStyle BackColor="#7C6F57" />
        <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#E3EAEB" />
        <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F8FAFA" />
        <SortedAscendingHeaderStyle BackColor="#246B61" />
        <SortedDescendingCellStyle BackColor="#D4DFE1" />
        <SortedDescendingHeaderStyle BackColor="#15524A" />


    </asp:GridView>
        <br />
        <asp:Button ID="Button3" runat="server" Text="update select items" class="btn btn-sm btn-outline-secondary" OnClick="Button3_Click" />

            <br />

            <br />
      <asp:Button ID="Button1" runat="server" Text="Improve Insurance" class="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      <asp:Button ID="Button2" runat="server" Text="Not Improve Insurance" class="btn btn-sm btn-outline-secondary" OnClick="Button2_Click" />
            <br />
        <br />
        <br />
     </center>
        </form>
</asp:Content>
