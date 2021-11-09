using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace WindowsFormsApp2
{
    public partial class Form2 : Form
    {
        private SqlConnection conn;
 
        private string sCn;
        public Form2()
        {
            InitializeComponent();
            SQL cn = new SQL();
            cn.Conect();
            sCn = cn.cadena;
            conn = new SqlConnection(sCn);
            
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            conn.Open();
            string ingresar = " SELECT * FROM info_usuario WHERE Nombre ='" + txtUsuario.Text + "' AND Contraseña='" + txtContraseña.Text + "'";
            SqlCommand login = new SqlCommand(ingresar,conn);
            SqlDataReader lector;
            lector = login.ExecuteReader();
            

            if(lector.HasRows == true)
            {
                MessageBox.Show("Bienvenido A La Veterinaria La Curita");
                 Menu go = new Menu();
                 this.Hide();
                 go.Show();
            }
            else 
            {
                MessageBox.Show("Verifique si es usuario y la contraseña son correctos");
            }
            conn.Close();
        }

        private void btnsalir_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnCrearCuenta_Click(object sender, EventArgs e)
        {
            Usuario_nuevo registro = new Usuario_nuevo();
            this.Hide();
            registro.Show();
        }

       // Menu go = new Menu();
      // this.Hide();
      //go.Show();
    }
}
