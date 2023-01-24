<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuOpciones.aspx.cs" Inherits="test_medicamentos.MenuOpciones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <title></title>
    <style type="text/css">
        body{
            justify-content:space-between;
            align-content: center;
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
         <li class="nav-item"><a href="MenuOpciones.aspx" class="nav-link active" aria-current="page">Inicio</a></li>
        <li class="nav-item"><a href="MedicamentoWeb.aspx" class="nav-link">Crear Medicamentos</a></li>
        <li class="nav-item"><a class="nav-link" href="BodegaMedicamento.aspx">Bodega de Medicamentos</a></li>
        <li class="nav-item"><a class="nav-link" href="DespachoMedicamento.aspx">Despacho de Medicamentos</a></li>
      </ul>
    </header>
  </div>
    <div class="align-items-center">
        <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Welcome to the Medicine Manager by Diego Garcia</h2>
    </div>
</body>
</html>
