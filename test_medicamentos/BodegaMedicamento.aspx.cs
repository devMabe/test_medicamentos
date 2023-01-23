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
    public partial class BodegaMedicamento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UpdateDataTable();
        }

        public void UpdateDataTable()
        {
            Medicamento medicamento = new Medicamento();
            DataTable dt = medicamento.ListarAll();
            grilla.DataSource = dt;
            grilla.DataBind();
        }
    }
}