<?php
session_start();
if(!isset($_SESSION['adminname'])){
echo" <script>window.location.href = 'index.php'</script>";
}


$conn=mysqli_connect('localhost','root','','stone_palace');

$date =('j/m/Y');
$i=0;
$lastdate;
$i1=0;
 if($conn)
 {
	 $qur= "SELECT * FROM `users`";
		$res=mysqli_query($conn,$qur);
		if($res)
		{
			while($row=mysqli_fetch_assoc($res))
			{
				$i++;
				$lastdate=$row['username'];
			}
			$lastdate =(int)$date;
			
			while($row=mysqli_fetch_assoc($res))
			{
				
				$chk=$row['date'];
				$chk =(int)$chk;
				if($chk==($lastdate-1)||$chk==$lastdate)
				{
					$i1++;
				}
			}
		}
		$i2=0;
		$qur="SELECT * FROM `items`";
		$res=mysqli_query($conn,$qur);
		if($res)
		{
		
			while($row=mysqli_fetch_assoc($res))
			{
				$i2++;
				
			}
		}
 }
 else
 {
	 echo" <script>window.location.href = '404.html';</script>";
 }



?>
<!DOCTYPE HTML>
<html>

<head>
<style>
.areasunder
{
	margin-bottom:10px;
}
</style>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script src="jquery.min.js"></script>  
		<script src="bootstrap.min.js"></script>
		<script src="croppie.js"></script>
		<link rel="stylesheet" href="bootstrap.min.css" />
		<link rel="stylesheet" href="croppie.css" />
<title>Stone-Palace</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="js/jquery-2.1.1.min.js"></script> 
<!--icons-css-->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<link href='http://fonts.googleapis.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'>
<!--static chart-->
<script src="js/Chart.min.js"></script>
<script src="js/skycons.js"></script>
<!--//skycons-icons-->
</head>
<body>
<script src='../../../../../ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src="../../../../../m.servedby-buysellads.com/monetization.js" type="text/javascript"></script>

<script src="../../../../../codefund.io/properties/441/funder.js" async="async"></script>

<!-- Global site tag (gtag.js) - Google Analytics -->	
<!-- Demo bar start -->
	
<div class="page-container">	
   <div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
				<div class="header-main">
					<div class="header">
							<div class="logo-name">
									 <a href="main.php"> <h1>Stone-Palace :: Admin Panel </h1> 
									<!--<img id="logo" src="" alt="Logo"/>--> 
								  </a> 								
							</div>
							<!--search-box-->
						 </div>
						 <div class="header-right">
							
							<!--notification menu end -->
							<div class="profile_details">		
								<ul>
									<li class="dropdown profile_details_drop">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
											<div class="profile_img">	
												<span class="prfil-img"><img src="images/p1.png" width="50px" height="50px" alt=""> </span> 
												<div class="user-name">
													<p>Hey !</p>
													<span>Administrator</span>
												</div>
												<div class="clearfix"></div>	
											</div>	
										</a>
										<ul class="dropdown-menu drp-mnu">
										
											<li> <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a> </li>
										</ul>
									</li>
								</ul>
							</div>
							<div class="clearfix"> </div>				
						</div>
				     <div class="clearfix"> </div>	
				</div>
<!--heder end here-->
<!-- script-for sticky-nav -->
		<script>
		$(document).ready(function() {
			 var navoffeset=$(".header-main").offset().top;
			 $(window).scroll(function(){
				var scrollpos=$(window).scrollTop(); 
				if(scrollpos >=navoffeset){
					$(".header-main").addClass("fixed");
				}else{
					$(".header-main").removeClass("fixed");
				}
			 });
			 
		});
		</script>
		<!-- /script-for sticky-nav -->
<!--inner block start here-->
<div class="inner-block col-md-12" >
<!--market updates updates-->
<div id='dashboard' style='display:block;' >
	 <div class="market-updates">
			<div class="col-md-4 market-update-gd">
				<div class="market-update-block clr-block-1">
					<div class="col-md-8 market-update-left">
						<h3><?php echo $i; ?></h3>
						<h4>Registered Users</h4>
						<p>total</p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-file-text-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
			<div class="col-md-4 market-update-gd" onclick="">
				<div class="market-update-block clr-block-3">
					<div onclick="goproduct()" class="col-md-8 market-update-left">
						<h3><?php  echo $i2 ; ?></h3>
						<h4>Total </h4>
						<p>Products</p>
					</div>
					<div class="col-md-4 market-update-right">
						<i class="fa fa-envelope-o"> </i>
					</div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		   <div class="clearfix"> </div>
		</div>

</div>
<!------------------------------------------------------new product--------------------->

