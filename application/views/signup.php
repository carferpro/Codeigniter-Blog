<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Registrarse</title>	
	<link rel="stylesheet" href="<?=base_url()?>bootstrap/css/bootstrap.min.css">
	<!-- Latest compiled and minified JQuery -->
	<script type="text/javascript" src="<?=base_url()?>bootstrap/js/jquery-1.11.2.min.js"></script>
	<!-- Latest compiled and minified JavaScript for Bootstrap -->
	<script src="<?=base_url()?>bootstrap/js/bootstrap.min.js"></script>	
    <?php //require_once(base_url().'application/views/templates/seccion_head.php');?>
</head>
<body>
	<?php include('menu.php');?>
<div class="container" style="margin-top:5em">
	<?=form_open(base_url().'users/register/')?>
	<p>Name: <?=form_input('name')?></p>
	<p>Username: <?=form_input('username')?></p>
	<p>Password: <?=form_password('password')?></p>
	<?=form_submit('submit', 'Register')?>
</div>
</body>
</html>