<?php


class Certificat_CentralabetonController extends Zend_Controller_Action {
    
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
    
     public function piedacoulisseAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

        $this->_helper->layout()->setLayout("certificat_layout");
    }

      public function eauAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

        $this->_helper->layout()->setLayout("certificat_layout");
    }
    
      public function cimentAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

        $this->_helper->layout()->setLayout("certificat_layout");
    
}

   public function aggregatAction() { 
        
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

        $this->_helper->layout()->setLayout("certificat_layout");
    }


    public function certificatadjuvantAction() {  
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



     public function certificataggregatAction() {  
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

     $data = $this->getRequest()->getPost();

$identifiant=date("d").date("m").'-'.substr(md5(uniqid(rand(),true)),1,3).'-'.date("Y");

        $this->view->numero_certificat=$identifiant;

        $this->view->balance=$data;

        $this->_helper->layout()->setLayout("certificat_layout");
    }
    
   
    public function  certificatcimentAction() {  
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

     $data = $this->getRequest()->getPost();

$identifiant=date("d").date("m").'-'.substr(md5(uniqid(rand(),true)),1,3).'-'.date("Y");

        $this->view->numero_certificat=$identifiant;

        $this->view->balance=$data;

        $this->_helper->layout()->setLayout("certificat_layout");
    }
    
    
     public function  certificateauAction() {  
        $session =new Zend_Session_Namespace('Kinara');
        if(!$session->user):
            $this->_redirect("setting/auth/login");   
        endif;

     $data = $this->getRequest()->getPost();

$identifiant=date("d").date("m").'-'.substr(md5(uniqid(rand(),true)),1,3).'-'.date("Y");

        $this->view->numero_certificat=$identifiant;

        $this->view->balance=$data;

        $this->_helper->layout()->setLayout("certificat_layout");
    }
    
  
   

}

