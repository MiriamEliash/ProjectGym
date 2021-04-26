<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DetailsList.aspx.cs" Inherits="GymProject.DetailsList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        body {
            background: beige;
        }

        span {
            font-size: 15px;
        }

        a {
            text-decoration: none;
            color: #0062cc;
            border-bottom: 2px solid #0062cc;
        }

        .box {
            padding: 60px 0px;
        }

        .box-part {
            background: #FFF;
            border-radius: 0;
            padding: 60px 10px;
            margin: 30px 0px;
        }

        .text {
            margin: 20px 0px;
        }

        .fa {
            color: #4183D7;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <form runat="server">
        <center>

      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<asp:Repeater ID="Repeater1" runat="server">
    <ItemTemplate>
         <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center">
                        
                        <i class="fa fa-weight fa-3x" aria-hidden="true"></i>
                        
						<div class="title">
                            <b>
							<asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                                </b>
						</div>
                        
						<div class="text">
                            
							<asp:Label ID="Label2" runat="server" Text='<%#Eval("Details") %>'></asp:Label>
                           

						</div>
                        
                        
					 </div>
				</div>	
    </ItemTemplate>
    			

</asp:Repeater>

            <br />

                        						<a href="HomeSubscribers.aspx">HOME</a>

            <br />
            <br /> 
        </center>
    </form>


</asp:Content>
