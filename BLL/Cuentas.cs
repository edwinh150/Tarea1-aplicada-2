using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using System.Data;

namespace BLL
{
    // This project can output the Class library as a NuGet Package.
    // To enable this option, right-click on the project and select the Properties menu item. In the Build tab select "Produce outputs on build".
    public class Cuentas
    {
        ConexionDB conexion = new ConexionDB();

        public int CuentaId { get; set; }
        public string Descripcion { get; set; }
        public double Balance { get; set; }

        public Cuentas()
        {
            this.CuentaId = 0;
            this.Descripcion = "";
            this.Balance = 0.0;
        }

        public Cuentas(int CuentaId, string Descripcion, float Balance)
        {
            this.CuentaId = CuentaId;
            this.Descripcion = Descripcion;
            this.Balance = Balance;
        }

        public bool Insertar()
        {
            bool retorno = false;
            StringBuilder comando = new StringBuilder();
            try
            {
                retorno = conexion.Ejecutar(string.Format("insert into  Cuentas (Descripcion, Balance) values ('{0}',{1})", this.Descripcion, this.Balance));
            }
            catch (Exception)
            {
                retorno = false;
            }

            return retorno;
        }

        public bool Editar()
        {
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("update Cuentas set Descripcion = '{0}' ,Balance = {1} where CuentaId = {2}", this.Descripcion, this.Balance, this.CuentaId));
            }
            catch (Exception)
            {
                retorno = false;
            }

            return retorno;
        }

        public bool Eliminar()
        {
            bool retorno = false;
            try
            {
                retorno = conexion.Ejecutar(string.Format("delete from Cuentas where CuentaId = {0}", this.CuentaId));
            }
            catch (Exception)
            {
                retorno = false;
            }

            return retorno;
        }

        public bool Buscar(int IdBuscado)
        {
            DataTable dt = new DataTable();
            bool retorno = false;
            try
            {
                dt = conexion.ObtenerDatos(string.Format("select * from Cuentas where CuentaId = {0} ", IdBuscado));

                if (dt.Rows.Count > 0)
                {
                    this.Descripcion = dt.Rows[0]["Descripcion"].ToString();
                    this.Balance = (double)dt.Rows[0]["Balance"];
                    retorno = true;
                }
                else
                {
                    retorno = false;
                }

            }
            catch (Exception)
            {
                retorno = false;
            }

            return retorno;
        }

        public DataTable Listado(string Campos, string Condicion, string Orden)
        {
            DataTable dt = new DataTable();
            try
            {
                dt = conexion.ObtenerDatos("select " + Campos + " from Cuentas where " + Condicion + " " + Orden);
            }
            catch (Exception)
            {
                
            }

            return dt;
        }
    }
}
