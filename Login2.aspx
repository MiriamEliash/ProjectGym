<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="Login2.aspx.cs" Inherits="GymProject.Login2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <title>My Awesome Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <style>
	body,
	html {  
			margin: 0;
			padding: 0;
			height: 100%;
			background: beige !important;
		}
		.user_card {
			height: 400px;
			width: 350px;
			margin-top: 70px;
			margin-bottom: auto;
			background: white;
			position: relative;
			display: flex;
			justify-content: center;
			flex-direction: column;
			padding: 70px;
			box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-webkit-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			-moz-box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
			border-radius: 5px;
		}
		.brand_logo_container {
			position: absolute;
			height: 170px;
			width: 170px;
			top: -75px;
			border-radius: 50%;
			background:white ;
			padding: 10px;
			text-align: center;
		}
		.brand_logo {
			height: 150px;
			width: 150px;
			border-radius: 50%;
			border: 2px solid white;
		}
		.form_container {
			margin-top: 100px;
		}
		.login_btn {
			width: 100%;
			background: #ADD8E6 !important;
			color: white !important;
		}
		.login_btn:focus {
			box-shadow: none !important;
			outline: 0px !important;
		}
		.login_container {
			padding: 0 6rem;
		}
		.input-group-text {
			background: #ADD8E6 !important;
			color: white !important;
			border: 0 !important;
			border-radius: 0.25rem 0 0 0.25rem !important;
			
			
		}
		.input_user,
		.input_pass:focus {
			box-shadow: none !important;
			outline: 0px !important;
			
			
		}
		.custom-checkbox .custom-control-input:checked~.custom-control-label::before {
			background-color: #c0392b !important;
			
		}
		
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

	<br />
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
					  <img src="photos/logo2.img.jpg"  class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container" >
					<form runat=server>
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>

                                <asp:TextBox ID="ID" runat="server" type="text" placeholder="Username(ID)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredUsername1" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="ID" ForeColor="Red"></asp:RequiredFieldValidator>	
							    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="vStyle" ErrorMessage="תעודת זהות לא תקנית" ValidationExpression="\d{9}" ControlToValidate="ID"></asp:RegularExpressionValidator>

						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>


                                <asp:TextBox ID="pass" runat="server" type="password" placeholder="Password" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPass" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="pass" ForeColor="Red"></asp:RequiredFieldValidator>
                                <asp:Label ID="Label1" runat="server" Text="" ForeColor="Red"></asp:Label>

						</div>
						<div class="form-group">
							<div class="custom-control custom-checkbox">
								
								<asp:CheckBoxList ID="customControlInline"  type="checkbox" class="checkbox-inline" runat="server"></asp:CheckBoxList>
								<label class="custom-control-label" for="customControlInline">Remember me</label>
							</div>
						</div>
							<div class="d-flex justify-content-center mt-3 login_container">
                         <asp:Button ID="Button2" runat="server" Text="Log In" type="submit" value="Login" class="btn btn-sm btn-outline-secondary"  OnClick ="Button2_Click"/>

                        
				   </div>
					</form>
				</div>
		
              <div id="register-link" class="text-center">
                <a href="Register.aspx" class="tColor">Click here to sign up</a>
             </div>

				</div>
			<br />
            <br />
			<br />
			</div>
		</div>
	</div>

</asp:Content>
