﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    // This project can output the Class library as a NuGet Package.
    // To enable this option, right-click on the project and select the Properties menu item. In the Build tab select "Produce outputs on build".
    public class ConexionDB
    {
            private SqlConnection con;
            private SqlCommand Cmd;

            public ConexionDB()
            {
                con = new SqlConnection("Data Source=ROOT-PC\\SURPUSER;Initial Catalog=StrongerDB;Integrated Security=True");
                Cmd = new SqlCommand();
            }

            public bool Ejecutar(String ComandoSql)
            {
                bool retorno = false;

                try
                {
                    con.Open();
                    Cmd.Connection = con;
                    Cmd.CommandText = ComandoSql;
                    Cmd.ExecuteNonQuery();
                    retorno = true;

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }

                return retorno;
            }

            public DataTable ObtenerDatos(String ComandoSql)
            {

                SqlDataAdapter adapter;
                DataTable dt = new DataTable();

                try
                {
                    con.Open();
                    Cmd.Connection = con;
                    Cmd.CommandText = ComandoSql;

                    adapter = new SqlDataAdapter(Cmd);
                    adapter.Fill(dt);

                }
                catch (Exception ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }

                return dt;
            }
        }
    }
