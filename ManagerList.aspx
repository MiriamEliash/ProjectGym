<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ManagerList.aspx.cs" Inherits="GymProject.ManagerLisht" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">
        <center>
            <br />
<asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="500px" CellPadding="3"  BorderStyle="None" BorderWidth="1px"  Height="500px" BackColor="White" BorderColor="#CCCCCC">
         <Columns>
             <asp:BoundField DataField="[First name]" HeaderText="First Name" />
             <asp:BoundField DataField="[Last name]" HeaderText="Last Name" />
         </Columns>
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <RowStyle ForeColor="#000066" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
         <SortedAscendingCellStyle BackColor="#F1F1F1" />
         <SortedAscendingHeaderStyle BackColor="#007DBB" />
         <SortedDescendingCellStyle BackColor="#CAC9C9" />
         <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>

            <br />
                        <br />
                  <a href="HomeManager.aspx" class="tColor">HOME</a>

        </center>
    </form>

</asp:Content>
