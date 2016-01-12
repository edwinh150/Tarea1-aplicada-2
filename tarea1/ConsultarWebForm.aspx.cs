using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;

namespace tarea1.SQL
{
    public partial class ConsultarWebForm : System.Web.UI.Page
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

        public void Limpiar()
        {
            CuentaIdTextBox.Text = "";
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            ConsultarGridView.DataSource = Cuenta.Listado(" * ", " 1=1 ", "");
            ConsultarGridView.DataBind();
            if (ConsultarGridView.Rows.Count == 0)
            {
                HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");
            }
        }

        protected void BuscarButton_Click(object sender, EventArgs e)
        {
            if (ValidarIdEntero(CuentaIdTextBox.Text) > 0)
            {
                if (Cuenta.Buscar(ValidarIdEntero(CuentaIdTextBox.Text)))
                {
                    ConsultarGridView.DataSource = Cuenta.Listado(" * ", " CuentaId = " + CuentaIdTextBox.Text , "");
                    ConsultarGridView.DataBind();

                    Limpiar();
                }
                else
                {
                    HttpContext.Current.Response.Write("<Script>alert('No hay Registro')</Script>");

                    Limpiar();
                }
            }
            else
            {
                HttpContext.Current.Response.Write("<Script>alert('Ingrese un numero Valido')</Script>");

                Limpiar();
            }
        }
    }
}