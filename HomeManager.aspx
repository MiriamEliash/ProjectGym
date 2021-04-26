<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomeManager.aspx.cs" Inherits="GymProject.HomeManager" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sStyle
        {
           margin:3% 0% 1% 0%;
       
        }
        .textStyle
        {
            margin-left:1%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">

        <div class="row sStyle" >
        <div class="container">
            
            <div class="nav-scroller py-1 mb-2">
                <nav class="nav d-flex justify-content-between">
                    <a class="p-2 text-muted" href="Classes.aspx" spellcheckker="false"
                        style="color: black; background-color: ghostwhite;">Classes</a>

                    <a class="p-2 text-muted" href="Instructors.aspx">Instructors</a>

                    <a class="p-2 text-muted" href="Subscribers.aspx" spellcheckker="false"
                        style="color: #ccc; background-color:ghostwhite;">Subscribers</a>

                    <a class="p-2 text-muted" href="Device.aspx">Device</a>

                    <a class="p-2 text-muted" href="CalanderOfClasses.aspx" spellcheckker="false"
                        style="color: #ccc; background-color: ghostwhite;">Calander</a>
                </nav>
            </div>
        </div>
            </div>

        <div class="row">
            <div class="col-1"></div>
            <div class="col-10" style="background-color: beige">
                <div class="col-md-6 textStyle">
                    <h2 class="display-4 font-italic" style="line-height: 41px;">Welcome</h2>
                    <p class="lead my-3">Let's start working! </p>
                   

                    <asp:Button ID="Button1" runat="server" Text="Calander" class="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />

                </div>
                <br />

                <div class="row mb-2">
                    <div class="col-md-6">
                        <div class="card flex-md-row mb-4 box-shadow h-md-250">
                            <div class="card-body d-flex flex-column align-items-start" style="height: 100px; padding-top: 19px; text-decoration-color: rgb(255, 255, 255);">

                                <h3 class="mb-0">
                                    <a class="text-dark" style="padding-top:0% ; margin-top:15%; min-width: 0px; padding-bottom: 64px; padding-right: 0px;">Good manager is..?</a>
                                </h3>

                                <p class="card-text mb-auto" style="height: 90px; margin-top:5%">A soft person who knew how to accommodate the employees, consider their needs, had creative thinking outside the box and one who knew how to get the best out of the employees.</p>

                            </div>
                            <img src="Photos/clock.jpg" style="width: 200px; height: 200px;" data-holder-rendered="true">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card flex-md-row mb-4 box-shadow h-md-250">
                            <div class="card-body d-flex flex-column align-items-start">
                                <p class="d-inline-block mb-2 text-success">So..? Are you ready?</p>
                                <h3 class="mb-0">
                                    <p class="text-dark">What's new lately?</p>
                                </h3>
                                
                                <p class="card-text mb-auto" style="margin-bottom: 64px; padding-bottom: 0px; height: 50px;">Click the button below..</p>
                                <asp:Button ID="Button2" class="btn btn-sm btn-outline-secondary" runat="server" Text="Site Uses" OnClick="Button2_Click" />
                            </div>
                            <img src="Photos/gym.jpg" data-holder-rendered="true" style="width: 200px; height: 200px;" />
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-1"></div>
        </div>


       




        <br />
        <br />


       




        <br />

    </form>


</asp:Content>
