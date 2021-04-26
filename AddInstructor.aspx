<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="AddInstructor.aspx.cs" Inherits="GymProject.AddInstructor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>

body#AddInstructorForm{ background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;}


.panel h2
{
    color:#c0392b;
    font-size:18px; 
    margin:0 0 8px 0;


}
.panel p 
{
    color:#777777;
    font-size:14px; 
    margin-bottom:30px;
    line-height:24px;

}
.AddInstructor-form .form-control {
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

.AddInstructor-form .form-group {
  margin-bottom:10px;
}
.AddInstructor-form{ text-align:center;}
.forgot a {
  color: #777777;
  font-size: 14px;
  text-decoration: underline;
}
.AddInstructor-form  .btn.btn-primary {
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
.AddInstructor-form .btn.btn-primary.reset {
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
            <center>
          <h2>Add Instructor</h2>
          <p>Please enter the details</p>
            </center>
        </div>

        <form id="AddInstructor"  runat="server" >

        <div class="form-group">
            <asp:TextBox ID="inputFirstName" runat="server" type="firstName" class="form-control" placeholder="First name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputFirstName" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <asp:TextBox ID="inputLastName" runat="server" type="lastName" class="form-control" placeholder="Last name"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputLastName" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

            
        <div class="form-group">
            <asp:TextBox ID="inputId" runat="server" type="String" class="form-control" placeholder="ID"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputId" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>


        <div class="form-group">
            <asp:TextBox ID="inputPhoneNum" runat="server" type="PhoneNum" class="form-control" placeholder="Phone number"></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputPhoneNum" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

        <div class="form-group">
            <asp:TextBox ID="inputSalary" runat="server"  type="salary" class="form-control"  placeholder="Salary"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="inputSalary" ForeColor="Red"></asp:RequiredFieldValidator>

        </div>

        
        <div class="form-group">
            <asp:TextBox ID="pass" runat="server" type="pass" class="form-control" placeholder="Pass"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

<center>
       <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" ></asp:Label>
    <br />

      <asp:Button ID="Button1" runat="server" Text="Add" class="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
            <br />
      <a href="Instructors.aspx" class="tColor">Back</a>
                <br />
                  <a href="HomeManager.aspx" class="tColor">HOME</a>
</center>

      </form>
    </div>

  

  </div>

</div>


</asp:Content>
