<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Save.aspx.cs" Inherits="GymProject.Save" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><td> 
    <form runat="server">
<div class="col-2"></div>
        <div class="col-6">
     <div class="jumbotron p-3 p-md-5 text-black rounded" " style="background-color: beige" >
        <div class="col-md-6 px-0">
        
           <asp:Label ID="Label1" runat="server" class="display-15 font-italic" Text="" ForeColor="black" ></asp:Label>

            </div>
        </div>
            </div>

      <br />
        <div= class="col-2">
            <asp:Label ID="Label2" runat="server" Text="" ForeColor="black" ></asp:Label>
        <br />
      <asp:Button ID="Button1" runat="server" Text="Save" class="btn btn-sm btn-outline-secondary" OnClick="Button1_Click"/>
            <br />
      <a href="CalanderOfClasses.aspx" class="tColor">Back</a>
            </div>  
        <div class="col-2">
            <br />
            <br />
            <br />
        </div>
</form>
       </td></center>
</asp:Content>
