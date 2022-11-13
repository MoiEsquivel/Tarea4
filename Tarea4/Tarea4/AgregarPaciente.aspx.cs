using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea4
{
    public partial class AgregarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Oculta el boton agregar nuevo paciente
            Bnewpaciente.Visible = false;
        }

        //Metodo de acceso a los otras paginas
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

        //boton volver regresa a pagina de inicio
        protected void Bvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }
        
        //Boton de agregar paciente
        protected void Bagregar_Click(object sender, EventArgs e)
        {
            bool Seguro = false;
            int edad = int.Parse(Tedad.Text);

            
            try
            {
                if (RBseguro.Checked)
                {
                    Seguro = true;
                }
                //conecxion base de datos
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["HOSPITALConnectionString"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("Insert into Paciente values('" + Tcedula.Text + "', '" + Tnombre.Text + "'," + edad + ", '" + Dgenero.SelectedValue + "', '"
                    + Ttelefono.Text + " ', '" + Seguro + " ', ' " + Dprovincia.SelectedValue + "', '" + Tcanton.Text + "', '"
                    + Tdistrito.Text + "')", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();

                Lconfirm.Text = "Paciente registrado con exito"; //Indicador de que se registro con exito               
                Bagregar.Visible = false; //Ocultamos el boton agrergar
                Bnewpaciente.Visible = true; //aparece el boton agregar nuevo
            }
            catch (Exception)
            {
                Limpiar();
                Bagregar.Visible = false;
                Bnewpaciente.Visible = true;
                Lconfirm.Text = "Paciente ya registrado";
              
            }
            

        }
        
        //Boton agreagar nuevo paciente
        protected void Bnewpaciente_Click(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPaciente.aspx");
            Lconfirm.Text = "";
        }
        
        //Metodo para limpiar los espacios
        public void Limpiar()
        {
            Tcedula.Text = "";
            Tnombre.Text = "";
            Tedad.Text = "";
            Ttelefono.Text = "";
            Tcanton.Text = "";
            Tdistrito.Text = "";
        }

       
    }
}