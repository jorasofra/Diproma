﻿<%@ Page Title="Ordenes de Venta" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="Orden_Venta.aspx.cs" Inherits="Diproma.Vistas.Orden_Venta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/checkout/" />
    <link href="../css/form-validation.css" type="text/css" rel="stylesheet" />
    <link href="../css/album.css" type="text/css" rel="stylesheet" />
    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!--CONTIENE LA BARRA DE MENÚ DEL LADO IZQUIERDO-->
    <ul class="nav flex-column">
        <li class="nav-item">
            <a class="nav-link" href="../Vistas/Dashboard_Vendedor.aspx">
                <span data-feather="home"></span>
                Inicio <span class="sr-only">(current)</span>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" href="Orden_Venta.aspx">
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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h1 class="h2">Generar Ordenes de Venta</h1>
    </div>

    <!--BUSQUEDA DE CLIENTE-->
    <div class="form-group">
        <h4 class="mb-3">Buscar Cliente</h4>
        <div class="form-group d-flex">
            <asp:TextBox CssClass="form-control" runat="server" ID="txtNitCliente" PlaceHolder="NIT Cliente"></asp:TextBox>
            &nbsp&nbsp
            <asp:Button runat="server" CssClass="btn btn-primary" Text="Buscar" ID="btnBuscarCliente"/>
        </div>
    </div>
    <!--TERMINA BUSQUEDA-->

    <hr class="mb-6" />

    <div class="col-md-12">
        <!--ENCABEZADO SECCION-->
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
            <h4 class="mb-3">Escoger Productos</h4>
            <div class="btn-toolbar mb-2 mb-md-0">
                <h6 class="alert-light">Ordenar por: </h6>
                &nbsp&nbsp
                <asp:DropDownList runat="server" CssClass="btn btn-sm btn-outline-secondary dropdown-toggle" ID="cmbOrdenar">
                    <asp:ListItem>Categoria</asp:ListItem>
                    <asp:ListItem>Codigo Producto</asp:ListItem>
                    <asp:ListItem>Existencia</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="form-group d-flex">
            <asp:TextBox runat="server" CssClass="form-control" ID="txtCodigoProducto" PlaceHolder="Codigo Producto"></asp:TextBox>
            &nbsp&nbsp
            <asp:Button runat="server" CssClass="btn btn-primary" Text="Buscar Producto" ID="btnBuscarProducto" />
        </div>

        <div class="album py-5 bg-ligth">
            <div class="container">
                <div class="row">

                    <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c" />
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">Producto 1</text></svg>
                            <div class="card-body">
                                <p class="card-text">Descripcion 1.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-success">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->

                    <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c" />
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">Producto 2</text></svg>
                            <div class="card-body">
                                <p class="card-text">Descripcion 2.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-success">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->

                    <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c" />
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">Producto 3</text></svg>
                            <div class="card-body">
                                <p class="card-text">Descripcion 3.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-success">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->

                    <!--ACÁ EMPIEZA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->
                    <div class="col-md-4">
                        <div class="card mb-4 shadow-sm">
                            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">
                                <title>Placeholder</title>
                                <rect width="100%" height="100%" fill="#55595c" />
                                <text x="50%" y="50%" fill="#eceeef" dy=".3em">Producto 4</text></svg>
                            <div class="card-body">
                                <p class="card-text">Descripcion 4.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <div class="btn-group">
                                        <button type="button" class="btn btn-sm btn-outline-success">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--ACÁ TERMINA LA GENERACIÓN DE 1 TARJETA DE PRODUCTO-->

                </div>
            </div>
        </div>
    </div>

    <hr class="mb-6" />

    <asp:Button runat="server" CssClass="btn btn-primary btn-lg btn-block" ID="btnCrearOrden" Text="Crear Orden" />

    </asp:Content>
