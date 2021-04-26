<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="GymProject.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <title>My Awesome SingUp Page</title>
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
			height: 700px;
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
			padding: 0 2rem;
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
								<span class="input-group-text"><i class="fas fa-first_name"></i></span>
							</div>

                                <asp:TextBox ID="First_name" runat="server"  type="text" placeholder="First name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFirst_name" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="First_name" ForeColor="Red"></asp:RequiredFieldValidator>				
						</div>

						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-lastName"></i></span>
							</div>
                                <asp:TextBox ID="Last_name" runat="server"  type="text" placeholder="Last name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredLast_name" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="Last_name" ForeColor="Red"></asp:RequiredFieldValidator>   

						</div>

						
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-ID"></i></span>
							</div>
                                <asp:TextBox ID="input_id" runat="server" type="text" placeholder="ID"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="Required_input_id" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="input_id" ForeColor="Red"></asp:RequiredFieldValidator>   
			    			    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="vStyle" ErrorMessage="תעודת זהות לא תקנית" ValidationExpression="\d{9}" ControlToValidate="input_id"></asp:RegularExpressionValidator>


						</div>


					   <div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-Phone_number"></i></span>
							</div>
                                <asp:TextBox ID="Phone_number" runat="server" type="text" placeholder="Phone number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPhone_number" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="Phone_number" ForeColor="Red"></asp:RequiredFieldValidator>   
						  	    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="vStyle" ErrorMessage="מספר פלאפון לא תקני" ValidationExpression="\d{10}" ControlToValidate="Phone_number"></asp:RegularExpressionValidator>


						</div>


					    <div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-pass1"></i></span>
							</div>
                                <asp:TextBox ID="Password1" runat="server" type="password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPassword1" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="Password1" ForeColor="Red"></asp:RequiredFieldValidator>   

						</div>


					  <div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-pass2"></i></span>
							</div>
                                <asp:TextBox ID="Password2" runat="server" type="password" placeholder="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredPassword2" runat="server" ErrorMessage="**שדה זה לא יכול להיות ריק" ControlToValidate="Password2" ForeColor="Red"></asp:RequiredFieldValidator>   
						        <asp:CompareValidator ID="ComparePassword" runat="server" ErrorMessage="הסיסמאות לא תואמות**" ControlToValidate="Password2" ControlToCompare="Password1"></asp:CompareValidator>

						    	 <asp:Label ID="Label2" runat="server" Text="" ForeColor="Red" ></asp:Label>

					  </div>



				<div class="d-flex justify-content-center mt-3 login_container">
                         <asp:Button ID="Button" runat="server" Text="Sign In" type="submit" value="SignIn" class="btn btn-sm btn-outline-secondary"  OnClick="Button_Click"/>
  
				</div>
		     </form>
	     </div>
		
				<div class="mt-4">
					<div class="d-flex justify-content-center links">
						 have an account? <a href="Login2.aspx" class="ml-2">Log In</a>
					</div>

				</div>
			</div>
		    <br />
		</div>
	</div>


</asp:Content>
