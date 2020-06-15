<%@ Page Title="Control de Vehiculos" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="ControlVehiculos.aspx.cs" Inherits="Diproma.Vistas.ControlVehiculos" %>

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
            <a class="nav-link" href="ControlMetas.aspx">
                <span data-feather="bar-chart"></span>
                Metas
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="ControlVehiculos.aspx">
                <span data-feather="navigation"></span>
                Vehiculos
            </a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Control de Vehiculos</h1>
    </div>

    <div class="table-responsive">
        <asp:Table runat="server" ID="tblVehiculos" CssClass="table table-hover table-striped table-sm">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>Placa</asp:TableHeaderCell>
                <asp:TableHeaderCell>Motor</asp:TableHeaderCell>
                <asp:TableHeaderCell>Chasis</asp:TableHeaderCell>
                <asp:TableHeaderCell>Marca</asp:TableHeaderCell>
                <asp:TableHeaderCell>Estilo</asp:TableHeaderCell>
                <asp:TableHeaderCell>Modelo</asp:TableHeaderCell>
                <asp:TableHeaderCell>NIT Usuario</asp:TableHeaderCell>
                <asp:TableHeaderCell>Nombre de Encargado</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </div>

</asp:Content>
