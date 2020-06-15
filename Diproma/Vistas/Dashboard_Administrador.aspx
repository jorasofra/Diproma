<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="Dashboard_Administrador.aspx.cs" Inherits="Diproma.Vistas.Dashboard_Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--CONTIENE EL SCRIPT NECESARIO PARA EL CATALOGO-->
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">
    <link href="../css/album.css" type="text/css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!--CONTIENE LA BARRA DE MENÚ DEL LADO IZQUIERDO-->
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link active" href="Dashboard_Administrador.aspx">
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
            <a class="nav-link" href="ControlVehiculos.aspx">
                <span data-feather="navigation"></span>
                Vehiculos
            </a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Pagina de Inicio</h1>
    </div>

    <div class="album py-5 bg-ligth">
        <div class="container">
            <div class="row">
                
                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c" />
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Administrar Usuarios</text></svg>
                        <div class="card-body">
                            <p class="card-text">Crea, elimina y actualiza registros de usuarios.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" ID="btnEntrarUsuarios" Text="Entrar" OnClick="btnEntrarUsuarios_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c" />
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Metas</text></svg>
                        <div class="card-body">
                            <p class="card-text">Visualiza el cumplimiento de las metas mensuales.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" ID="btnEntrarMetas" Text="Entrar" OnClick="btnEntrarMetas_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title>
                            <rect width="100%" height="100%" fill="#55595c" />
                            <text x="50%" y="50%" fill="#eceeef" dy=".3em">Ver actividad de Vehiculos</text></svg>
                        <div class="card-body">
                            <p class="card-text">Controla el kilometraje de los vehiculos usados.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" ID="btnEntrarVehiculos" Text="Entrar" OnClick="btnEntrarVehiculos_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

            </div>
        </div>
    </div>

</asp:Content>
