<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Classes.aspx.cs" Inherits="GymProject.Classes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
        <center>
        
            <br />
        
            <br />
        
         <asp:GridView ID="GridView1"  OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"  runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CodeClass" HeaderText="code class" ReadOnly="True" />
            <asp:BoundField DataField="name" HeaderText="name " ReadOnly="True" />
            <asp:BoundField DataField="number of people" HeaderText="number of people" />
            <asp:BoundField DataField="Details" HeaderText="Details" />
            <asp:CommandField ButtonType="Button" HeaderText="Edit" ShowEditButton="True" />
            <asp:ButtonField ButtonType="Button" HeaderText="Delete" Text="Delete" />
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

               <asp:Button ID="Button1" runat="server" Text="Weekly Arrangement" class="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
            <br />
            <br />
             <asp:Button ID="Button2" runat="server" Text="Add New Class" class="btn btn-sm btn-outline-secondary" OnClick="Button2_Click" />

                        <br />
                  <a href="HomeManager.aspx" class="tColor">HOME</a>
            <br />
            <br />
            <br />
            <br />

            </center>

    </form>

</asp:Content>
