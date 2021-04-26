<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="GymProject.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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

    <form runat="server">

        <div class="row sStyle">
            <div class="container">


                <div class="nav-scroller py-1 mb-2">
                    <nav class="nav d-flex justify-content-between">
                        <a class="p-2 text-muted" href="Corona.aspx" spellcheckker="false"
                            style="color: black; background-color: ghostwhite;">Corona regulations</a>

                        <a class="p-2 text-muted" href="SportsClubs.aspx">List of sports clubs</a>

                        <a class="p-2 text-muted" href="DetailsList.aspx" spellcheckker="false"
                            style="color: #ccc; background-color: ghostwhite;">List of devices</a>


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


                    <asp:Button ID="Button1" runat="server" Text="Sign in" class="btn btn-sm btn-outline-secondary" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Sign up" class="btn btn-sm btn-outline-secondary" OnClick="Button2_Click" />
                </div>
                <br />

                <div class="row mb-2">
                    <div class="col-md-6">
                        <div class="card flex-md-row mb-4 box-shadow h-md-250">
                            <div class="card-body d-flex flex-column align-items-start" style="height: 100px; padding-top: 19px; text-decoration-color: rgb(255, 255, 255);">

                                <h3 class="mb-0">
                                    <a class="text-dark" style="padding-top: 0%; margin-top: 15%; min-width: 0px; padding-bottom: 64px; padding-right: 0px;">Why you sould join?</a>
                                </h3>

                                <p class="card-text mb-auto" style="height: 90px; margin-top: 10%">THE GYM offers you a variety of sports classes with experienced instructors and range of special facilities.</p>

                            </div>
                            <img src="Photos/woman.img.jpg" style="width: 200px; height: 200px;" data-holder-rendered="true">
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card flex-md-row mb-4 box-shadow h-md-250">
                            <div class="card-body d-flex flex-column align-items-start">
                                <p class="d-inline-block mb-2 text-success">So..? Are you ready?</p>
                                <h3 class="mb-0">
                                    <p class="text-dark">How to join?</p>
                                </h3>

                                <p class="card-text mb-auto" style="margin-bottom: 64px; padding-bottom: 0px; height: 50px;">Click the button above, enter your details and that's it, <u>welcome!</u></p>

                            </div>
                            <img src="Photos/together.img.jpg" data-holder-rendered="true" style="width: 200px; height: 200px;" />
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-1"></div>
        </div>


        <div class="row">

            <div class="col-1"></div>
            <div class="col-5 sStyle">
                <div class="p-3 mb-3 bg-light rounded" style="background-color: rgb(206, 199, 199); height: 200px; margin-right: 0px;">
                    <h4 class="font-italic">Where?</h4>
                    <p class="mb-0">
                        You can find us in Tel Aviv,
                        <br />
                        Menachem Begin 53.
                        <br />
                        Also, you can look at our instegram page and facebok.
                        <br>
                        <u>@TheGym</u>
                    </p>

                </div>
            </div>


            <div class="col-5 sStyle">
                <div class="p-3 mb-3 bg-light rounded" style="background-color: rgb(206, 199, 199); height: 200px; margin-right: 0px;">
                    <h4 class="font-italic">About us</h4>
                    <p class="mb-0 sStyle">
                        The gym has been open since 1999.
                        <br />
                        Since opening the place is full of experienced instructors, a variety of classes and satisfied trainees.
                        <br />

                    </p>

                </div>
            </div>


            <div class="col-1"></div>

        </div>




        <br />

    </form>


</asp:Content>
