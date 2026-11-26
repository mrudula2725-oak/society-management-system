<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
if (strlen($_SESSION['smsaid']==0)) {
  header('location:logout.php');
  } else{

if(isset($_GET['delid']))
{
$rid=intval($_GET['delid']);
$sql="delete from tblvisitor where ID='$rid'";
$query = $dbh -> prepare($sql);
$query->execute();
echo "<script>alert('Vistor Details   deleted successfully.');</script>";
echo "<script type='text/javascript'> document.location = 'manage-allvisitor.php'; </script>";
} 

  ?>
<!doctype html>
<html lang="en">

<head>
<title>Society Maintenance System || Manage Visitor</title>

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
                        <h2>Manage Visitor</h2>
                    </div>            
                    <div class="col-lg-7 col-md-4 col-sm-12 text-right">
                        <ul class="breadcrumb justify-content-end">
                            <li class="breadcrumb-item"><a href="dashboard.php"><i class="icon-home"></i></a></li>
                            <li class="breadcrumb-item active">Manage All Visitor</li>
                        </ul>
                    </div>
                </div>
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="header">
                            <h2>Manage All Visitor</h2>                            
                        </div>
                        <div class="body">
                            <div class="table-responsive">
 <table class="table table-bordered table-hover js-basic-example dataTable table-custom">
         <thead>
         <tr>
         <th>S.NO</th>
       <th>Visitor Name</th>
        <th>Contact Number</th>
        <th>Whom To Visit</th>
         <th>Action</th>
          </tr>
         </thead>
         <tbody>
                                        <?php
$sql="SELECT * from tblvisitor";
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
                  <td><?php  echo htmlentities($row->VisitorName);?>
                  </td>
                  <td><?php  echo htmlentities($row->MobileNumber);?></td>
                  <td><?php  echo htmlentities($row->WhomtoMeet);?></td>
                   <td> <a href="view-visitor-detail.php?editid=<?php echo htmlentities ($row->ID);?>" class="btn btn-primary btn-sm">View Details</a>
<a href="manage-newvisitor.php?delid=<?php echo htmlentities ($row->ID);?>" class="btn btn-danger btn-sm" onclick="return confirm('Do you really want to delete?')">Delete</a></td>
                                        </tr>
                                        <?php $cnt=$cnt+1;}} ?>         
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