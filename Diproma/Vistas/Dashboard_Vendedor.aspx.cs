using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diproma.Vistas
{
    public partial class Dashboard_Vendedor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnEntrarMeta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Meta.aspx");
        }

        protected void btnEntrarOrdenVenta_Click(object sender, EventArgs e)
        {
            Response.Redirect("Orden_Venta.aspx");
        }

        protected void btnEntrarProductos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lista_Productos.aspx");
        }

        protected void btnEntrarClientes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Lista_Clientes.aspx");
        }

        protected void btnEntrarFacturacion_Click(object sender, EventArgs e)
        {
            Response.Redirect("Facturacion.aspx");
        }

        protected void btnEntrarReportes_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reportes.aspx");
        }
    }
}