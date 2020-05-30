<?php


class Site_DashboardController extends Zend_Controller_Action {
    
    public function init() {
        parent::init();  
         
    }

    public function indexAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;
        
        $this->view->classDashboard = "active";

        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function recordAction() {
        
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $this->view->URL = explode("?",$this->getRequest()->getRequestUri());
                
        
        $this->_helper->layout()->setLayout('azia_layout');
    }
    
    
    
   
  
   

}

