<html>
    <head>
        <title>my blog</title>
        <link rel="stylesheet" href="<?php echo base_url();?>assets/css/style.css">
        <script src="<?php echo base_url()."assets/js/ckeditor.js";?>"></script>
        <script>
            function myFunction() {
                var x = document.getElementById("myheader");
                if (x.className === "header") {
                    x.className += " responsive";
                } else {
                    x.className = "header";
                }
            }
        </script>
    </head>
    <body>
        <div class="header" id="myheader">
            <a href= "<?php echo site_url();?>posts" class="active">Home</a>
            <a href= "<?php echo site_url();?>categories">Categories</a>
            <div class="nav-right">
                 <?php if(isset($_SESSION['logged_in']) && isset($_SESSION['is_admin']) == TRUE){ ?>
                    <a href= "<?php echo site_url();?>create/" class="create-post">Create post</a>
                    <a href= "<?php echo site_url();?>create_category/" class="create-post">Create category</a>
                 <?php };?>
            
                <?php if(isset($_SESSION['logged_in'])){ ?>
                    <a href= "<?php echo site_url();?>logout/" class="create-post">Log out</a>
                <?php };?>

                <?php if(!isset($_SESSION['logged_in'])){ ?>
                    <a href="<?php echo site_url();?>login" class="accounts">Login</a>
                    <a href="<?php echo site_url();?>signup" class="accounts">Sign up</a>
                <?php };?>
            </div>
            <div style="clear:both;"></div>
           
            <a href="javascript:void(0);" class="icon" onclick="myFunction()">
                <i class="fa fa-bars"></i>
            </a>
        </div>