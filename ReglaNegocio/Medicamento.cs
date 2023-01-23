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


        public bool UpdateStock(int vId, int nuevaCantidad)
        {
            bool actualizo = false;
            BaseDeDato bd = new BaseDeDato();
            bd.Conectar();
            string vSql = "UPDATE medicamento SET cantidad = @cantidad  WHERE @id = id ";
            bd.CrearComando(vSql);
            bd.AsignarParametro("@id", SqlDbType.Int, vId);
            bd.AsignarParametro("@cantidad", SqlDbType.Int, nuevaCantidad);

            /*bd.AsignarParametro("@fecha", SqlDbType.DateTime,vCantidad);*/
            if (bd.EjecutarComando() > 0)
            {
                actualizo = true;
            }
            bd.Desconectar();
            return actualizo;

        }
        public DataTable Listar()
        {
            BaseDeDato bd = new BaseDeDato();
            bd.Conectar();
            string vSql = "select id, nombre_medicamento, valor, cantidad from medicamento";
            bd.CrearComando(vSql);
            DataTable dt = bd.EjecutarConsulta();
            Console.WriteLine(dt.ToString());
            return dt;
        }

    }
}
