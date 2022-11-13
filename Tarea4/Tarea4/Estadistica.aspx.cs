using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tarea4
{
    public partial class Estadistica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Calcupro(); 
        }

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

        //Metodo calcular porcentajes
        protected void Calcupro()
        {
            float menores13 = 0, mayores13 = 0, mayores30 = 0; //Contadores por edad
            float masculino = 0, femenino = 0; //Contadores por genero
            float seguroSi = 0, seguroNo = 0; // contadores por seguro
            float conta = 0; //Contador general de personas

            //Variables que obtienen los tados de la base de datos
            bool seg = true;            
            float edad = 0;
            String gene;

            //Conexion a base de datos
            String s = System.Configuration.ConfigurationManager.ConnectionStrings["HOSPITALConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();  // abrir 
            SqlCommand comando = new SqlCommand("select * from Paciente ", conexion);
            SqlDataReader registro = comando.ExecuteReader();

            //Ciclo de lectura de datos
            while (registro.Read())
            {
                //Asignacion de datos a la variables
                edad = float.Parse(registro["Edad"].ToString());
                gene = registro["Genero"].ToString();
                seg =  Convert.ToBoolean(registro["Seguro"].ToString());

                //Validacion por edades
                if (edad < 13)
                    menores13++;
                else if (edad <= 30)
                    mayores13++;
                else if (edad > 30)
                    mayores30++;
                //Validacion por genero
                if (gene == "M")
                    masculino++;
                else if (gene == "F")
                    femenino++;
                //Validacion por seguro
                if (seg == true)
                    seguroSi++;
                else if (seg == false)  
                    seguroNo++;
                conta++;
            }
           
            conexion.Close(); // cerrar

            //LLenado de Labels
            L13.Text = "Promedio pacientes menores 13 años: " + ((menores13 /= conta) * 100).ToString() + " %"; 
            L25.Text = "Promedio pacientas mayores 13 años: " + ((mayores13 /= conta) * 100).ToString() + " %";
            L30.Text = "Promedio pacientes mayores 30 años: " + ((mayores30 /= conta) * 100).ToString() + " %";
            Lmasculino.Text = "Promedio pacientes masculinos: " + ((masculino /= conta) * 100).ToString() + " %";
            Lfemenino.Text = "Promedio pacientes femeninos: " + ((femenino /= conta) * 100).ToString() + " %";
            LSegSi.Text = "Promedio pacientes asegurados: " + ((seguroSi / conta) * 100).ToString() + " %";
            LSegNo.Text = "Promedio pacientes no asegurados: " + ((seguroNo / conta) * 100).ToString() + " %";
        }
    }
}