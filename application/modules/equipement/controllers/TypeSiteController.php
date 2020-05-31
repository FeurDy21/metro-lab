<?php


class Setting_TypeSiteController extends Zend_Controller_Action {
    
    public function init() {
        parent::init();  
         
    }

    public function listAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;
        
        $this->view->classSetting = "active";
        
        $mTypeSite = new Application_Model_Mappers_TypesSites();
        $this->view->typeSites = $mTypeSite->findAll();
        
        $this->_helper->layout()->setLayout('azia_layout');
    }

    
    
    public function addAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eTypeSite = new Application_Model_Entities_TypesSites();
        $result = $eTypeSite->insert(array('type_site' => $data['type']));
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout(); 
    }
    
    
    public function editAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eTypeSite = new Application_Model_Entities_TypesSites();
        $result = $eTypeSite->update(array(
                    'type_site' => $data['type']), 
                    array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout();
    }


    public function deleteAction() {

        $data = $this->getRequest()->getPost();
        $eTypeSite = new Application_Model_Entities_TypesSites();
        $result = $eTypeSite->delete(array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }
   
  
   

}

