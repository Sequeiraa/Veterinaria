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
    public partial class Usuario_nuevo : Form
    {
        private SqlConnection conn;
        private SqlCommand insert1;
        private string sCn;
        public Usuario_nuevo()
        {
            InitializeComponent();
            SQL cn = new SQL();
            cn.Conect();
            sCn = cn.cadena;
            conn = new SqlConnection(sCn);
            conn.Open();
        }

        private void btnsalir_Click(object sender, EventArgs e)
        {
            Form2 main = new Form2();
            this.Hide();
            main.Show();
        }

        private void btnagregar_Click(object sender, EventArgs e)
        {
            try
            {
                string datosusuario;

                datosusuario = " INSERT INTO info_usuario(Nombre,Telefono,DUI,Contraseña,Nombre_mascota,Mascota,Raza,Edad_mascota)";
                datosusuario += "VALUES(@nombre,@telefono,@DUI,@contraseña,@nombremascota,@mascota,@raza,@edadmascota)";
                insert1 = new SqlCommand(datosusuario, conn);
                insert1.Parameters.Add(new SqlParameter("@nombre", SqlDbType.VarChar));
                insert1.Parameters["@nombre"].Value = txtNombreRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@telefono", SqlDbType.Int));
                insert1.Parameters["@telefono"].Value = txtTelefonoRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@DUI", SqlDbType.Int));
                insert1.Parameters["@DUI"].Value = txtDuiRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@contraseña", SqlDbType.VarChar));
                insert1.Parameters["@contraseña"].Value = txtContraseñaRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@nombremascota", SqlDbType.VarChar));
                insert1.Parameters["@nombremascota"].Value = txtNombreMascotaRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@mascota", SqlDbType.VarChar));
                insert1.Parameters["@mascota"].Value = txtMascotaRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@raza", SqlDbType.VarChar));
                insert1.Parameters["@raza"].Value = txtRazaRegistro.Text;
                insert1.Parameters.Add(new SqlParameter("@edadmascota", SqlDbType.Int));
                insert1.Parameters["@edadmascota"].Value = txtEdadMascotaRegistro.Text;
                insert1.ExecuteNonQuery();

                txtNombreRegistro.Text = "";
                txtTelefonoRegistro.Text = "";
                txtDuiRegistro.Text = "";
                txtContraseñaRegistro.Text = "";
                txtNombreMascotaRegistro.Text = "";
                txtMascotaRegistro.Text = "";
                txtRazaRegistro.Text = "";
                txtEdadMascotaRegistro.Text = "";
                MessageBox.Show("Datos de usuario ingresados.");
                conn.Close();



            }
            catch(Exception EX)
            {
                MessageBox.Show(EX.Message,
                    "Error al Agregar datos",
                    MessageBoxButtons.OK,
                    MessageBoxIcon.Error);
            }
        }
    }
}
