<?php
//importaton de class pour exttraction des données d'un fichier excel


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

        $mClient = new Application_Model_Mappers_Client();
        $mEquipement = new Application_Model_Mappers_Equipement();
        $mType = new Application_Model_Mappers_TypeEquipement();
        //$mCertificat = new Application_Model_Mappers_Certificat();
         $this->view->clients = $mClient->findAll();
         $this->view->types = $mType->findAll();
         $this->view->equipements = $mEquipement->findAll();
       // $this->view->certificat = $mCertificat->findAll();   

        $this->view->users = $mAdmin->findAll();
        $this->view->groupes = $mGroupe->findAll();

        $this->_helper->layout()->setLayout('bootstrap_layout');
    }

public function findbyidAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $this->view->classUser = "active";

        $data = $this->getRequest()->getPost();

        $mAdmin = new Application_Model_Mappers_Administrateurs();
        $mGroupe = new Application_Model_Mappers_Groupes();

        $user = $mAdmin->find($data['id']);
        $groupe = $mGroupe->findAll();

        $html="";
       
         if($user)
            foreach ($user as  $u) {
               
            $html.=' <form   class="row" id="updateForm"    accept-charset="utf-8"> <div class="col-12 col-lg-12">
           <input  class="form-control id_admin" type="hidden"  maxlength="255" value="'.$u["ID_ADMIN"].'" nom="administrateur" aria-required="true"       title="autor is empty"/> 
            <div class="form-group"> <label for="PostUsee" class="is-required">Nom et prenom </label> <input  class="form-control addadministrateur" type="text"  maxlength="255" value="'.$u["ADMINISTRATEUR"].'" nom="administrateur" aria-required="true"       title="autor is empty"/> <span  class="erreur-administrateur"></span> </div> <div class="form-group"><label for="PostUser" class="is-required">Login </label> <input  class="form-control addlogin"  type="text" maxlength="255" value="'.$u["LOGIN"].'"  nom="login" aria-required="true"  title="autor is empty"/> <span class="erreur-login" ></span> </div> <div class="form-group"> <label for="PostUser" class="">Mail </label> <input  class="form-control addmail"  type="email" maxlength="255" value="'.$u["MAIL"].'"  nom="mail"    title="autor is empty"/><span  class="erreur-mail"></span> </div> <div class="form-group">  <label for="PostUser" class="is-required">Role </label> 

            <Select class="form-control addgroupe"  maxlength="255"     aria-required="true" title="autor is empty"> 
            '; 

            foreach($groupe as $g){
                if ( $u["ID_GROUPE"]==$g["ID_GROUPE"]) {
        $html.='<option value="'.$g["ID_GROUPE"].'"  selected>'. $g["GROUPE"].'</option>'; 
                }else
       $html.='<option value="'.$g["ID_GROUPE"].'" >'. $g["GROUPE"].'</option>'; 
             }

          $html.=' </Select><span  class="erreur-groupe"></span></div> </div>  <div class="modal-footer"> <button type="button" class="btn btn-secondary" data-dismiss="modal">Annuler</button>  <buttont  type="submit" class="btn btn-primary  updateuser" name="submit" >Mise à jour</button> </div> </form>';
             
            }

      echo $html;

         $this->_helper->layout()->disableLayout();
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
            'mail' => $data['mail']));

        if($result)$this->view->statut = "ok";

        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }


public function addequipementAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_Equipement();

        $result=$eAdministrateur->insert(array('libelle_equipement' => $data["equipement"],'id_type' => $data["type-equipement"],"created_at"=>date("d-m-y H:i:s"),"created_by"=>$session->user["logo"]));
        
        if($result)echo "ok";
          
        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }
     

public function addtypeAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_TypeEquipement();

        $result=$eAdministrateur->insert(array("libelle_type"=> $data["type_equipement"],"created_at"=>date("y-m-d H:i:s"),"created_by"=>$session->user["login"] ));
        
        if($result)echo "ok";
          
        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }


    public function addclientAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $eAdministrateur = new Application_Model_Entities_client();

        $result=$eAdministrateur->insert(array("nom"=> htmlspecialchars($data["entreprise"]),"telephone"=>htmlspecialchars($data["tel"]),"ville"=>htmlspecialchars($data["ville"]),
            "mail"=>htmlspecialchars($data["mail"]),"pays"=>htmlspecialchars($data["pays"]),"created_at"=>date("y-m-d H:i:s"),"created_by"=>$session->user["login"] ));
        
        if($result)echo "ok";
          
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
            'mail' => $data['mail'],
            'id_groupe' => $data['groupe']), array('id_admin=?' => $data['id']));

        if ($result)
            $this->view->statut = "ok";

        $this->_helper->layout()->disableLayout();
    }

    

    public function deleteAction() {

        $data = $this->getRequest()->getPost();
        $eAdministrateur = new Application_Model_Entities_Administrateurs();
        $result = $eAdministrateur->delete(array('id_admin=?' => $data['id']));

        if ($result)
            $this->view->statut = "ok";
        $this->_helper->layout()->disableLayout();
    }


}
