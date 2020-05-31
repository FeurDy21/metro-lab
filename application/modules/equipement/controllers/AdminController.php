<?php

class Setting_AdminController extends Zend_Controller_Action {

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

        $mAdmin = new Application_Model_Mappers_Administrateurs();
        $mGroupe = new Application_Model_Mappers_Groupes();
        $this->view->users = $mAdmin->findAll();
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

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_Administrateurs();
        $result = $eAdministrateur->insert(array(
            'administrateur' => $data['administrateur'],
            'login' => $data['login'],
            'id_groupe' => $data['groupe'],
            'password' => 'P@ssword'));

        if($result)$this->view->statut = "OK";

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

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_Administrateurs();
        $result = $eAdministrateur->update(array(
            'administrateur' => $data['administrateur'],
            'login' => $data['login'],
            'id_groupe' => $data['groupe']), array('id=?' => $data['id']));

        if ($result)
            $this->view->statut = "OK";

        $this->_helper->layout()->disableLayout();
    }

    public function deleteAction() {

        $data = $this->getRequest()->getPost();
        $eAdministrateur = new Application_Model_Entities_Administrateurs();
        $result = $eAdministrateur->delete(array('id=?' => $data['id']));

        if ($result)
            $this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }


}
