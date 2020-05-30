<?php

class Setting_AuthController extends Zend_Controller_Action {

    public function loginAction() {

        $keygen = new Application_Model_Tools_Key();
        $sms = new Application_Model_Tools_SMS();

        $session = new Zend_Session_Namespace('Kinara');
        

        if ($this->getRequest()->isPost()):

            $data = $this->getRequest()->getPost();
            $mAdministrateur = new Application_Model_Mappers_Administrateurs();
            $auth = $mAdministrateur->authenticate(array('login' => $data['username'], 'password' => $data['password']));
            
            $MODULE = array();
            if($auth['id_groupe']):
            endif;

            if (sizeof($auth) > 0):
                
                $session->user = array(
                    'user' => $auth['administrateur'],
                    'id-user' => $auth['id'],
                    'id-groupe' => $auth['id_groupe'],
                    'groupe' => $auth['groupe'],
                    'module'=>$MODULE);
                    
                $this->_redirect("setting/dashboard");

            else:
                $this->view->message = '<div class="alert alert-danger">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                    <strong>Paramètres incorrects...</strong>
                    </div>';
            endif;

                    //journal
        $log = new Application_Model_Tools_Logs();
        $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;

        $this->_helper->layout()->setLayout('azia_login_layout');
    }

    public function logoutAction() {
        Zend_Auth::getInstance()->clearIdentity();
        Zend_Session::destroy();
        $this->_redirect('/setting/auth/login');
    }

}
