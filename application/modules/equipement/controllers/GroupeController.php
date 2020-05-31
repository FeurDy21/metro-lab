<?php

class Setting_GroupeController extends Zend_Controller_Action {

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

        $this->view->classUser = "active";

        $mGroupe = new Application_Model_Mappers_Groupes();
        $this->view->groupes = $mGroupe->findAll();

        $this->_helper->layout()->setLayout('azia_layout');
    }

    public function addAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        if ($this->getRequest()->isPost()):

            $data = $this->getRequest()->getPost();
            $eGroupe = new Application_Model_Entities_Groupes();
            $eGroupe->insert(array('groupe' => strtoupper($data['groupe'])));

            $this->view->statut = "OK";

            $log = new Application_Model_Tools_Logs();
            $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;


        //$this->_helper->layout()->setLayout('backoffice_layout');
        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }

    public function editAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;


        if ($this->getRequest()->isPost()):

            $data = $this->getRequest()->getPost();
            $eGroupe = new Application_Model_Entities_Groupes();
            $eGroupe->update(array('groupe' => strtoupper($data['groupe'])), 
                array('id=?' => $this->getRequest()->getParam('id')));

            $this->view->statut = "OK";

            $log = new Application_Model_Tools_Logs();
            $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;


        //$this->_helper->layout()->setLayout('backoffice_layout');
        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }

    public function deleteAction() {

        $session = new Zend_Session_Namespace('Kinara');

        $data = $this->getRequest()->getPost();
        $eGroupe = new Application_Model_Entities_Groupes();
        $eGroupe->delete(array('id=?' => $data['id']));
        
        $this->view->statut = "OK";
                
        $log = new Application_Model_Tools_Logs();
        $log->warn(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));
        
        $this->_helper->layout()->disableLayout();
    }

    //Gestion des modules
    public function moduleAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $this->view->classUser = "active";
        $this->view->g = $this->getRequest()->getParam('g');

        $mGroupe = new Application_Model_Mappers_Groupes();
        $mModule = new Application_Model_Mappers_Modules();
        $this->view->modules = $mModule->findAll();
        $this->view->groupe = $mGroupe->find($this->getRequest()->getParam("g"));

        if ($this->getRequest()->isPost()):

            $data = $this->getRequest()->getPost();
            $eGroupeModule = new Application_Model_Entities_GroupesModules();
            $eGroupeModule->delete(array('id_groupe=?' => $this->getRequest()->getParam("g")));

            for($i=1;$i<=4;$i++):
                $eGroupeModule->insert(array(
                    'id_groupe' => $this->getRequest()->getParam("g"),
                    'groupe_module'=>($data['module_'.$i])?1:0));
            endfor;

            $this->_redirect("setting/groupe/module/g/".$this->getRequest()->getParam("g"));

            $log = new Application_Model_Tools_Logs();
            $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;
        

        $this->_helper->layout()->setLayout('azia_layout');
        //$this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }


    public function actionModuleAction() {

        $session = new Zend_Session_Namespace('Kinara');

        $data = $this->getRequest()->getPost();
        $eGroupeModule = new Application_Model_Entities_GroupesModules();
        $mGroupeModule = new Application_Model_Mappers_GroupesModules();
        $module = $mGroupeModule->findByGroupeByModule(array('groupe'=>$data['groupe'],'module'=>$data['module']));
        
        if(sizeof($module)>0):
            $eGroupeModule->delete(array('id_groupe=?' => $data['groupe'],'id_module=?' => $data['module']));
        else:
            $eGroupeModule->insert(array('id_groupe' => $data['groupe'],'id_module' => $data['module']));
        endif;
        
        $this->view->statut = "OK";
                
        $log = new Application_Model_Tools_Logs();
        $log->warn(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));
        
        $this->_helper->layout()->disableLayout();
    }
    
    

}
