using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea4
{
    public partial class Inicio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Metodo de menu para acceder a las otras paginas
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            if (Menu1.SelectedValue == "AGREGAR PACIENTES")
            {
                Response.Redirect("AgregarPaciente.aspx");
            }
            else if (Menu1.SelectedValue == "LISTAR PACIENTES")
            {
                Response.Redirect("ListarPaciente.aspx");
            }
            else if (Menu1.SelectedValue == "ESTADISTICAS")
            {
                Response.Redirect("Estadistica.aspx");
            }
        }

       
    }
}