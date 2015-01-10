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
    <script>
	    window.onunload = refreshParent;
	    function refreshParent() {
	        window.opener.location.reload();
	        this.close();
	    }
	    function getById(){
	    	var parentDocument = window.opener.document;
	    	var parentRowId = window.opener.getId();
	    	document.getElementById("idParcela").value = parentDocument.getElementById("idParcelaV"+parentRowId).value;
	    	document.getElementById("denumireParcela").value = parentDocument.getElementById("denumireV"+parentRowId).innerHTML;
	    	document.getElementById("idCimitirParcela").value = parentDocument.getElementById("idCimitirV"+parentRowId).innerHTML;
	    	document.getElementById("HasMonumentParcela").value = parentDocument.getElementById("hasMonumentV"+parentRowId).innerHTML;
	    }	
	</script>
</head>

<body onload="getById()">

	<%@ page import="domain.Parcela" %>
	<jsp:useBean id="parcela" class="domain.Parcela" scope="session"/>
	<jsp:setProperty name="parcela" property="*"/> 

    <div id="wrapper">

        <!-- Navigation -->
       

        <div id="page-wrapper" style="position:fixed">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Actualizeaza parcela</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Completati toate campurile
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-6">
                                    <form role="form" action="../ParcelaServlet" method="POST">
                                     <input type="hidden" id="idParcela" name="idParcela" />
                                        <div  class="form-group">
                                            <label>Denumire</label>
                                            <input id="denumireParcela" name="denumireParcela" />
                                        </div>
                                        
                                        <!--<div>
                                        	<label>Cimitir</label>
                                        	 <input id="idCimitirParcela" name="idCimitirParcela" />
                                        </div>
                                        --> 
                                        <div>
                                        	<label>Are Monument?</label>
                                       		 <input type="checkbox" name="HasMonumentParcela" id="HasMonumentParcela">Are Monument                                        
                                       	</div>                              
                                        <button type="submit" id="updateParcela" name="updateParcela" class="btn btn-primary" >Salvare Modificari</button>
                                        
                                    </form>
                                </div>
                                <!-- /.col-lg-6 (nested) -->
                               
                                <!-- /.col-lg-6 (nested) -->
                            </div>
                            <!-- /.row (nested) -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
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

    <!-- Custom Theme JavaScript -->
    <script src="js/sb-admin-2.js"></script>
    
    <!-- updateCimitir validator -->
	<script type="text/javascript" src="js/validations/updateParcelaValidator.js"></script>

</body>

</html>
