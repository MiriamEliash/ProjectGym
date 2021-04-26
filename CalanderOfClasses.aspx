<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CalanderOfClasses.aspx.cs" Inherits="GymProject.Calanser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<script src="https://kit.fontawesome.com/a71707a89a.js" crossorigin="anonymous"></script>

<link rel="stylesheet" href="./style.css"/>

<title>Popup Box</title>


<style>
 table 
 { 
       margin: 0px auto; 
      border: 1px solid black;
      border-style:ridge;
      text-align: center;
        height: 600px;
        width: 900px;
 }
th 
{ 
    background-color: beige;
    color: black;
    padding: 5px;
}
td 
{ 
    border: 1 solid black;
    padding: 5px;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
<br />

         <div class="jumbotron p-3 p-md-5 text-black rounded" " style="background-color: beige">
        <div class="col-md-6 px-0">
          <h2 class="display-4 font-italic" style="line-height: 41px;">Welcome</h2>
          <p class="lead my-3">to the place that will make you not give up!</p>

            </div>
        </div>

   <br />

     <table border="1">
    <tr>
    <th> </th>
    <th>Sunday </th>
    <th>Monday </th>
    <th>Tuesday </th>
    <th>Wednesday </th>
    <th>Thursday </th>
    <th>Friday </th>
    <th>Saturday </th>
  </tr>
  <tr>   
     
<asp:Repeater ID="Repeater1" runat="server">

 <ItemTemplate>


  <tr>
                                
     <td class="align-middle"><%# DataBinder.Eval(Container.DataItem, "SetHour") %></td>

     <td >  <%# DataBinder.Eval(Container.DataItem, "Sunday") %>    </td>

     <td> <span ><%# DataBinder.Eval(Container.DataItem, "Monday") %></span></td>

     <td>   <span><%# DataBinder.Eval(Container.DataItem, "Tuesday") %></span> </td>

     <td>   <span ><%# DataBinder.Eval(Container.DataItem, "Wednesday") %></span>  </td>

     <td class="bg-light-gray">   <%# DataBinder.Eval(Container.DataItem, "Thursday") %> </td>

     <td class="bg-light-gray">   <%# DataBinder.Eval(Container.DataItem, "Friday") %> </td>

     <td class="bg-light-gray">   <%# DataBinder.Eval(Container.DataItem, "Saturday") %>   </td>

</tr>
    

    
</ItemTemplate>


    </asp:Repeater>
       </table>

    

   
    <br />
    </form>
</asp:Content>
