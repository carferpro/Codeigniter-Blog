<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Nueva entrada</title>	
	<link rel="stylesheet" href="<?=base_url()?>bootstrap/css/bootstrap.min.css">
	<!-- Latest compiled and minified JQuery -->
	<script type="text/javascript" src="<?=base_url()?>bootstrap/js/jquery-1.11.2.min.js"></script>
	<!-- Latest compiled and minified JavaScript for Bootstrap -->
	<script src="<?=base_url()?>bootstrap/js/bootstrap.min.js"></script>	
    <?php //require_once(base_url().'application/views/templates/seccion_head.php');?>
</head>
<body style="background-color:#becdee">
	<?php include('menu.php');?>
<div class="container" style="margin-top:5em">
	<?=form_open(base_url().'blog/insert_entry/')?>
	<p>Title: <?=form_input('title')?></p>
	<p>Content: <?=form_textarea('content')?></p>
	<p>Tags: <?=form_input('tags')?> (comma separated)</p>
	<?=form_submit('submit', 'Insert')?>
</div>
</body>
</html>