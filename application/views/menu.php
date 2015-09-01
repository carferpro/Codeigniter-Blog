

<script type="text/javascript" src="<?=base_url()?>js/moment.js"></script>
<?php 
echo '

<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
  <div class="container">
     <div class="collapse navbar-collapse" >
          <ul class="nav navbar-nav">';

			if ($this->session->userdata('is_logged_in'))
				echo 
			       '<li><a  style="color:green">Hola, '.$this->session->userdata('name'). '</a></li>
			        <li>'.anchor(base_url()."users/logout/", "logout") .'</li>
			        <li>'.anchor(base_url()."blog/entry/", "Nueva entrada").'</li>
			        <li>'.anchor(base_url(), "Todas las entradas").'</li>';

			elseif (!$this->session->userdata('is_logged_in') && ($this->uri->segment(2) == 'signin' || $this->uri->segment(2) == 'validate'))
				echo 
			       '<li>'.anchor(base_url()."users/signup/","Registro").'</li>';
			else
				echo '<li>'.anchor(base_url()."users/signin/","Login").'</li>
			          <li>'.anchor(base_url()."blog/entry/", "Nueva entrada").'</li>
			          <li>'.anchor(base_url(), "Todas las entradas").'</li>';
echo '
          </ul>
     </div>
   </div>
</nav>';
?>