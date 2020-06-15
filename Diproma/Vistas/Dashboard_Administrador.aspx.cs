using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Diproma.Vistas
{
    public partial class Dashboard_Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEntrarUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdministrarUsuarios.aspx");
        }

        protected void btnEntrarMetas_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlMetas.aspx");
        }

        protected void btnEntrarVehiculos_Click(object sender, EventArgs e)
        {
            Response.Redirect("ControlVehiculos.aspx");
        }
    }
}