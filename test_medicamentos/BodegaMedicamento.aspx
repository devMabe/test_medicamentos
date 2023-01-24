<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BodegaMedicamento.aspx.cs" Inherits="test_medicamentos.BodegaMedicamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 221px;
        }
        .auto-style2 {
            width: 57px;
        }
        .auto-style1{
            margin-left: auto;
            margin-right: auto;
        }
        .auto-style3 {
            width: 57px;
            height: 86px;
        }
        .auto-style4 {
            height: 86px;
        }
        .auto-style5 {
            width: 584px;
        }
        .auto-style6 {
            height: 86px;
            width: 584px;
        }
    </style>
</head>
<body>
     <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="MenuOpciones.aspx" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
            <svg class="bi me-2" width="40" height="32">
                <use xlink:href="#bootstrap" />
            </svg>
            <span class="fs-4">Gestor de Medicamentos</span>
        </a>

       <ul class="nav nav-pills">
        <li class="nav-item"><a href="MenuOpciones.aspx" class="nav-link" aria-current="page">Inicio</a></li>
        <li class="nav-item"><a href="MedicamentoWeb.aspx" class="nav-link">Crear Medicamentos</a></li>
        <li class="nav-item"><a class="nav-link active" href="BodegaMedicamento.aspx">Bodega de Medicamentos</a></li>
        <li class="nav-item"><a class="nav-link" href="DespachoMedicamento.aspx">Despacho de Medicamentos</a></li>
      </ul>
    </header>
  </div>
    <form id="form1" runat="server">
        <div class="d-flex navbar-fixed-top justify-content-center align-items-center">
            
                        <asp:GridView ID="grilla" CssClass="table table-striped" runat="server" Height="183px" Width="449px" CellPadding="20" CellSpacing="7" HorizontalAlign="Center">
                        </asp:GridView>
              
        </div>
    </form>
</body>
</html>
