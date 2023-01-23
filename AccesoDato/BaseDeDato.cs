using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AccesoDato
{
    public class BaseDeDato
    {
        string cadConex;
        SqlConnection cn;
        SqlCommand cmd;
        SqlDataReader dr; //no tiene instancia

        public int BdCodeEerror { get; set; }

        public string BdMsgError { get; set; }

        public BaseDeDato()
        {
            Configurar();
        }
        private void Configurar()
        {
            cadConex = "Data Source = DESKTOP-P00I262; Initial Catalog = medicamentos; Integrated Security = True";
            BdCodeEerror = 0;
            BdMsgError = "";
        }

        public void Conectar()
        {
            cn = new SqlConnection();
            cn.ConnectionString = cadConex;
            cn.Open();
        }

        public void Desconectar()
        {
            cn.Close();
        }

        public void CrearComando(string pSQL)
        {
            cmd = new SqlCommand();
            cmd.Connection = cn;
            cmd.CommandText = pSQL;

        }


        public void AsignarParametro(string pNombre, SqlDbType pTipo, object pValor)
        {
            cmd.Parameters.Add(pNombre, pTipo).Value = pValor;
        }

        public int EjecutarComando()
        {
            int numReg = 0;
            try
            {
                numReg = cmd.ExecuteNonQuery();
            }
            catch (SqlException ex)
            {
                BdCodeEerror = ex.ErrorCode;
                BdMsgError = ex.Message;
            }


            return numReg;
        }

        public DataTable EjecutarConsulta()
        {
            DataTable dtConsulta = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            da.Fill(dtConsulta);
            return dtConsulta;
        }

        public SqlDataReader EjecutarConsultaReader()
        {
            dr = cmd.ExecuteReader();
            return dr;
        }

        public void CerrarDataReader()
        {
            dr.Close();
        }
    }
}
