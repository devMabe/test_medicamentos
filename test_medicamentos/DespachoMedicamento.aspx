<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DespachoMedicamento.aspx.cs" Inherits="test_medicamentos.DespachoMedicamento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"/>
    <title></title>
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
        <li class="nav-item"><a class="nav-link" href="BodegaMedicamento.aspx">Bodega de Medicamentos</a></li>
        <li class="nav-item"><a class="nav-link active" href="DespachoMedicamento.aspx">Despacho de Medicamentos</a></li>
      </ul>
    </header>
  </div>
   
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center align-items-center">
            
                  
                 
                   
                        <asp:GridView ID="grilla" CssClass="table table-striped col" runat="server" Height="230px" Width="372px" OnSelectedIndexChanged="grilla_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                  
                        &nbsp;<asp:TextBox ID="cantidadTem" runat="server" Visible="False" Width="79px" CssClass="form-label"></asp:TextBox>
                 
                   
                    
                        &nbsp; ID:&nbsp;
                 
                   
                    
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            &nbsp;&nbsp;
                        <br />
                        CANTIDAD:<br />
&nbsp;<asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
                        <br />
            <br />
                        &nbsp;&nbsp;
                        <br />
&nbsp;
                        <asp:Button ID="btnDespachar" class="btn-primary" runat="server" Height="29px" OnClick="btnDespachar_Click" Text="Despachar" Width="109px" />
            <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        <asp:Label ID="txtMensaje" CssClass="alert-danger" Width="0px" runat="server"></asp:Label>
            <br />
                        
                     
                    
        </div>
    </form>
</body>
</html>
