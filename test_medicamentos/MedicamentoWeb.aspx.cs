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
            UpdateDataTable();
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
                UpdateDataTable();
            }
            else
            {
                mensaje.Text = $"Ocurrio un error al instertar el medicamento ";
                Limpiar();
                UpdateDataTable();
            }
        }

        private void Limpiar()
        {
            nombre.Text = "";
            valor.Text = "";
            cantidad.Text = "";
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            mensaje.Text = "";
            mensaje.Text = "";
            Medicamento medi = new Medicamento();
            string vNombre = nombre.Text;
            int vId = int.Parse(id.Text);
            int vCantidad = int.Parse(cantidad.Text);
            double vValor = double.Parse(valor.Text);


            if (medi.EditMedicamento(vId, vNombre, vValor, vCantidad))
            {
                mensaje.Text = "Editado correctamente";
                UpdateDataTable();
                Limpiar();
            }
            else
            {
                mensaje.Text = $"Ocurrio un error al Editar el medicamento ";
                UpdateDataTable();
                Limpiar();
            }

        }

        protected void grilla_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grilla.SelectedRow;
            cantidad.Text = row.Cells[4].Text;
            nombre.Text = row.Cells[2].Text;
            id.Text = row.Cells[1].Text;
            valor.Text = row.Cells[3].Text;
        }

        public void UpdateDataTable()
        {
            Medicamento medicamento = new Medicamento();
            DataTable dt = medicamento.Listar();
            grilla.DataSource = dt;

            grilla.DataBind();
        }
    }
}