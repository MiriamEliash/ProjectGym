<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Corona.aspx.cs" Inherits="GymProject.Corona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../../../favicon.ico">

    <title>Narrow Jumbotron Template for Bootstrap</title>

    <!-- Bootstrap core CSS -->
    <link href="../../css/editor.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="narrow-jumbotron.css" rel="stylesheet">


    <style>
        .sStyle {
            margin: 3% 0% 1% 0%;
        }

        .textStyle {
            margin-left: 1%;
        }
   

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row sStyle">
        <div class="container">



            <div class="nav-scroller py-1 mb-2">
                <nav class="nav d-flex justify-content-between">

                    <a class="p-2 text-muted" href="#" spellcheckker="false"
                        style="color: black; background-color: ghostwhite;">List of sports clubs</a>

                    <a class="p-2 text-muted" href="#" spellcheckker="false"
                        style="color: #ccc; background-color: ghostwhite;">List of devices</a>


                </nav>
            </div>

        </div>
    </div>


    <div class="row">
        <div class="col-1"></div>
        <div class="jumbotron col-10 sStyle " style="background-color: beige">
             
            <center>
            <p class="lead"><b>Corona regulations</b></p>

            <p class="lead">At the meeting it was decided that the fitness industry it will do so under the outline proposed by the Fitness Forum to the Ministry of Health, allowing full control over the guidelines and absolute ability to prevent crowds and queues and includes the following rules:</p>
            </center>
        </div>
        <div class="col-1"></div>
    </div>

        <div class="row">
        <div class="col-1"></div>
        <div class="jumbotron col-10 sStyle" style="background-color: ghostwhite">
             
            <center>
      

            <p class="lead">* Fitness clubs will open in green and yellow cities only.
                <br />
                * We will not accept a person to the fitness club who has symptoms of coronary heart disease / fever.
                <br />
                * During all hours of operation, the staff will wear masks and follow the instructions.
                <br />
                * We will provide disposable wipes for cleaning and disinfecting equipment throughout the club, and alcohol stations near each activity area.
                <br />
                * It will be maintained that the customer audience will be local only and only for regular subscribers in order to avoid random meetings.
            </p>
                   <img src="Photos/evryone.jpg" style="width: 500px; height: 250px;" data-holder-rendered="true">
            </center>
        </div>
        <div class="col-1"></div>
    </div>

   
                        <br />
                <center><a href="HomeSubscribers.aspx" class="tColor">HOME</a></center>  

    <br />
    <br />



</asp:Content>
