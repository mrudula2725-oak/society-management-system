<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['smsaid']==0)) {
  header('location:logout.php');
  } else{



  ?>
<!doctype html>
<html lang="en">

<head>
<title>Society Maintenance System || Complaint Status</title>

<!-- VENDOR CSS -->
<link rel="stylesheet" href="../assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="../assets/vendor/animate-css/animate.min.css">
<link rel="stylesheet" href="../assets/vendor/font-awesome/css/font-awesome.min.css">

<link rel="stylesheet" href="../assets/vendor/jquery-datatable/dataTables.bootstrap4.min.css">
<link rel="stylesheet" href="../assets/vendor/jquery-datatable/fixedeader/dataTables.fixedcolumns.bootstrap4.min.css">
<link rel="stylesheet" href="../assets/vendor/jquery-datatable/fixedeader/dataTables.fixedheader.bootstrap4.min.css">
<link rel="stylesheet" href="../assets/vendor/sweetalert/sweetalert.css"/>

<!-- MAIN CSS -->
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/color_skins.css">
<style>
    td.details-control {
    background: url('../assets/images/details_open.png') no-repeat center center;
    cursor: pointer;
}
    tr.shown td.details-control {
        background: url('../assets/images/details_close.png') no-repeat center center;
    }
</style>
</head>
<body class="theme-blue">

<!-- Overlay For Sidebars -->
<div class="overlay" style="display: none;"></div>

<div id="wrapper">

    <?php include_once('includes/header.php');?>
<?php include_once('includes/sidebar.php');?>

    <div id="main-content">
        <div class="container-fluid">
            <div class="block-header">
                <div class="row">
                    <div class="col-lg-5 col-md-8 col-sm-12">                        
                        <h2>Complaint Detail</h2>
                    </div>            
                    <div class="col-lg-7 col-md-4 col-sm-12 text-right">
                        <ul class="breadcrumb justify-content-end">
                            <li class="breadcrumb-item"><a href="dashboard.php"><i class="icon-home"></i></a></li>
                             <li class="breadcrumb-item active">Complaint Detail</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Unresolved Complaint</h2>                            
                        </div>
                        <div class="body">
                            <div class="table-responsive">
 <table class="table table-bordered table-hover js-basic-example dataTable table-custom">
         <thead>
         <tr>
         <th>S.NO</th>
       <th>Request ID</th>
        <th>Complaint Type</th>
        <th>Complaint Date</th>
        <th>Complaint Status</th>
        <th>Action</th>
          </tr>
         </thead>
         <tbody>
                                        <?php
                                      
$sql= "SELECT * from tblcomplain where Status is null";
$query = $dbh -> prepare($sql);

$query->execute();
$results=$query->fetchAll(PDO::FETCH_OBJ);

$cnt=1;
if($query->rowCount() > 0)
{
foreach($results as $row)
{               ?>
                                        <tr>
                                           <td><?php echo htmlentities($cnt);?></td>
                  <td><?php  echo htmlentities($row->RequestID);?>
                  </td>
                  <td><?php  echo htmlentities($row->ComplainType);?></td>
                  <td><?php  echo htmlentities($row->CompRaisedate);?></td>
<td><?php  if($row->Status==""){ ?>
<span class="badge badge-danger">Not Updated Yet</span>
<?php } elseif($row->Status=='In Progress') { ?>
<span class="badge badge-warning">In Progress</span>
<?php } elseif($row->Status=='Resolved') { ?>
<span class="badge badge-success">Resolved</span>
<?php } ?>               
</td>
         
                   <td> <a href="view-complain-detail.php?viewid=<?php echo htmlentities ($row->ID);?>" class="btn btn-primary btn-sm">View Details</a></td>
                                        </tr>
                                        <?php $cnt=$cnt+1;} } ?>         
                                    </tbody>
                                     
                            
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
              </div>

        
        </div>
    </div>
    
</div>

<!-- Javascript -->
<script src="assets/bundles/libscripts.bundle.js"></script>    
<script src="assets/bundles/vendorscripts.bundle.js"></script>

<script src="assets/bundles/datatablescripts.bundle.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/dataTables.buttons.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.bootstrap4.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.colVis.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.html5.min.js"></script>
<script src="../assets/vendor/jquery-datatable/buttons/buttons.print.min.js"></script>

<script src="../assets/vendor/sweetalert/sweetalert.min.js"></script> <!-- SweetAlert Plugin Js --> 


<script src="assets/bundles/mainscripts.bundle.js"></script>
<script src="assets/bundles/morrisscripts.bundle.js"></script>
<script src="assets/js/pages/tables/jquery-datatable.js"></script>
</body>
</html>
<?php }  ?>