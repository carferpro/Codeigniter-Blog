<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title><?=$entry->title?></title>	
	<link rel="stylesheet" href="<?=base_url()?>bootstrap/css/bootstrap.min.css">
	<!-- Latest compiled and minified JQuery -->
	<script type="text/javascript" src="<?=base_url()?>bootstrap/js/jquery-1.11.2.min.js"></script>
	<!-- Latest compiled and minified JavaScript for Bootstrap -->
	<script src="<?=base_url()?>bootstrap/js/bootstrap.min.js"></script>	
    <?php //require_once(base_url().'application/views/templates/seccion_head.php');?>
</head>
<body style="background-color:#becdee">
<?php include('menu.php');?>
<div class="container" style="margin-top:3em">
 <div class="row">
   <div class="col-lg-8">
			<h2><?=$entry->title?></h2>
			<p><?=$entry->content?></p>
		    <h4 style="display:inline-block" class="media-heading">Autor:</h4> <?=$entry->author?><br />
			<p style="color:#0c4bda"><span class="glyphicon glyphicon-time"></span> Posteado  <?=convertDateTimetoTimeAgo($entry->date)?></p>
			<h4>Tags: <?=tags($entry->tags)?></h4><hr />

			<!-----------------------------------------------------
			formulario para agregar comentario
			------------------------------------------------------>

			<?php if($this->session->userdata('is_logged_in')) : ?>
					<p>Su comentario: </p>
					<?=form_open(base_url().'blog/comment/')?>
						<?=form_hidden('id_blog', $this->uri->segment(3))?>
						<?=form_textarea('comment')?>
						<?=form_submit('submit','Send')?>
					<?=form_close()?>
			<?php endif; ?>




			<!-----------------------------------------------------
			Bucle para mostrar todos los comentaris de la entrada
			------------------------------------------------------>
			<?php
				if(!empty($comments)){
					echo '<h3 style="text-align:center">Comentarios</h3>';
					foreach($comments as $comment)
						echo 
							'<h4 style="display:inline-block"  class="media-heading">Autor:</h4><p>'.$comment->author.'</p>
							<p style="font-style: italic ">'.$comment->comment.'</p>
							<small style="color:#3f76f1"><span class="glyphicon glyphicon-time"></span> Posteado '.convertDateTimetoTimeAgo($comment->date).'</small><br><br>';
				}
				else
					echo '<h3>No hay ningun comentario</h3>';
			?>
   </div>	
  </div>	
</div>	


</body>
</html>

					<!--div class="well">
						   <h4>Su comentario:</h4>
						   <form role="form">
					                 <div class="form-group">
                                     <input type="textarea" name="username" id="username" value="johndoe" maxlength="100" size="50" style="width:50%" />
					                       <textarea class="form-control" rows="3"></textarea>
					                 </div>
					                 <button type="submit" class="btn btn-primary">Submit</button>
						   </form>
					</div-->
