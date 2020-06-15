<%@ Page Title="Control de Metas" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="ControlMetas.aspx.cs" Inherits="Diproma.Vistas.ControlMetas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <!--CONTIENE LA BARRA DE MENÚ DEL LADO IZQUIERDO-->
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link" href="Dashboard_Administrador.aspx">
                <span data-feather="home"></span>
                Inicio <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="AdministrarUsuarios.aspx">
                <span data-feather="users"></span>
                Usuarios
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="ControlMetas.aspx">
                <span data-feather="bar-chart"></span>
                Metas
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="ControlVehiculos.aspx">
                <span data-feather="navigation"></span>
                Vehiculos
            </a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