<div class="col-md-12" id='newproduct' style='display :none;width:100%;'>

  <div class="card-header" >
   
   <h2 style="align:center">Search your product</h2><br />
   <div class="form-group">
    <div class="input-group">
     <span class="input-group-addon">Search</span>
     <input type="text" name="search_text" id="search_text" placeholder="Search by Customer Details" class="form-control" />
    </div>
   </div>
   <br />
   <div class="well" id="result"></div>
  </div>
  
</div>

<script>
$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"fetch.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#result').html(data);
   }
  });
 }
 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>
<div class="col-md-12" id='manageuser' style='display :none;width:100%;'>

  <div class="card-header" >
   
   <h2 style="align:center">Search your product</h2><br />
   <div class="form-group">
    <div class="input-group">
     <span class="input-group-addon">Search</span>
     <input type="text" name="search_text" id="search_text" placeholder="Search by Customer Details" class="form-control" />
    </div>
   </div>
   <br />
   <div class="well" id="result"></div>
  </div>
  
</div>

<script>
$(document).ready(function(){

 load_data();

 function load_data(query)
 {
  $.ajax({
   url:"fetch.php",
   method:"POST",
   data:{query:query},
   success:function(data)
   {
    $('#result').html(data);
   }
  });
 }
 $('#search_text').keyup(function(){
  var search = $(this).val();
  if(search != '')
  {
   load_data(search);
  }
  else
  {
   load_data();
  }
 });
});
</script>

<!------------------------------------------------------end new product--------------------->
<!-------------------sub category--->
<div class="col-md-12" id='addmaincategory' style='display :none;width:100%;'>
<h4 style="text-align:center;">Add main category only.</h4>

<form class="form" action="savemaincategory.php" method="POST">
<div class=""  style="border:1px solid ;border-radius:10px;margin-top:10px;margin-bottom:5px;padding:10px;">
		<div class="card mb-3" >
  <div class="no-gutters">
  
<input type="text" class="form-control" name="name" placeholder="Enter new main category name..."  required>
<input type="submit" class="btn btn-primary" style="float:right;margin:5px;" value=" + add it " />
   
   
  </div>
</div>
</div>
</form>


<div class="well">
<h5 style="text-align:center">Already created categories.</h5>
					<?php
					$qury= 'SELECT * FROM `maincategory`';
					$reslt=mysqli_query($conn,$qury);
								while($row=mysqli_fetch_assoc($reslt))
								{
									$name= $row['name'];
										
									echo '<div style="width:100%;margin-top:5px;" class="card-header"><h3>'; echo $name; echo'</h3></div><br>';												
											
								}
								
							
				?>
				
</div>
</div>
<!--------------------end main category-->
<!-------------------sub category--->

<div class="col-md-12" id='addsubcategory' style='display :none;width:100%;'>
<div class="card-body">
<h5 style="text-align:center">Add sub categories.</h5>
					
				<div style="width:100%;margin-top:5px;" class="well"><h3 style="text-align:center;">Add items </h3>
									 		<div class=""  style="border:1px solid aqua;border-radius:10px;margin-top:10px;margin-bottom:5px;padding:10px;">
												<div class="" >
										  <div class="no-gutters justify-content-center " style="padding:10px;">
										 		<form id="fromid" action="addproduct.php" method="post" enctype="multipart/form-data">
									
													<div class="form-group " >
													  
													  <textarea id="product_name" name="product_name" placeholder="PRODUCT NAME" class="form-control input-md areasunder" required="" type="text"></textarea>
													<textarea id="product_description" name="product_description" placeholder="PRODUCT DESCRIPTION" class="form-control input-md areasunder" required="" type="text"></textarea>
													  <input id="PRICE" name="PRICE" placeholder="PRODUCT PRICE " class="form-control input-md areasunder" required="" type="number" min="0">
													  <input id="product_weight" name="product_weight" placeholder="PRODUCT WEIGHT " class="form-control input-md areasunder" required="" type="number" min="0">
														<input class="form-control areasunder" id="product_stock" name="product_stock" placeholder="STOCK" type="number" min="1">
													 <div class="custom-file areasunder">
													 <input type="file" class="custom-file-input form-control " id="file" name="file" >
													 <label class="custom-file-label areasunder" >Upload Image </label>
													 </div>
													<!-- File Button -->
													<select name="cat" class="form-control areasunder" style="margin-top:10px;">
																 <?php
																			$qury= 'SELECT * FROM `maincategory`';
																			$reslt=mysqli_query($conn,$qury);
																						while($row=mysqli_fetch_assoc($reslt))
																						{
																							$name= $row['name'];
																							$id=$row['id'];
																							echo '<option value="'.$id.'">'.$name.'</option>
																							';
																						}
																						?>
																						
													</select>

													</div>
													<input type="submit" class="btn btn-primary" style="float:right;margin:5px;padding:10px;text-align:center;margin-top:20px;" value=" + add it " />


													</form>
										  
										
										  </div>
										</div>
										</div>
									</div>
									<br>
				
