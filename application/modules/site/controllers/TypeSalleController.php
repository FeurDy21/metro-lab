<?php


class Setting_TypeSalleController extends Zend_Controller_Action {
    
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
        
        $mTypeSalle = new Application_Model_Mappers_TypesSalles();
        $this->view->typeSalles = $mTypeSalle->findAll();
        
        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function elementAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;
        
        $this->view->classSandbox = "active";
        
        $mTypeSalle = new Application_Model_Mappers_TypesSalles();
        $mElement = new Application_Model_Mappers_Elements();
        $this->view->typeSalles = $mTypeSalle->findAll();
        $this->view->elements = $mElement->findAll();
        
        $this->_helper->layout()->setLayout('azia_layout');
    }

    
    
    public function addAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eTypeSalle = new Application_Model_Entities_TypesSalles();
        $result = $eTypeSalle->insert(array('type_salle' => $data['type']));
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout(); 
    }


    public function addElementAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eElement = new Application_Model_Entities_Elements();
        $result = $eElement->insert(array('element' => $data['element']));
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout(); 
    }
    
    
    public function editAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eTypeSalle = new Application_Model_Entities_TypesSalles();
        $result = $eTypeSalle->update(array(
                    'type_salle' => $data['type']), 
                    array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout();
    }


    public function editElementAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eElement = new Application_Model_Entities_Elements();
        $result = $eElement->update(array(
                    'element' => $data['element']), 
                    array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout();
    }


    public function deleteAction() {

        $data = $this->getRequest()->getPost();
        $eTypeSalle = new Application_Model_Entities_TypesSalles();
        $result = $eTypeSalle->delete(array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }


    public function deleteElementAction() {

        $data = $this->getRequest()->getPost();
        $eElement = new Application_Model_Entities_Elements();
        $result = $eElement->delete(array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }



    public function actionElementAction() {

        $session = new Zend_Session_Namespace('Kinara');

        $data = $this->getRequest()->getPost();
        $eTypeSalleElement = new Application_Model_Entities_TypesSallesElements();
        $mTypeSalleElement = new Application_Model_Mappers_TypesSallesElements();
        $element = $mTypeSalleElement->findAll(array('salle'=>$data['salle'],'element'=>$data['element']));
        
        if(sizeof($element)>0):
            $eTypeSalleElement->delete(array('id_type_salle=?' => $data['salle'],'id_element=?' => $data['element']));
        else:
            $eTypeSalleElement->insert(array('id_type_salle' => $data['salle'],'id_element' => $data['element']));
        endif;
        
        $this->view->statut = "OK";
                
        $log = new Application_Model_Tools_Logs();
        $log->warn(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));
        
        $this->_helper->layout()->disableLayout();
    }
   
  
   

}

