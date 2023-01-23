using ReglaNegocio;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace test_medicamentos
{
    public partial class DespachoMedicamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateDataTable();
        }

        protected void btnDespachar_Click(object sender, EventArgs e)
        {
            Medicamento medi = new Medicamento();
            int vId = int.Parse(txtId.Text);
           /* int vCantidad = int.Parse(txtCantidad.Text);*/

            if(medi.UpdateStock(vId)){
                txtMensaje.Text = "Despacho Exitoso";
                UpdateDataTable();
            }
            else
            {
                txtMensaje.Text = "ERROR, No se pudo despachar el medicamento";
            }
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