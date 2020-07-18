<?php


class Certificat_PresseCimentController extends Zend_Controller_Action {
    
    public function init() {
        parent::init();  
         
    }

    public function indexAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

        $this->_helper->layout()->setLayout("certificat_layout");
    }
    

    public function certificatpresseAction() {  
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;
     
     $data = $this->getRequest()->getPost();

   $identifiant=date("d").date("m").'-'.substr(md5(uniqid(rand(), true)),1,3).'-'.date("Y");


     $this->view->numero_certificat=$identifiant;

      $this->view->balance=$data;
      
        $this->_helper->layout()->setLayout("certificat_layout");
    }
    
    
   
  
   

}

