<%@ Page Title="Adminstrar Usuarios" Language="C#" MasterPageFile="~/Paginas Maestras/Dashboard.Master" AutoEventWireup="true" CodeBehind="AdministrarUsuarios.aspx.cs" Inherits="Diproma.Vistas.AdministrarUsuarios" %>

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
            <a class="nav-link active" href="AdministrarUsuarios.aspx">
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
        <h1 class="h2">Administrar Usuarios</h1>
    </div>

    <div class="form-group">
        <div class="row">
            <div class="col-md-2 mb-3">
                <label for="nit">Nit</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNit"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <label for="nombre">Nombre</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtNombre"></asp:TextBox>
            </div>
            <div class="col-md-4 mb-3">
                <label for="apellidos">Apellidos</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtApellido"></asp:TextBox>
            </div>
            <div class="col-md-2 mb-3">
                <label for="rol">Seleccionar Rol</label>
                <asp:DropDownList runat="server" CssClass="btn btn-sm btn-outline-primary dropdown-toggle">
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Gerente</asp:ListItem>
                    <asp:ListItem>Supervisor</asp:ListItem>
                    <asp:ListItem>Vendedor</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>

        <div class="row">
            <div class="col-md-9 mb-3">
                <label for="direccion">Direccion</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtDireccion"></asp:TextBox>
            </div>
            <div class="col-md-3 mb-3">
                <label for="nacimiento">Fecha de Nacimiento</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtFechaNacimiento" TextMode="Date"></asp:TextBox>
            </div>
        </div>

        <div class="row">
            <div class="col-md-3 mb-3">
                <label for="teldomicilio">Telefono Domiciliar</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtTelDomicilio"></asp:TextBox>
            </div>
            <div class="col-md-3 mb-3">
                <label for="celular">Telefono Celular</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtCelular"></asp:TextBox>
            </div>
            <div class="col-md-3 mb-3">
                <label for="email">Email</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail"></asp:TextBox>
            </div>
            <div class="col-md-3 mb-3">
                <label for="pass">Contraseña</label>
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPass" TextMode="Password"></asp:TextBox>
            </div>
        </div>

        <asp:Button runat="server" ID="btnAgregar" Text="Agregar Usuario" CssClass="btn btn-success btn-lg btn-block" />
    </div>

    <hr class="mb-4" />

    <h3 class="h4">Lista de Usuarios</h3>

    <div class="table-responsive">
        <asp:Table runat="server" ID="tblUsuarios" CssClass="table table-hover table-striped table-sm">
            <asp:TableHeaderRow>
                <asp:TableHeaderCell>NIT</asp:TableHeaderCell>
                <asp:TableHeaderCell>Nombre</asp:TableHeaderCell>
                <asp:TableHeaderCell>Apellidos</asp:TableHeaderCell>
                <asp:TableHeaderCell>Rol</asp:TableHeaderCell>
                <asp:TableHeaderCell>Direccion</asp:TableHeaderCell>
                <asp:TableHeaderCell>Telefono</asp:TableHeaderCell>
                <asp:TableHeaderCell>Celular</asp:TableHeaderCell>
                <asp:TableHeaderCell>Email</asp:TableHeaderCell>
            </asp:TableHeaderRow>
        </asp:Table>
    </div>

</asp:Content>
