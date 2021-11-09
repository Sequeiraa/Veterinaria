using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace WindowsFormsApp2
{
    class SQL
    {
        public string servidor, usuario, clave, db;
        public string cadena;

        public void Conect()
        {
            /* Cambiar el nombre del servidor al de su computadora y si es necesario tambien cambiar
             el usuario y la clave*/
            servidor = "LAPTOP-IVAN";
            usuario = "sa";
            clave = "1234";
            db = "Veterinaria_proyecto";
            cadena = "server=" + servidor + ";uid=" + usuario + ";pwd=" + clave + ";database=" + db;
        }

    }
}
