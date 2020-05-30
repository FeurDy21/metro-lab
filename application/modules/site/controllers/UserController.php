<?php

class Principal_UserController extends Zend_Controller_Action {

    public function init() {
        parent::init();
    }

    public function listAction() {

        $session = new Zend_Session_Namespace('Licence');
        if (!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        //Traitement des licences
        if (date("Y-m-d") >= $session->user['expire']):
            $this->_redirect("principal/key");
        endif;

        $this->view->classUser = "active";

        $mUser = new Application_Model_Mappers_Administrateurs();
        $mGroupe = new Application_Model_Mappers_Groupes();
        $mEcole = new Application_Model_Mappers_Ecoles();
        $this->view->users = $mUser->findAll();
        $this->view->groupes = $mGroupe->findAll();
        $this->view->ecoles = $mEcole->findAll();

        $this->_helper->layout()->setLayout('azia_layout');
        //$this->_helper->layout()->disableLayout(); 
        //$this->_helper->viewRenderer->setNoRender(true);
    }

    public function addAction() {

        $session = new Zend_Session_Namespace('Licence');
        if (!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_Administrateurs();
        $result = $eAdministrateur->insert(array(
            'administrateur' => $data['administrateur'],
            'login' => $data['login'],
            'id_groupe' => $data['groupe'],
            'id_ecole' => $data['ecole'],
            'password' => 'P@ssword'));

        if($result)$this->view->statut = "OK";

        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }

    public function editAction() {

        $session = new Zend_Session_Namespace('Licence');
        if (!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_Administrateurs();
        $result = $eAdministrateur->update(array(
            'administrateur' => $data['administrateur'],
            'login' => $data['login'],
            'id_ecole' => $data['ecole'],
            'id_groupe' => $data['groupe'],), array('id=?' => $data['id']));

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
