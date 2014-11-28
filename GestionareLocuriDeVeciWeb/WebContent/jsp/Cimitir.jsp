<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <script type="text/javascript">
// Popup window code
function newPopup(url) {
    popupWindow = window.open(
        url,'popUpWindow','height=700,width=400,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
}
</script>

    <title>Gestionare locuri de veci</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="css/plugins/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome-4.1.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>
	<%@ page import="Domain.*" %>
	<jsp:useBean id="listCimitire" class="java.util.ArrayList<Cimitir>" scope="session"/>
	<jsp:setProperty name="listCimitire" property="*"/> 

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Gestionare locuri de veci</a>
            </div>


            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Parcela" style="width:90px; margin-right: 5px">
                                <input type="text" class="form-control" placeholder="Nr loc" style="width:80px">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Gestiune<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="locuriDeVeci.html">Locuri de veci</a>
                                </li>
                                <li>
                                    <a href="Parcele.html">Parcele</a>
                                </li>
                                <li>
                                    <a href="Cimitir.html">Cimitire</a>
                                </li>
                                <li>
                                    <a href="Concesionar.html">Concesionar</a>
                                </li>
                                <li>
                                    <a href="Decedat.html">Decedat</a>
                                </li>
                                <li>
                                    <a href="Cereri.html">Cereri</a>
                                </li>

                            </ul>
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Vizualizare<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                               
                                <li>
                                    <a href="start.html">Istoric modificari</a>
                                </li>
                                <li>
                                    <a href="expirate.html">Locuri de veci expirate</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                            <!-- /.nav-second-level -->
                        </li>
                        <li>
                            <a href="#"><i class="fa fa-sitemap fa-fw"></i> Registre<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="tables1.html">Registru anual de programare a inmormantarilor</a>
                                </li>
                                <li>
                                    <a href="tables2.html">Registru de morminte</a>
                                </li>
                                <li>
                                    <a href="tables3.html">Registru de morminte-monumente funerare</a>
                                </li>
                                <li>
                                    <a href="tables4.html">Registrul index anual al decedatilor</a>
                                </li>
                                <li>
                                    <a href="tables5.html">Registru anual de evidenta a decedatilor fara apartinatori</a>
                                </li>
                                <li>
                                    <a href="tables6.html">Registrul cu evidenta cererilor de atribuire a locurilor de inhumare</a>
                                </li>
                                 <li>
                                    <a href="tables7.html">Registrul anual de evidenta a contractelor de concesiune</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Gestiune</h1>

                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                           Gestioneaza cimitire
                           <a href="JavaScript:newPopup('addCimitir.html')"> 
                            <button class="btn btn-primary" type="button" style="float:right;margin-top:-7px;margin-right:10px">
                                     <img src="css/plus.png"> Adauga cimitir

                            </button>
                             <a href="JavaScript:newPopup('updateCimitir.html')"> 
                            <button class="btn btn-primary" type="button" style="float:right;margin-top:-7px;margin-right:10px">
                                     <img src="css/plus.png"> Actualizeaza cimitir

                            </button>
                             </a>
                             
                            <button class="btn btn-primary" type="button" style="float:right;margin-top:-7px;margin-right:10px">
                                     <img src="css/plus.png"> Sterge cimitir

                            </button>
                        
                         
                       
                            
                        </div>

                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                         
                                            <th>Id Cimitir</th>
                                            <th>Denumire</th>
                                             <th>Adresa</th>
                                            <th>Numar locuri</th>
                                            <th>Numar parcele</th>
                                           
                                        

                                        </tr>
                                    </thead>
                                    <tbody>
									<%

  										for (Cimitir cimitir:listCimitire) {
       								 %>
                                        <tr class="odd gradeX">
                                         
                                            <td><%cimitir.getIdCimitir(); %></td>
                                            <td><%cimitir.getDenumire(); %></td>
                                            <td><%cimitir.getAdresa(); %></td>
                                            <td><%cimitir.getNrLocuri(); %></td>
                                            <td><%cimitir.getNrParcele(); %></td>
                                        </tr>
                                         
                                        <%
                                        }
									%>
                                        
                                    </tbody>

                                </table>
                              
                            </div>
                            <!-- /.table-responsive -->
                              
                        </div>
                        <!-- /.panel-body -->

                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
           
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="js/plugins/metisMenu/metisMenu.min.js"></script>

    <!-- DataTables JavaScript -->
    <script src="js/plugins/dataTables/jquery.dataTables.js"></script>
    <script src="js/plugins/dataTables/dataTables.bootstrap.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>

    <!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    </script>

</body>

</html>
