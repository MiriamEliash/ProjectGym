<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UsersGraph.aspx.cs" Inherits="GymProject.UsersGraph" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<td>
    <center>


    <asp:Chart runat="server" ID="ctl00">
        <Series>
            <asp:Series Name="Series1" Color="#73d3f2" ChartArea="ChartArea1"></asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
        </ChartAreas>
    </asp:Chart>

    </center>
</td>
</asp:Content>
