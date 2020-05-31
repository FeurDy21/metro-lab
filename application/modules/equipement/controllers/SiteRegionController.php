<?php


class Site_SiteRegionController extends Zend_Controller_Action {
    
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
        
        $this->view->MonPays = $this->getRequest()->getParam('p');
        $this->view->p = $this->getRequest()->getParam('p');
        $this->view->r = $this->getRequest()->getParam('r');
        $this->view->v = $this->getRequest()->getParam('v');
        $this->view->c = $this->getRequest()->getParam('c');
        $this->view->q = $this->getRequest()->getParam('q');
        
        $mPays = new Application_Model_Mappers_Pays();
        $mRegion = new Application_Model_Mappers_Regions();
        $mVille = new Application_Model_Mappers_Villes();
        $mCommune = new Application_Model_Mappers_Communes();
        $mQuartier = new Application_Model_Mappers_Quartiers();
        $mSite = new Application_Model_Mappers_Sites();
        $mTypeSite = new Application_Model_Mappers_TypesSites();

        $this->view->pays = $mPays->find($this->getRequest()->getParam('p'));
        $this->view->types = $mTypeSite->findAll();
        $this->view->region = $mRegion->find($this->getRequest()->getParam('r'));
        $this->view->sites = $mSite->findByRegion(array('region'=>$this->getRequest()->getParam('r')));
        $this->view->villes = $mVille->findAll(array('region'=>$this->getRequest()->getParam('r')));
        if($this->getRequest()->getParam('v'))$this->view->communes = $mCommune->findAll(array('ville'=>$this->getRequest()->getParam('v')));
        if($this->getRequest()->getParam('c'))$this->view->quartiers = $mQuartier->findAll(array('commune'=>$this->getRequest()->getParam('c')));

        if($this->getRequest()->isPost()):

            $data = $this->getRequest()->getPost();
            
            $eSite = new Application_Model_Entities_Sites();
            $result = $eSite->insert(array(
                'reference' => $data['reference-site'],
                'id_quartier' => $data['quartier'],
                'id_type_site' => $data['type-site'],
                'site' => $data['site'],
                'date_creation' => date('Y-m-d h:i:s')
            ));

            $this->_redirect("site/site-region/list/p/".$this->getRequest()->getParam("p")."/r/".$this->getRequest()->getParam("r"));
        endif;
        
        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function dossierAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;
        
        $this->view->MonPays = $this->getRequest()->getParam('p');
        $this->view->p = $this->getRequest()->getParam('p');
        $this->view->r = $this->getRequest()->getParam('r');
        
        $mPays = new Application_Model_Mappers_Pays();
        $mRegion = new Application_Model_Mappers_Regions();
        $mSite = new Application_Model_Mappers_Sites();
        $mSalle = new Application_Model_Mappers_Salles();
        $mTypeSalle = new Application_Model_Mappers_TypesSalles();
        $mElement = new Application_Model_Mappers_Elements();

        $this->view->pays = $mPays->find($this->getRequest()->getParam('p'));
        $this->view->region = $mRegion->find($this->getRequest()->getParam('r'));
        $this->view->site = $mSite->find($this->getRequest()->getParam('s'));
        $this->view->salles = $mSalle->findAll(array('site'=>$this->getRequest()->getParam('s')));
        $this->view->elements = $mElement->findAll();
        $this->view->types = $mTypeSalle->findAll();
        
        $this->_helper->layout()->setLayout('azia_layout');
    }
    
    
    public function editAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eSite = new Application_Model_Entities_Sites();
        $result = $eSite->update(array(
                    'site' => $data['site']), 
                    array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout();
    }
    
    
    public function deleteAction() {

        $data = $this->getRequest()->getPost();
        $eSite = new Application_Model_Entities_Sites();
        $result = $eSite->delete(array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }
   
  
   

}

