using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ReglaNegocio;
using System.Data;

namespace test_medicamentos
{
    public partial class MedicamentoWeb : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            mensaje.Text = "";
            Medicamento medicamento = new Medicamento()
            {
                Nombre = nombre.Text,
                Valor = Convert.ToDouble(valor.Text),
                FechaRecibo = DateTime.Parse($"{Year.Text}-{Mount.Text}-{Day.Text}"),
                Cantidad = int.Parse(cantidad.Text)
            };

        
            if (medicamento.InsertarMedicamento(medicamento))
            {
                mensaje.Text = "Insertado correctamente";
                Limpiar();
            }
            else
            {
                mensaje.Text = $"Ocurrio un error al instertar el medicamento ";
                Limpiar();
            }
        }

        private void Limpiar()
        {
            nombre.Text = "";
            valor.Text = "";
            cantidad.Text = "";
        }
    }
}