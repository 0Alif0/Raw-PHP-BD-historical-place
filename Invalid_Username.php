<!DOCTYPE html>
<?php
	include("Login.php");
	include("cg_files/cg_index_file/fb_SignUp_file/SignUp.php");
?>
<html lang="en">

<head>
<LINK REL="SHORTCUT ICON" HREF="cg_files/cg_title_icon/candygram.png?<?php echo time(); ?>" />
	<link href="cg_files/cg_index_file/fb_css_file/index_css.css?<?php echo time(); ?>" rel="stylesheet" type="text/css">
    <link href="cg_files/fb_font/font.css?<?php echo time(); ?>" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="cg_files/cg_index_file/fb_js_file/Registration_validation.js?<?php echo time(); ?>"> </script>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=1024,initial-scale=0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ভয়েজার</title>

    <!-- Bootstrap Core CSS -->
    <link href="landing/css/bootstrap.min.css?<?php echo time(); ?>" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="landing/css/landing.css?<?php echo time(); ?>" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="landing/font-awesome/css/font-awesome.min.css?<?php echo time(); ?>" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
	
	<!-- Login Css --> 
	<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>
	<link rel="stylesheet" href="login/style.css?<?php echo time(); ?>">

	
</head>
<script>
	function time_get()
	{
		d = new Date();
		mon = d.getMonth()+1;
		time = d.getDate()+"-"+mon+"-"+d.getFullYear()+" "+d.getHours()+":"+d.getMinutes();
		Reg.fb_join_time.value=time;
	}
</script>
<style>
</style>
<body>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
         	<div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				<a class="navbar-brand" href="#">
					<img alt="Brand" src="Main_Template/img/Capture.png" width="170" height="70" style="margin-top: -4px;">
				</a>
                <a class="navbar-brand" href="#"></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
               
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Header -->
    <a name="sign"></a>
    <div class="intro-header"><form  method="post">
		<div class="alert alert-warning alert-dismissible fixed-top-cus" role="alert">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <h4>আবার ইমেল  দিন</h4><p>ইমেল টি ভুল হয়েছে। শুদ্ব টি লিখুন</p>
</div>
	</form>
        <div class="container">
		
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h3>ভ্রমণ গাইড - দর্শনীয় ভ্রমণ স্থানের তথ্য, গল্প ও টিপস</h3>
                        <div class="login-wrap">
			
	<!-- Login/Signup Form -->
	<form method="post">
		
	<div class="login-html" height="100%">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">প্রবেশ করুন</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">নতুন অ্যাকাউন্ট</label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">নাম</label>
					<input id="user" type="text" class="input" name="username">
				</div>
				<div class="group">
					<label for="pass" class="label">পাসওয়ার্ড</label>
					<input id="pass" type="password" class="input" type="password" name="password">
				</div>
				
				<div class="group">
					<input type="submit" class="button" value="প্রবেশ করুন" name="Login">
				</div>
				<div class="hr"></div>
				
			</div></form>
			<div class="sign-up-htm" id="enl">
			<!-- Registration -->
				<form  method="post" onSubmit="return check();" name="Reg">
				<div class="group"><div class="sdf">
					<label for="user" class="label" >প্রথম নাম</label>
					<input id="user" type="text" class="input" name="first_name">
				</div></div><div class="sdf">
				<div class="group">
					<label for="user" class="label" >শেষ নাম</label>
					<input id="user" type="text" class="input" name="last_name">
				</div></div><div class="sdf">
				<div class="group">
					<label for="user" class="label">ইমেল</label>
					<input id="user" type="text" class="input" name="email">
				</div></div><div class="sdf">
				<div class="group">
					<label for="user" class="label">আবার ইমেল দিন</label>
					<input id="user" type="text" class="input" name="remail">
				</div></div>
				<div class="sdff"><div class="group">
				<label for="user" class="label">পাসওয়ার্ড</label>
					<input id="pass" type="password" class="input" data-type="password" name="password">
				</div>
				<div class="group">
				
					<select class="form-control" name="sex" >
					
			<option value="Select Sex:">  মহিলা//পুরুষ: </option>
			<option value="Female"> মহিলা </option>
			<option value="Male">  পুরুষ </option>
		</select>
				</div>
				<div class="group" >
				<div class="form-inline" style="display: block;margin: 0 auto;float:middle">
					<label for="user" class="label">জন্মদিন</label>
					<div>
	
	<select class="form-control" name="month" style="width:20%;float:left;">
	<option value="Month:"> মাস : </option>
	
	<script type="text/javascript">
	
		var m=new Array("","Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec");
		for(i=1;i<=m.length-1;i++)
		{
			document.write("<option value='"+i+"'>" + m[i] + "</option>");
		}	
	</script>
	
	</select>
	</div>



	<div>
	<select name="day" class="form-control" style="width:20%;float:right;">
	<option value="Day:"> দিন : </option>
	
	<script type="text/javascript">
	
		for(i=1;i<=31;i++)
		{
			document.write("<option value='"+i+"'>" + i + "</option>");
		}
		
	</script>
	
	</select>
	</div>	

	<div style="">
	<select name="year" class="form-control" style="width:20%">
	<option value="Year:"> বছর  : </option>
	
	<script type="text/javascript">
	
		for(i=2017;i>=1960;i--)
		{
			document.write("<option value='"+i+"'>" + i + "</option>");
		}
	
	</script>
	
	</select>
	</div>	</div></div>
				</div>
				<div class="group" style="">
					<input type="submit" class="button" name="signup" value="নিবন্ধন করুন" onClick="time_get()">
				</div>
				
				<div class="foot-lnk" style="">
					<label for="tab-1"><a>আগে নিবন্ধিত থাকলে</a>
				</div>
			</div>
		</div>
	</div>
</div></form>
						
                       
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->

    </div>
    <!-- /.intro-header -->

    <!-- Page Content -->

	
    <!-- jQuery -->
    <script src="landing/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="landing/js/bootstrap.min.js"></script>
<?php
	include("cg_files/cg_index_file/fb_erorr_file/fb_erorr.php");
?>
</body>

</html>
