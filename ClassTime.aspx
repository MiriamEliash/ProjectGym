<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ClassTime.aspx.cs" Inherits="GymProject.ClassTime" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <form runat="server">

        <br />
        
          <div class="jumbotron p-3 p-md-5 text-black rounded" " style="background-color: beige">
        <div class="col-md-6 px-0">
          <h2 class="display-4 font-italic" style="line-height: 41px;">So, what should be done?</h2>
          <p class="lead my-3">Choose a class, instructor, day, time and that's it, you've done the job!</p>
            <br />

        </div>
              </div>

    <asp:DropDownList ID="codeClass" runat="server" OnSelectedIndexChanged="codeClass_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
        <br />
        <br />
    <asp:DropDownList ID="fullName" runat="server" OnSelectedIndexChanged="fullName_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
           <br />
           <br />
    <asp:DropDownList ID="Day" runat="server"  AutoPostBack="true"  >
        <asp:ListItem Value="1">Sunday</asp:ListItem>
        <asp:ListItem Value="2">Monday</asp:ListItem>
        <asp:ListItem Value="3">Tuesday</asp:ListItem>
        <asp:ListItem Value="4">Wednesday</asp:ListItem>
        <asp:ListItem Value="5">Thursday</asp:ListItem>
        <asp:ListItem Value="6">Friday</asp:ListItem>
        <asp:ListItem Value="7">Saturday</asp:ListItem>
    </asp:DropDownList>
           <br />
           <br />
    <asp:DropDownList ID="Hour" runat="server" AutoPostBack="true">
        <asp:ListItem Value="1">08:00</asp:ListItem>
        <asp:ListItem Value="2">10:00</asp:ListItem>
        <asp:ListItem Value="3">15:00</asp:ListItem>
        <asp:ListItem Value="4">16:00</asp:ListItem>
        <asp:ListItem Value="5">20:00</asp:ListItem>
        <asp:ListItem Value="6">21:00</asp:ListItem>
    </asp:DropDownList>
           <br />

        <br />
         <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" ></asp:Label>
        <br />
       <asp:Button ID="Button1"  class="btn btn-sm btn-outline-secondary"  runat="server" Text="save"  OnClick="Button1_Click"></asp:Button>
        <br />
         <a href="Classes.aspx" class="tColor">Back</a>
                    <br />
                  <a href="HomeManager.aspx" class="tColor">HOME</a>
        <br />
        <br />
    </form>
</center> 
</asp:Content>
