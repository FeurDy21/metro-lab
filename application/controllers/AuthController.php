<?php

class AuthController extends Zend_Controller_Action {

    public function loginAction() {

        $keygen = new Application_Model_Tools_Key();
        $sms = new Application_Model_Tools_SMS();
        $session = new Zend_Session_Namespace('Kinara');
        if ($this->getRequest()->isPost()):

            $data = $this->getRequest()->getPost();
            $mAdministrateur = new Application_Model_Mappers_Administrateurs();
          
            $auth = $mAdministrateur->authenticate(array('login' => $data['username']));
            
            if ($auth)
            if (sizeof($auth) > 0):
                $session->user = array(
                    'user' => $auth['ADMINISTRATEUR'],
                    'id-user' => $auth['ID_ADMIN'],
                    'id-groupe' => $auth['ID_GROUPE'],
                    'groupe' => $auth['groupe']
             );

                $this->_redirect("/");

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

        $this->_helper->layout()->setLayout('login_layout');
    }


    public function logoutAction() {
        Zend_Auth::getInstance()->clearIdentity();
        Zend_Session::destroy();
        $this->_redirect('/auth/login');
    }
    
    

}
