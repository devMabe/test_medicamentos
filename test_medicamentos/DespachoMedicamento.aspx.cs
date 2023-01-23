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
            int CantidadMayor = int.Parse(cantidadTem.Text);
            int vCantidad = int.Parse(txtCantidad.Text);
            
            if(vCantidad <= CantidadMayor && (vCantidad > 0))

            {
                int nuevaCantidad = (CantidadMayor - vCantidad);
                
                if (medi.UpdateStock(vId,nuevaCantidad))
                {
                    CantidadMayor = 0;
                    txtMensaje.Text = "Despacho Exitoso";
                    txtCantidad.Text = "";
                    txtCantidad.Text = nuevaCantidad.ToString();
                    cantidadTem.Text = "";
                    UpdateDataTable();
                }
                else
                {
                    txtMensaje.Text = "ERROR, No se pudo despachar el medicamento";
                }
            }
            else
            {
                txtMensaje.Text = "ERROR, No se encuentra disponible la cantidad solicitada";
            }

            
        }

        public void UpdateDataTable()
        {
            Medicamento medicamento = new Medicamento();
            DataTable dt = medicamento.Listar();
            grilla.DataSource = dt;
            
            grilla.DataBind();  
        }

        protected void grilla_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow row = grilla.SelectedRow;
            txtCantidad.Text = row.Cells[4].Text;
            cantidadTem.Text = row.Cells[4].Text;
            txtId.Text= row.Cells[1].Text;
        }

        private void refresh()
        {
            GridViewRow row = grilla.SelectedRow;
            txtCantidad.Text = row.Cells[4].Text;
            txtId.Text = row.Cells[1].Text;
        }
    }
}