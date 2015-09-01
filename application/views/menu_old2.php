

<script type="text/javascript" src="<?=base_url()?>js/moment.js"></script>

<?php 
	if ($this->session->userdata('is_logged_in'))
		echo 'Hola, '.$this->session->userdata('name').' ('. anchor(base_url()."users/logout/", "logout") .') | ';
	elseif (!$this->session->userdata('is_logged_in') && ($this->uri->segment(2) == 'signin' || $this->uri->segment(2) == 'validate'))
		echo anchor(base_url().'users/signup/','Sign Up').' | ';
	else
		echo "     
	<nav class='navbar navbar-inverse navbar-fixed-top' role='navigation'>
        <div class='container'>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class='collapse navbar-collapse'>
                <ul class='nav navbar-nav'>
                    <li>".anchor(base_url().'users/signin/','Login')."</li>
                    <li>".anchor(base_url().'blog/entry/', 'Nueva entrada')."</li>
                    <li>".anchor(base_url(), 'Todas las entradas').
                    "</li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
";
?>



