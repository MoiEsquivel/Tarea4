using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tarea4
{
    public class Paciente
    {
        public static string cedula { get; set; }
        public static string nombre { get; set; }
        public static int edad { get; set; }
        public static string genero { get; set; }
        public static string telefono { get; set; }

        public static string provincia { get; set; }
        public static string canton { get; set; }
        public static string distrito { get; set; }

        public static bool seguro = false;

        public Paciente()
        {
        }
    }

}