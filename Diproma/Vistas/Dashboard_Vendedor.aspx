<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="Dashboard_Vendedor.aspx.cs" Inherits="Diproma.Vistas.Dashboard_Vendedor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!--CONTIENE EL SCRIPT NECESARIO PARA EL CATALOGO-->
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">
    <link href="../css/album.css" type="text/css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!--CONTIENE LA BARRA DE MENÚ DEL LADO IZQUIERDO-->
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link active" href="../Vistas/Dashboard_Vendedor.aspx">
                <span data-feather="home"></span>
                Inicio <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Orden_Venta.aspx">
                <span data-feather="layers"></span>
                Generar Orden de Venta
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Lista_Productos.aspx">
                <span data-feather="shopping-cart"></span>
                Lista de Productos
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Lista_Clientes.aspx">
                <span data-feather="users"></span>
                Clientes y Abonos
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Meta.aspx">
                <span data-feather="layers"></span>
                Meta Mensual
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Facturacion.aspx">
                <span data-feather="file-text"></span>
                Facturacion
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="Reportes.aspx">
                <span data-feather="bar-chart-2"></span>
                Reportes
            </a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Pagina de Inicio</h1>
    </div>
    <div class="album py-5 bg-ligth">
        <div class="container">
            <div class="row">
                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Generar Orden de Venta</text></svg>
                        <div class="card-body">
                            <p class="card-text">Genera acá las ordenes para los clientes que lo soliciten.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" ID="btnEntrarOrdenVenta" Text="Entrar" OnClick="btnEntrarOrdenVenta_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Lista de Productos</text></svg>
                        <div class="card-body">
                            <p class="card-text">Visualiza la existencia de productos y sus precios.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" ID="btnEntrarProductos" Text="Entrar" OnClick="btnEntrarProductos_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Lista de Clientes</text></svg>
                        <div class="card-body">
                            <p class="card-text">Visualiza la lista de clientes y quienes estén pendientes de pago.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" ID="btnEntrarClientes" Text="Entrar" OnClick="btnEntrarClientes_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Meta Mensual</text></svg>
                        <div class="card-body">
                            <p class="card-text">Visualiza el cumplimiento de tu meta de ventas del mes.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" Text="Entrar" ID="btnEntrarMeta" OnClick="btnEntrarMeta_Click"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Facturacion</text></svg>
                        <div class="card-body">
                            <p class="card-text">Genera acá las facturas de las ordenes totalmente canceladas.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" Text="Entrar" ID="btnEntrarFacturacion" OnClick="btnEntrarFacturacion_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->

                <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DEL MENÚ-->
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm">
                        <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Reportes</text></svg>
                        <div class="card-body">
                            <p class="card-text">Visualiza top de clientes, productos, etc.</p>
                            <div class="d-flex justify-content-between align-items-center">
                                <div class="btn-group">
                                    <asp:Button runat="server" CssClass="btn btn-sm btn-outline-success" Text="Entrar" ID="btnEntrarReportes" OnClick="btnEntrarReportes_Click" />
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
