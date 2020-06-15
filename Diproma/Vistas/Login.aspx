<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Diproma.Vistas.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ingreso al Sistema</title>
    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/sign-in/" />
    <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../css/signin.css" rel="stylesheet" type="text/css" />
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
</head>
<body class="text-center">
    <form id="form1" runat="server" class="form-signin">
        <h1 class="h3 mb-3 font-weight-normal">Ingrese sus datos</h1>
        <asp:TextBox runat="server" CssClass="form-control" PlaceHolder="NIT" ID="txtNit"></asp:TextBox>
        <asp:TextBox runat="server" CssClass="form-control" PlaceHolder="Contraseña" ID="txtPass"></asp:TextBox>
        <br />
        <asp:Button runat="server" CssClass="btn btn-lg btn-primary btn-block" Text="Ingresar" />
    </form>
</body>
</html>
