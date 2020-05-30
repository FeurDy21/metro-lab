<?php


class Site_IndexController extends Zend_Controller_Action {
    
    public function init() {
        parent::init();  
         
    }

    public function indexAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("site/auth/login");
        else:
            $this->_redirect("site/dashboard");
        endif;
        
    }
    
    
    
   
  
   

}

