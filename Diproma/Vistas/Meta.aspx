<%@ Page Title="Metas" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="Meta.aspx.cs" Inherits="Diproma.Vistas.Meta" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
            <a class="nav-link active" href="Meta.aspx">
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
        <h1 class="h2">Cumplimiento de Metas</h1>
    </div>

    <h4 class="mb-3">Meta Personal</h4>
    <div class="table-responsive">
        <asp:Table runat="server" ID="tblMetaPersonal" CssClass="table table-hover table-striped table-sm">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>No</asp:TableHeaderCell>
                <asp:TableHeaderCell>Mes</asp:TableHeaderCell>
                <asp:TableHeaderCell>Meta</asp:TableHeaderCell>
                <asp:TableHeaderCell>Logro</asp:TableHeaderCell>
            </asp:TableHeaderRow>

            <asp:TableRow>
                <asp:TableCell>#</asp:TableCell>
                <asp:TableCell>#</asp:TableCell>
                <asp:TableCell>#</asp:TableCell>
                <asp:TableCell>#</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

    <h4 class="mb-3">Meta de Empleados</h4>
    <div class="form-group d-flex">
        <asp:TextBox runat="server" CssClass="form-control" ID="txtNitTrabajador" PlaceHolder="NIT Empleado"></asp:TextBox>
        &nbsp&nbsp
        <asp:Button runat="server" CssClass="btn btn-primary" Text="Buscar" ID="btnBuscarTrabajador" />
    </div>
    <div class="table-responsive">
        <asp:Table runat="server" ID="tblMetaTrabajadores" CssClass="table table-hover table-striped table-sm">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>No</asp:TableHeaderCell>
                <asp:TableHeaderCell>Mes</asp:TableHeaderCell>
                <asp:TableHeaderCell>Meta</asp:TableHeaderCell>
                <asp:TableHeaderCell>Logro</asp:TableHeaderCell>
            </asp:TableHeaderRow>

            <asp:TableRow>
                <asp:TableCell>#</asp:TableCell>
                <asp:TableCell>#</asp:TableCell>
                <asp:TableCell>#</asp:TableCell>
                <asp:TableCell>#</asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    </div>

</asp:Content>
