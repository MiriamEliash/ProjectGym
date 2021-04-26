<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AddDevice.aspx.cs" Inherits="GymProject.AddDevice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>

body#AddDeviceForm{ background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}


.panel h2{ color:#c0392b; font-size:18px; margin:0 0 8px 0;}
.panel p { color:#777777; font-size:14px; margin-bottom:30px; line-height:24px;}
.AddDevice-form .form-control {
  background: beige none repeat scroll 0 0;
  border: 1px solid #d4d4d4;
  border-radius: 4px;
  font-size: 14px;
  height: 50px;
  line-height: 50px;
}
.main-div {
  background: #ffffff none repeat scroll 0 0;
  border-radius: 2px;
  margin: 10px auto 30px;
  max-width: 38%;
  padding: 50px 70px 70px 71px;
}

.AddDevice-form .form-group {
  margin-bottom:10px;
}
.AddDevice-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.AddDevice-form  .btn.btn-primary {
  background: #f0ad4e none repeat scroll 0 0;
  border-color: #f0ad4e;
  color: #ffffff;
  font-size: 14px;
  width: 100%;
  height: 50px;
  line-height: 50px;
  padding: 0;
}

.botton-text {
  color: #ffffff;
  font-size: 14px;
  margin: auto;
}
.AddDevice-form .btn.btn-primary.reset {
  background: #ff9900 none repeat scroll 0 0;
}
.back { text-align: left; margin-top:10px;}
.back a {color: #444444; font-size: 13px;text-decoration: none;}

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
 
  <div class="AddDevice-form">
    <div class="main-div">
        <div class="panel">
          <h2>Add Device</h2>
          <p>Please enter the details</p>
        </div>

        <form id="AddDevice"  runat="server" >

        <div class="form-group">
            <asp:TextBox ID="inputCodeDevice" runat="server" type="CodeDevice" class="form-control" placeholder="Code device"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredUsername1" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputCodeDevice" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div class="form-group">
            <asp:TextBox ID="inputName" runat="server" type="name" class="form-control" placeholder="Device name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputName" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <asp:TextBox ID="inputFacilityCost" runat="server" type="FacilityCost" class="form-control" placeholder="Facility cost"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputFacilityCost" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <asp:TextBox ID="inputFreightCompany" runat="server"  type="FreightCompany" class="form-control"  placeholder="Freight company"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputFreightCompany" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <asp:TextBox ID="inputDetails" runat="server"  type="Details" class="form-control"  placeholder="Details"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputDetails" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

       <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" ></asp:Label>

      <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-sm btn-outline-secondary"  OnClick="Button1_Click" />
            <br />
      <a href="Device.aspx" class="tColor">Back</a>
                        <br />
                  <a href="HomeManager.aspx" class="tColor">HOME</a>


      </form>
    </div>

  

  </div>

</div>
  

</asp:Content>
