<?php


class Setting_IndexController extends Zend_Controller_Action {
    
    public function init() {
        parent::init();  
         
    }

    public function indexAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");
        else:
            $this->_redirect("setting/dashboard");
        endif;
        
    }
    
    
    
   
  
   

}

