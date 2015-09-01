<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Ver entradas</title>	
	<link rel="stylesheet" href="<?=base_url()?>bootstrap/css/bootstrap.min.css">
	<!-- Latest compiled and minified JQuery -->
	<script type="text/javascript" src="<?=base_url()?>bootstrap/js/jquery-1.11.2.min.js"></script>
	<!-- Latest compiled and minified JavaScript for Bootstrap -->
	<script src="<?=base_url()?>bootstrap/js/bootstrap.min.js"></script>	
    <?php //require_once(base_url().'application/views/templates/seccion_head.php');?>
</head>
<body style="background-color:#f4e3b1">
<?php include('menu.php');?>
<div class="container" style="margin-top:3em">
   <div class="row">
      <div class="col-lg-8">
   
			<?php if (!empty($entries)) : ?>
				<?php foreach($entries as $entry) : ?>
					<h2 style="">Titulo de la entrada:</h2>
					<h3 style="margin-top:0"><?=anchor(base_url().'blog/view/'.$entry->id,$entry->title)?></h3>
					<h4 style="display:inline-block" class="media-heading">Autor:</h4> <?=$entry->author?><br />
					<p><span class="glyphicon glyphicon-time"></span> Posteado el  <?=convertDateTimetoTimeAgo($entry->date)?></p>
					<hr />
				<?php endforeach; ?>
			<?php else : ?>
				<h1>No entries</h1>
			<?php endif; ?>
       </div>
   </div>
</div>			


</body>
</html>

