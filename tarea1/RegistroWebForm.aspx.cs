using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace tarea1
{
    public partial class PrincipalWebForm : System.Web.UI.Page
    {
        Cuentas Cuenta = new Cuentas();

        public int ValidarIdEntero(string IdTextBox)
        {
            int Id = 0;
            if (IdTextBox.Length > 0)
            {
                bool result = Int32.TryParse(IdTextBox, out Id);
            }
            else
            {
                return 0;
            }
            return Id;
        }

        public double ValidarIdDouble(string IdTextBox)
        {
            double Id = 0.0;
            if (IdTextBox.Length > 0)
            {
                bool result = double.TryParse(IdTextBox, out Id);
            }
            else
            {
                return 0.0;
            }
            return Id;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public bool LlenarDatos()
        {
            bool retorno = true;

            Cuenta.Descripcion = DescripcionTextBox.Text;
            Cuenta.Balance = ValidarIdDouble(BalanceTextBox.Text);

            return retorno;
        }

        private void Limpiar()
        {
            CuentaIdTextBox.Text = "";
            DescripcionTextBox.Text = "";
            BalanceTextBox.Text = "";
        }

        protected void GuardarButton_Click(object sender, EventArgs e)
        {
            if (LlenarDatos())
            {
                if (Cuenta.Insertar())
                {
                    //MessageBox.Show("Guardado Correctamente", "Confirmar", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    Limpiar();
                }
                else
                {
                    // MessageBox.Show("Error Al Guardar", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                //MessageBox.Show("Faltan Datos", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        protected void DescripcionTextBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ModificarButton_Click(object sender, EventArgs e)
        {
                if (LlenarDatos())
                {
                    Cuenta.CuentaId = ValidarIdEntero(CuentaIdTextBox.Text);

                    if (Cuenta.Editar())
                    {
                        //MessageBox.Show("Modificado Correctamente", "Confirmacion", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        Limpiar();
                    }
                    else
                    {
                        // MessageBox.Show("Error Al Modificar", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                }
        }

        protected void EliminarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(CuentaIdTextBox.Text) > 0)
            {
                Cuenta.CuentaId = ValidarIdEntero(CuentaIdTextBox.Text);

                if (Cuenta.Eliminar())
                {
                    //MessageBox.Show("Eliminado Correctamente", "Confirmacion", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    Limpiar();
                }
                else
                {
                    // MessageBox.Show("Error Al Eliminar", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {

            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(CuentaIdTextBox.Text) > 0)
            {
                if (Cuenta.Buscar(ValidarIdEntero(CuentaIdTextBox.Text)))
                {                   
                    DescripcionTextBox.Text = Cuenta.Descripcion.ToString();
                    BalanceTextBox.Text = Cuenta.Balance.ToString();
                }
            }
        }
    }
}