</div>
</div>
<!--------------------order-->


<!--------------------end orderss-->
</div>
<script>
	function goproduct()
	{
		var a=document.getElementById('newproduct');
		var b=document.getElementById('dashboard');
		var c=document.getElementById('addmaincategory');
		var d=document.getElementById('addsubcategory');
		var e=document.getElementById('orders');
		
		if(b.style.display!='none')
		{
			b.style.display='none';
			a.style.display='block';
			c.style.display='none';
			d.style.display='none';
			e.style.display='none';
		}
		else
		{
		b.style.display='none';
			a.style.display='block';
			c.style.display='none';
			d.style.display='none';
			e.style.display='none';
		}
		
	}
	function gomaincategory()
	{
		var a=document.getElementById('newproduct');
		var b=document.getElementById('dashboard');
		var c=document.getElementById('addmaincategory');
		
		var d=document.getElementById('addsubcategory');
		var e=document.getElementById('orders');
		if(b.style.display!='none')
		{
			b.style.display='none';
			a.style.display='none';
			c.style.display='block';
			d.style.display='none';
			e.style.display='none';
		}
		else
		{
		b.style.display='none';
			a.style.display='none';
			c.style.display='block';
			d.style.display='none';
			e.style.display='none';
		}
	}
	function gosubcategory()
	{
		var a=document.getElementById('newproduct');
		var b=document.getElementById('dashboard');
		var c=document.getElementById('addmaincategory');
		
		var d=document.getElementById('addsubcategory');
		var e=document.getElementById('orders');
		if(b.style.display!='none')
		{
			b.style.display='none';
			a.style.display='none';
			d.style.display='block';
			c.style.display='none';
			e.style.display='none';
		}
		else
		{
		b.style.display='none';
			a.style.display='none';
			d.style.display='block';
			c.style.display='none';
			e.style.display='none';
		}
	}
	function makeorders()
	{
		var a=document.getElementById('newproduct');
		var b=document.getElementById('dashboard');
		var c=document.getElementById('addmaincategory');
		
		var d=document.getElementById('addsubcategory');
		var e=document.getElementById('orders');
		if(b.style.display!='none')
		{
			b.style.display='none';
			a.style.display='none';
			d.style.display='none';
			c.style.display='none';
			e.style.display='block';
		}
		else
		{
			b.style.display='none';
			a.style.display='none';
			d.style.display='none';
			c.style.display='none';
			e.style.display='block';
		}
	}

	
</script>

</div>
</div>


<!--slider menu-->
    <div class="sidebar-menu" style="height:100%;">
		  	<div class="logo"> <a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> <a href="#"> <span id="logo" ></span> 
			      <!--<img id="logo" src="" alt="Logo"/>--> 
			  </a> </div>		  
		    <div class="menu">
		      <ul id="menu" >
		        <li id="menu-home" ><a href="main.php" ><i class="fa fa-tachometer"></i><span>Dashboard</span></a></li>
		       
		       
		         <li><a href="#" onclick="gomaincategory()"><i class="fa fa-plus-square-o"></i><span>Add main</span></a></li>
		         <li><a href="#" onclick="gosubcategory()"><i class="fa fa-plus"></i><span>Add product</span></a></li>
		         <li><a href="#" onclick="goproduct()"><i class="fa fa-shopping-cart"></i><span>Inventory</span></a></li>
				 <li><a href="#" onclick="manageusers()"><i class="fa fa-user"></i><span>Manage Users</span></a></li>
		         <li><a href="#" onclick=""><i class="fa fa-truck"></i><span>Orders</span></a></li>
		         <li><a href="logout.php"><i class="fa fa-sign-out"></i><span>Logout</span></a></li>
		      </ul>
		    </div>
	 </div>
	<div class="clearfix"> </div>
</div>
<!--slide bar menu end here-->
<script>
var toggle = true;
            
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
    $(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
    $("#menu span").css({"position":"absolute"});
  }
  else
  {
    $(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
    setTimeout(function() {
      $("#menu span").css({"position":"relative"});
    }, 400);
  }               
                toggle = !toggle;
            });
</script>
<!--scrolling js-->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!--//scrolling js-->
<script src="js/bootstrap.js"> </script>
<!-- mother grid end here-->
<!--copy rights start here-->

</body>

</html>                     

	