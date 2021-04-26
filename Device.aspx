<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Device.aspx.cs" Inherits="GymProject.Device" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form   runat="server">

     <center>

            <br />

    <asp:GridView ID="GridView1" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" runat="server" AutoGenerateColumns="False" Width="500px" CellPadding="4" ForeColor="#333333" GridLines="None"  BorderStyle="Solid" BorderWidth="3px"  Height="500px" CellSpacing="2">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Code device" HeaderText="code" ReadOnly="True" />
            <asp:BoundField DataField="Device name" HeaderText="name" ReadOnly="True" />
            <asp:BoundField DataField="Facility cost" HeaderText="price" />
            <asp:BoundField DataField="Freight company" HeaderText="company" />
            <asp:BoundField DataField="Details" HeaderText="Details" />
            <asp:CommandField HeaderText="Edit" ButtonType="Button" ShowEditButton="True" />
            <asp:CommandField ButtonType="Button" HeaderText="Delete" ShowDeleteButton="True" />
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
<asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>
         <br />   

    <asp:Button ID="Button1" runat="server" Text="New device" OnClick="Button1_Click"/>
                     <br />
                  <a href="HomeManager.aspx" class="tColor">HOME</a>



        </center>
    </td>
     <br />
 </form>
 <br />

</asp:Content>
