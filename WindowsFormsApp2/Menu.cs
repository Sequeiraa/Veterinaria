using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp2
{
    public partial class Menu : Form
    {
        public Menu()
        {
            InitializeComponent();
        }

        private void btnInfoUsuario_Click(object sender, EventArgs e)
        {
            Informacion_Usuario infouser = new Informacion_Usuario();
            this.Hide();
            infouser.Show();
        }

        private void btnInfoMascota_Click(object sender, EventArgs e)
        {
            Informacion_Mascota infopet = new Informacion_Mascota();
            this.Hide();
            infopet.Show();
        }

        private void btnCitas_Click(object sender, EventArgs e)
        {
            Citas date = new Citas();
            this.Hide();
            date.Show();
        }

        private void btnVacunas_Click(object sender, EventArgs e)
        {
            Vacunas vaccine = new Vacunas();
            this.Hide();
            vaccine.Show();
        }

        private void btnProgramarCitas_Click(object sender, EventArgs e)
        {
            Programar_citas prodate = new Programar_citas();
            this.Hide();
            prodate.Show();
        }

        private void btnexit_Click(object sender, EventArgs e)
        {
            Form2 login = new Form2();
            this.Hide();
            login.Show();
        }
    }
}
