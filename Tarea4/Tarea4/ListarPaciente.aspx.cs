using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection.Emit;

namespace Tarea4
{
    public partial class ListarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {           
        }

        //Metodo de acceso a las otras paginas
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

        //Boton buscar
        protected void Bbuscar_Click(object sender, EventArgs e)
        {
            //conecxion base de datos
            string constr = ConfigurationManager.ConnectionStrings["HOSPITALConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                //Buscar por nombre muestra todos los tados
                using (SqlCommand cmd = new SqlCommand("Select * From Paciente where Nombre = '" + Tnombuscar.Text + "'"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView2.DataSource = dt;
                            GridView2.DataBind();
                        }
                    }
                }
            }
            Tnombuscar.Text = "";
        }
       
        //Boton borrar
        protected void Bborrar_Click(object sender, EventArgs e)
        {
            //conecxion base de datos
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HOSPITALConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("DELETE Paciente where Nombre = '" + Tnombuscar.Text + "'", conexion);
            comando.ExecuteNonQuery();
            conexion.Close();
            LlenarGrid();
            Tnombuscar.Text = "";
        }

        //Boton volver
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx"); //Redirecciona al inicio
        }

        //Boton limpiar
        protected void BLimpiarBusqueda_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListarPaciente.aspx");
            LlenarGrid();
        }

        //Boton ocultar
        protected void Button2_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false; //Oculta el gridview
        }

        //Boton Mostrar
        protected void Button3_Click(object sender, EventArgs e)
        {
            LlenarGrid();
        }
        
        //Metodo para llenar la tabla
        protected void LlenarGrid()
        {
            //conecxion base de datos
            string constr = ConfigurationManager.ConnectionStrings["HOSPITALConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                //Muestrar solo los datos seleccionados
                using (SqlCommand cmd = new SqlCommand("select Cedula, Nombre, Edad, Genero from Paciente"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }
            }
        }

       
    }
}