<%-- 
    Document   : tipoempleado
    Created on : 18/08/2017, 03:00:26 PM
    Author     : Estudiante
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.AplicWebUniSena.modelo.TipoEmpleado"%>
<%@page import="com.AplicWebUniSena.dao.TipoEmpDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ULTIMO Admin Dashboard Template</title>
        <META NAME="ROBOTS" CONTENT="NOINDEX, NOFOLLOW">

        <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="css/animate.css" rel="stylesheet" type="text/css" />
        <link href="css/admin.css" rel="stylesheet" type="text/css" />
        <link href="css/jquerysctipttop.css" rel="stylesheet" type="text/css">
        <link href="plugins/kalendar/kalendar.css" rel="stylesheet">
        <link rel="stylesheet" href="plugins/scroll/nanoscroller.css">
        <link href="plugins/morris/morris.css" rel="stylesheet" />
    </head>
    <%
      TipoEmpDaoImpl dao = new TipoEmpDaoImpl();
      List<TipoEmpleado> listCategoria = new ArrayList();
      listCategoria = dao.listar();
      
      
   %>
   <body style="background-image: url(images/descarga.jpg);">

  <!--\\\\\\\ wrapper Start \\\\\\-->

  <!--\\\\\\\ header end \\\\\\-->
  
    <!--\\\\\\\ inner start \\\\\\-->
    <!--\\\\\\\left_nav end \\\\\\-->
   
      <!--\\\\\\\ contentpanel start\\\\\\-->
      <div class="pull-left breadcrumb_admin clear_both">
        
  
      </div>
      <div class="container clear_both padding_fix">
       
        <div class="row">
           <div class="col-md-3"></div>  
        <div class="col-md-5">
          <div class="block-web">
            <div class="header">
              
              <h3 class="content-header">VER TIPO EMPLEADO</h3>
            </div>
            <div class="porlets-content">
                <%
                TipoEmpleado tipoemp = (TipoEmpleado) request.getAttribute("tipoemp");
                //String id = String.valueOf(prod.getIdCategoria());
                %>
                <form action="tipoempsvl" method="post" class="form-horizontal row-border">
                <div class="form-group">
                  <label class="col-sm-3 control-label">Codigo Tipo Empleado</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" disabled="" value='<%= tipoemp.getIdTipoEmp() %>' name="codtipoe" >
                  </div>
                </div><!--/form-group--> 

                <div class="form-group">
                  <label class="col-sm-3 control-label">Descripción</label>
                  <div class="col-sm-9">
                      <input type="text" class="form-control" disabled="" value="<%= tipoemp.getSuc_Descrip() %>" name="descripcion" >
                  </div>
                </div><!--/form-group--> 
                

                <div class="form-group">
                  <label class="col-sm-3 control-label">Estado</label>
                  <div class="col-sm-9">
                      <select name="estado" disabled="">
                          <option selected><%= tipoemp.getSuc_Estado()%></option>
                                <%
                                    if(tipoemp.getSuc_Estado().equals("Activo")){
                                        %><option value="Inactivo">Inactivo</option> <%
                                    }else{
                                        %><option value="Activo">Activo</option> <%
                                    }
                                %>
                      </select>
                  </div>
                </div><!--/form-group-->
                
                <div class="bottom">
                  <button type="button" class="btn btn-success btn-icon"onclick="window.location.href='listartipoempleado.jsp'"> Atras<i class="fa fa-check-square"></i> </button>
                 
                </div>
               <!--/form-group-->
              </form>
            </div><!--/porlets-content-->
          </div>
          
            
           <!--/block-web--> 
        </div><!--/col-md-6-->
       
       
      <!--\\\\\\\ container  end \\\\\\-->
        </div>
      
<script src="js/jquery-2.1.0.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/common-script.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="js/jquery.sparkline.js"></script>
<script src="js/sparkline-chart.js"></script>
<script src="js/graph.js"></script>
<script src="js/edit-graph.js"></script>
<script src="plugins/kalendar/kalendar.js" type="text/javascript"></script>
<script src="plugins/kalendar/edit-kalendar.js" type="text/javascript"></script>

<script src="plugins/sparkline/jquery.sparkline.js" type="text/javascript"></script>
<script src="plugins/sparkline/jquery.customSelect.min.js" ></script> 
<script src="plugins/sparkline/sparkline-chart.js"></script> 
<script src="plugins/sparkline/easy-pie-chart.js"></script>
<script src="plugins/morris/morris.min.js" type="text/javascript"></script> 
<script src="plugins/morris/raphael-min.js" type="text/javascript"></script>  
<script src="plugins/morris/morris-script.js"></script> 





<script src="plugins/demo-slider/demo-slider.js"></script>
<script src="plugins/knob/jquery.knob.min.js"></script> 




<script src="js/jPushMenu.js"></script> 
<script src="js/side-chats.js"></script>
<script src="js/jquery.slimscroll.min.js"></script>
<script src="plugins/scroll/jquery.nanoscroller.js"></script>



</body>
</html>
