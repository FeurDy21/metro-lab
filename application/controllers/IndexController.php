<?php

class IndexController extends Zend_Controller_Action {

    public function init() {
        parent::init();
    }

    public function indexAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        //$mModule = new Application_Model_Mappers_Modules();
        //$this->view->modules = $mModule->findAll();

        $this->_helper->layout()->setLayout('index_layout');
    }

}
