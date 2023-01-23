using AccesoDato;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.OleDb;

namespace ReglaNegocio
{
    public class Medicamento
    {
        public string Nombre { get; set; }
        public double Valor { get; set; }
        public DateTime FechaRecibo { get; set; }
        public int Cantidad { get; set; }



        public bool InsertarMedicamento(Medicamento medicamento)
        {

            bool inserto = false;
            BaseDeDato bd = new BaseDeDato();
            bd.Conectar();
            string vSql = "insert into medicamento (nombre_medicamento, fecha_recibo, valor, cantidad) values(@nombre,@fecha,@valor, @cantidad)";
            bd.CrearComando(vSql);
            bd.AsignarParametro("@nombre", SqlDbType.VarChar, medicamento.Nombre);
            bd.AsignarParametro("@fecha", SqlDbType.DateTime, medicamento.FechaRecibo);
            bd.AsignarParametro("@valor", SqlDbType.Decimal, medicamento.Valor);
            bd.AsignarParametro("@cantidad", SqlDbType.Int, medicamento.Cantidad);


            if (bd.EjecutarComando() > 0)
            {
                inserto = true;
            }
            bd.Desconectar();
            return inserto;
        }

    }
}
