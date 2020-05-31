<?php

require APPLICATION_PATH . '/../../library/PHPExcel/PHPExcel.php';

class Principal_SandboxController extends Zend_Controller_Action {
    
    public function init() {
        parent::init();  
         
    }

    public function indexAction() { 
        
        $session =new Zend_Session_Namespace('Licence');
        if(!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;
        
        $this->view->classSandbox = "active";
        //$mClient = new Application_Model_Mappers_Clients();
        //$this->view->clients = $mClient->findAll();
        $this->_redirect("principal/ecole/list");

        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function rapidSmsAction() { 
        
        $session =new Zend_Session_Namespace('Licence');
        if(!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $this->view->classSandbox = "active";

        $sms = new Application_Model_Tools_SMS();

        if ($this->getRequest()->isPost()):
            $data = $this->getRequest()->getPost();

            $sms->setMsisdn($data['telephone']);
            $sms->setSms($data['sms']);
            $msg = json_decode($sms->send(),true);
            //print_r($msg);

            $this->view->message = '<div class="alert '.(($msg[0]['success']==1)?'alert-success':'alert-danger').'">
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                    <strong>'.(($msg[0]['success']==1)?'SMS envoyé avec succès':'('.$msg['Error'].') '.$msg['Description']).'</strong>
                    </div>';

        endif;

        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function rapidSmsMultipleAction() { 
        
        $session =new Zend_Session_Namespace('Licence');
        if(!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $this->view->classSandbox = "active";

        $sms = new Application_Model_Tools_SMS();

        if ($this->getRequest()->isPost()):
            $data = $this->getRequest()->getPost();


            if (!empty($_FILES['fichier']['name'])):

                $EXT = explode(".", $_FILES['fichier']['name']);
                $FIELD = substr(md5(date("YmdHis")), 0, 20) . "." . $EXT[1];

                if (in_array(strtolower($EXT[1]), array('csv', 'xls'))):

                    move_uploaded_file($_FILES['fichier']['tmp_name'], "tmp/" . $FIELD);

                    $objPHPExcel = PHPExcel_IOFactory::load("tmp/" . $FIELD);
                    $objWorksheet = $objPHPExcel->getActiveSheet();
        
                    $highestRow = $objWorksheet->getHighestRow(); // e.g. 10
                    $highestColumn = $objWorksheet->getHighestColumn(); // e.g 'F'
        
                    $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);

                    //Traitement des données textes du fichier excel
                    for ($row = 1; $row <= $highestRow; ++$row):

                        if (!empty($objWorksheet->getCellByColumnAndRow(0, $row)->getValue())):

                            /*echo str_replace(array_keys(array(
                                '#1'=>$objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                '#2'=>$objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                '#3'=>$objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                '#4'=>$objWorksheet->getCellByColumnAndRow(4, $row)->getValue())),
                                array(
                                '#1'=>$objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                '#2'=>$objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                '#3'=>$objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                '#4'=>$objWorksheet->getCellByColumnAndRow(4, $row)->getValue()
                                ),$data['sms']);*/

                            $sms->setMsisdn($objWorksheet->getCellByColumnAndRow(0, $row)->getValue());
                            $sms->setSms(str_replace(array_keys(array(
                                '#1'=>$objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                '#2'=>$objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                '#3'=>$objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                '#4'=>$objWorksheet->getCellByColumnAndRow(4, $row)->getValue())),
                                array(
                                '#1'=>$objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                '#2'=>$objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                '#3'=>$objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                '#4'=>$objWorksheet->getCellByColumnAndRow(4, $row)->getValue()
                                ),$data['sms']));
                            $msg = json_decode($sms->send(),true);
                            //print_r($msg);

                            $this->view->message = '<div class="alert '.(($msg[0]['success']==1)?'alert-success':'alert-danger').'">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>'.(($msg[0]['success']==1)?'SMS envoyé avec succès':'('.$msg['Error'].') '.$msg['Description']).'</strong>
                                </div>';
                        endif;

                    endfor;

                else:
                    $this->view->message = '<div class="alert alert-primary">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                        <strong>Format de fichier non conforme... fichiers XLS ou CSV attendus</strong>
                        </div>';
                endif;

            endif;
                

        endif;

        $this->_helper->layout()->setLayout('azia_layout');
    }

    
    
    
    public function eleveAction() {

        $session = new Zend_Session_Namespace('Licence');
        if (!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        //print_r($session->user['module']);

        //Traitement des licences
        if (date("Y-m-d") >= $session->user['expire']):
            $this->_redirect("principal/key");
        endif;

        $this->view->classSandbox = "active";
        
        $this->view->id = $this->getRequest()->getParam("id");
        $this->view->nv = $this->getRequest()->getParam("nv");

        $mAnnee = new Application_Model_Mappers_Annees();
        $mEcole = new Application_Model_Mappers_Ecoles();
        $mNiveau = new Application_Model_Mappers_EcolesNiveauxReglements();
        $mEleve = new Application_Model_Mappers_Eleves();
        $mEleveClasse = new Application_Model_Mappers_ElevesAnneesEcolesClasses();
        $mClasse = new Application_Model_Mappers_EcolesClasses();
        $mReglement = new Application_Model_Mappers_Reglements();
        $mNiveauReglement = new Application_Model_Mappers_EcolesNiveauxReglements();

        $eEleve = new Application_Model_Entities_Eleves();
        $eEleveClasse = new Application_Model_Entities_ElevesAnneesEcolesClasses();

        $this->view->annees = $mAnnee->findAll();
        $this->view->ecoles = $mEcole->findAll();
        if($this->getRequest()->getParam("id")):
            $this->view->niveaux = $mNiveau->distinctNiveaux($this->getRequest()->getParam("id"));
            $this->view->reglements = $mNiveau->distinctReglements($this->getRequest()->getParam("id"));
            if($this->getRequest()->getParam("nv")):
                $this->view->classes = $mClasse->findByTypeByNiveau(array(
                    'ecole'=>$this->getRequest()->getParam("id"),
                    'niveau'=>$this->getRequest()->getParam("nv"),
                    'type'=>array($session->user['mode-annee'])
                ));
            else:
                $this->view->classes = array();
            endif;
        endif;


        //Elèves mal inscrits
        $db = Zend_Db_Table::getDefaultAdapter();
        $stmt = $db->query("SELECT distinct e.* FROM eleves e LEFT OUTER JOIN eleves_annees_ecoles_classes ec ON e.id= ec.id_eleve WHERE ec.id_eleve is NULL");
        $this->view->result = $stmt->fetchAll();
        

        if ($this->getRequest()->isPost()):


            $data = $this->getRequest()->getPost();

            $result = NULL;

            try{

                if ($data['valider-import']):
                    
                    if (isset($_FILES['fichier']['name'])):

                        $EXT = explode(".", $_FILES['fichier']['name']);
                        $FIELD = "ELV-" . substr(md5(date("u")), 0, 20) . "." . $EXT[1];
        
                        if (in_array(strtolower($EXT[1]), array('xls', 'xlsx'))):
        
                            //Upload de fichiers
                            move_uploaded_file($_FILES['fichier']['tmp_name'], "tmp/" . $FIELD);
        
                            $objPHPExcel = PHPExcel_IOFactory::load("tmp/" . $FIELD);
                            $objWorksheet = $objPHPExcel->getActiveSheet();
        
                            $highestRow = $objWorksheet->getHighestRow(); // e.g. 10
                            $highestColumn = $objWorksheet->getHighestColumn(); // e.g 'F'
        
                            $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
        
                            $result = NULL;
                            //Copie des images présentes du fichier excel
                            foreach ($objWorksheet->getDrawingCollection() as $drawing):
        
                                if ($drawing instanceof PHPExcel_Worksheet_Drawing):
                                    copy($drawing->getPath(), 'tmp/' . $drawing->getDescription());
                                endif;                     
        
                            endforeach;
        
                            
                            
                            //Traitement des données textes du fichier excel
                            for ($row = 1; $row <= $highestRow; ++$row):
        
                                //Verification de l'existence de l'élève dans la base de données
                                if (!empty($objWorksheet->getCellByColumnAndRow(0, $row)->getValue())):
        
                                    $eleve = $mEleve->findByReference(trim($objWorksheet->getCellByColumnAndRow(0, $row)->getValue()));
        
                                    if (!$eleve):
        
                                        //Insertion des informations sur l'élève
                                        $ID = $eEleve->insert(array(
                                            'reference' => $objWorksheet->getCellByColumnAndRow(0, $row)->getValue(),
                                            'nom' => $objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                            'prenom' => $objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                            'sexe' => $objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                            'cni' => $objWorksheet->getCellByColumnAndRow(4, $row)->getValue(),
                                            'pere' => $objWorksheet->getCellByColumnAndRow(6, $row)->getValue(),
                                            'pere_telephone' => $objWorksheet->getCellByColumnAndRow(7, $row)->getValue(),
                                            'mere' => $objWorksheet->getCellByColumnAndRow(8, $row)->getValue(),
                                            'mere_telephone' => $objWorksheet->getCellByColumnAndRow(9, $row)->getValue(),
                                            'tmp' => $objWorksheet->getCellByColumnAndRow(10, $row)->getValue(),
                                            'date_creation' => date("Y-m-d H:i:s"),
                                            'administrateur_creation' => $session->user['id-user'],
                                            'ip_creation' => $_SERVER['REMOTE_ADDR']));
        
                                            echo $ID;
        
                                        //Insertion de l'élève dans une école à un niveau d'étude
                                        $result = $eEleveClasse->insert(array(
                                            'id_eleve' => $ID,
                                            'id_annee' => $data['annee'],
                                            'id_ecole' => $data['ecole'],
                                            'id_niveau' => $data['niveau'],
                                            'type' => $data['type'],
                                            'reduction'=> ($objWorksheet->getCellByColumnAndRow(5, $row)->getValue())?$objWorksheet->getCellByColumnAndRow(5, $row)->getValue():0,
                                            'id_ecole_classe' => $data['classe'],
                                            'date_creation' => date("Y-m-d H:i:s"),
                                            'administrateur_creation' => $session->user['id-user'],
                                            'ip_creation' => $_SERVER['REMOTE_ADDR']));
                                    else:
        
                                        $eEleve->update(array(
                                            'reference' => $objWorksheet->getCellByColumnAndRow(0, $row)->getValue(),
                                            'nom' => $objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                            'prenom' => $objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                            'sexe' => $objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                            'cni' => $objWorksheet->getCellByColumnAndRow(4, $row)->getValue(),
                                            'pere' => $objWorksheet->getCellByColumnAndRow(6, $row)->getValue(),
                                            'pere_telephone' => $objWorksheet->getCellByColumnAndRow(7, $row)->getValue(),
                                            'mere' => $objWorksheet->getCellByColumnAndRow(8, $row)->getValue(),
                                            'mere_telephone' => $objWorksheet->getCellByColumnAndRow(9, $row)->getValue(),
                                            'tmp' => $objWorksheet->getCellByColumnAndRow(10, $row)->getValue()), 
                                            array('id=?' => $eleve['id']));
        
                                        //Verification Niveau d'étude de l'élève par rapport à l'année scolaire
                                        $eleveNiveau = $mEleveClasse->findByEleveAnneeEcoleNiveau(array(
                                            'eleve' => $eleve['id'],
                                            'annee' => $data['annee'],
                                            'ecole' => $data['ecole'],
                                            'niveau' => $data['niveau']));
        
                                        if (!$eleveNiveau):
        
                                            $result = $eEleveClasse->insert(array(
                                                'id_eleve' => $eleve['id'],
                                                'id_annee' => $data['annee'],
                                                'id_ecole' => $data['ecole'],
                                                'id_niveau' => $data['niveau'],
                                                'type' => $data['type'],
                                                'reduction'=> ($objWorksheet->getCellByColumnAndRow(5, $row)->getValue())?$objWorksheet->getCellByColumnAndRow(5, $row)->getValue():0,
                                                'id_ecole_classe' => $data['classe'],
                                                'date_creation' => date("Y-m-d H:i:s"),
                                                'administrateur_creation' => $session->user['id-user'],
                                                'ip_creation' => $_SERVER['REMOTE_ADDR']));
        
                                        endif;
        
                                    endif;
        
                                endif;
        
        
                            endfor;
        
                            if ($result):
                                $this->_redirect("principal/dashboard/record?".$this->getRequest()->getRequestUri());
                            endif;
        
                        else:
        
                            $this->view->message = '<div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>Format de données invalide...</strong>
                                </div>';
        
                        endif;
        
                    endif;

                endif;


            }catch(Exception $e){
                
                $this->view->message = '<div class="alert alert-danger">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                            <strong>'.$e->getMessage().'</strong>
                            </div>';
            }

            

                    //journal
        $log = new Application_Model_Tools_Logs();
        $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;

        $this->_helper->layout()->setLayout('azia_layout');
    }

    public function inscriptionAction() {

        $session = new Zend_Session_Namespace('Licence');
        if (!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        //print_r($session->user['module']);

        //Traitement des licences
        if (date("Y-m-d") >= $session->user['expire']):
            $this->_redirect("principal/key");
        endif;

        $this->view->classSandbox = "active";
        
        $this->view->id = $this->getRequest()->getParam("id");
        $this->view->nv = $this->getRequest()->getParam("nv");

        $mAnnee = new Application_Model_Mappers_Annees();
        $mEcole = new Application_Model_Mappers_Ecoles();
        $mNiveau = new Application_Model_Mappers_EcolesNiveauxReglements();
        $mEleve = new Application_Model_Mappers_Eleves();
        $mEleveClasse = new Application_Model_Mappers_ElevesAnneesEcolesClasses();
        $mClasse = new Application_Model_Mappers_EcolesClasses();
        $mReglement = new Application_Model_Mappers_Reglements();
        $mNiveauReglement = new Application_Model_Mappers_EcolesNiveauxReglements();

        $eEleve = new Application_Model_Entities_Eleves();
        $eEleveClasse = new Application_Model_Entities_ElevesAnneesEcolesClasses();

        $this->view->annees = $mAnnee->findAll();
        $this->view->ecoles = $mEcole->findAll();
        if($this->getRequest()->getParam("id")):
            $this->view->niveaux = $mNiveau->distinctNiveaux($this->getRequest()->getParam("id"));
            $this->view->reglements = $mNiveau->distinctReglements($this->getRequest()->getParam("id"));
            $this->view->classes = $mClasse->findByType(array(
                'ecole'=>$this->getRequest()->getParam("id"),
                'type'=>array(1)
            ));
        endif;


        //Elèves mal inscrits
        $db = Zend_Db_Table::getDefaultAdapter();
        $stmt = $db->query("SELECT distinct e.* FROM eleves e LEFT OUTER JOIN eleves_annees_ecoles_classes ec ON e.id= ec.id_eleve WHERE ec.id_eleve is NULL");
        $this->view->result = $stmt->fetchAll();
        

        if ($this->getRequest()->isPost()):


            $data = $this->getRequest()->getPost();

            $result = NULL;

            try{

                if ($data['valider-import']):
                    
                    if (isset($_FILES['fichier']['name'])):

                        $EXT = explode(".", $_FILES['fichier']['name']);
                        $FIELD = "ELV-" . substr(md5(date("u")), 0, 20) . "." . $EXT[1];
        
                        if (in_array(strtolower($EXT[1]), array('xls', 'xlsx'))):
        
                            //Upload de fichiers
                            move_uploaded_file($_FILES['fichier']['tmp_name'], "tmp/" . $FIELD);
        
                            $objPHPExcel = PHPExcel_IOFactory::load("tmp/" . $FIELD);
                            $objWorksheet = $objPHPExcel->getActiveSheet();
        
                            $highestRow = $objWorksheet->getHighestRow(); // e.g. 10
                            $highestColumn = $objWorksheet->getHighestColumn(); // e.g 'F'
        
                            $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
        
                            $result = NULL;
                            //Copie des images présentes du fichier excel
                            foreach ($objWorksheet->getDrawingCollection() as $drawing):
        
                                if ($drawing instanceof PHPExcel_Worksheet_Drawing):
                                    copy($drawing->getPath(), 'tmp/' . $drawing->getDescription());
                                endif;                     
        
                            endforeach;
        
                            
                            
                            //Traitement des données textes du fichier excel
                            for ($row = 1; $row <= $highestRow; ++$row):
        
                                //Verification de l'existence de l'élève dans la base de données
                                if (!empty($objWorksheet->getCellByColumnAndRow(0, $row)->getValue())):
        
                                    $eleve = $mEleve->findByReference(trim($objWorksheet->getCellByColumnAndRow(0, $row)->getValue()));
        
                                    if (!$eleve):
        
                                        //Insertion des informations sur l'élève
                                        $ID = $eEleve->insert(array(
                                            'reference' => $objWorksheet->getCellByColumnAndRow(0, $row)->getValue(),
                                            'nom' => $objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                            'prenom' => $objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                            'sexe' => $objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                            'cni' => $objWorksheet->getCellByColumnAndRow(4, $row)->getValue(),
                                            'pere' => $objWorksheet->getCellByColumnAndRow(6, $row)->getValue(),
                                            'pere_telephone' => $objWorksheet->getCellByColumnAndRow(7, $row)->getValue(),
                                            'mere' => $objWorksheet->getCellByColumnAndRow(8, $row)->getValue(),
                                            'mere_telephone' => $objWorksheet->getCellByColumnAndRow(9, $row)->getValue(),
                                            'tmp' => $objWorksheet->getCellByColumnAndRow(10, $row)->getValue(),
                                            'date_creation' => date("Y-m-d H:i:s"),
                                            'administrateur_creation' => $session->user['id-user'],
                                            'ip_creation' => $_SERVER['REMOTE_ADDR']));
        
                                            echo $ID;
        
                                        //Insertion de l'élève dans une école à un niveau d'étude
                                        $result = $eEleveClasse->insert(array(
                                            'id_eleve' => $ID,
                                            'id_annee' => $data['annee'],
                                            'id_ecole' => $data['ecole'],
                                            'id_niveau' => $data['niveau'],
                                            'type' => $data['type'],
                                            'reduction'=> ($objWorksheet->getCellByColumnAndRow(5, $row)->getValue())?$objWorksheet->getCellByColumnAndRow(5, $row)->getValue():0,
                                            'id_ecole_classe' => $data['classe'],
                                            'date_creation' => date("Y-m-d H:i:s"),
                                            'administrateur_creation' => $session->user['id-user'],
                                            'ip_creation' => $_SERVER['REMOTE_ADDR']));
                                    else:
        
                                        $eEleve->update(array(
                                            'reference' => $objWorksheet->getCellByColumnAndRow(0, $row)->getValue(),
                                            'nom' => $objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                            'prenom' => $objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                            'sexe' => $objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                            'cni' => $objWorksheet->getCellByColumnAndRow(4, $row)->getValue(),
                                            'pere' => $objWorksheet->getCellByColumnAndRow(6, $row)->getValue(),
                                            'pere_telephone' => $objWorksheet->getCellByColumnAndRow(7, $row)->getValue(),
                                            'mere' => $objWorksheet->getCellByColumnAndRow(8, $row)->getValue(),
                                            'mere_telephone' => $objWorksheet->getCellByColumnAndRow(9, $row)->getValue(),
                                            'tmp' => $objWorksheet->getCellByColumnAndRow(10, $row)->getValue()), 
                                            array('id=?' => $eleve['id']));
        
                                        //Verification Niveau d'étude de l'élève par rapport à l'année scolaire
                                        $eleveNiveau = $mEleveClasse->findByEleveAnneeEcoleNiveau(array(
                                            'eleve' => $eleve['id'],
                                            'annee' => $data['annee'],
                                            'ecole' => $data['ecole'],
                                            'niveau' => $data['niveau']));
        
                                        if (!$eleveNiveau):
        
                                            $result = $eEleveClasse->insert(array(
                                                'id_eleve' => $eleve['id'],
                                                'id_annee' => $data['annee'],
                                                'id_ecole' => $data['ecole'],
                                                'id_niveau' => $data['niveau'],
                                                'type' => $data['type'],
                                                'reduction'=> ($objWorksheet->getCellByColumnAndRow(5, $row)->getValue())?$objWorksheet->getCellByColumnAndRow(5, $row)->getValue():0,
                                                'id_ecole_classe' => $data['classe'],
                                                'date_creation' => date("Y-m-d H:i:s"),
                                                'administrateur_creation' => $session->user['id-user'],
                                                'ip_creation' => $_SERVER['REMOTE_ADDR']));
        
                                        endif;
        
                                    endif;
        
                                endif;
        
        
                            endfor;
        
                            if ($result):
                                $this->_redirect("principal/dashboard/record?".$this->getRequest()->getRequestUri());
                            endif;
        
                        else:
        
                            $this->view->message = '<div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>Format de données invalide...</strong>
                                </div>';
        
                        endif;
        
                    endif;

                endif;


            }catch(Exception $e){
                
                $this->view->message = '<div class="alert alert-danger">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                            <strong>'.$e->getMessage().'</strong>
                            </div>';
            }

            

                    //journal
        $log = new Application_Model_Tools_Logs();
        $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;

        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function versementAction() {

        $session = new Zend_Session_Namespace('Licence');
        if (!$session->user):
            $this->_redirect("principal/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        //print_r($session->user['module']);

        //Traitement des licences
        if (date("Y-m-d") >= $session->user['expire']):
            $this->_redirect("principal/key");
        endif;

        $this->view->classSandbox = "active";

        
        $this->view->id = $this->getRequest()->getParam("id");
        $this->view->nv = $this->getRequest()->getParam("nv");

        $mAnnee = new Application_Model_Mappers_Annees();
        $mEcole = new Application_Model_Mappers_Ecoles();

        $mEleve = new Application_Model_Mappers_Eleves();
        $mNiveau = new Application_Model_Mappers_EcolesNiveauxReglements();
        $mNiveauReglement = new Application_Model_Mappers_EcolesNiveauxReglements();
        $mEleveAnneeReglement = new Application_Model_Mappers_ElevesAnneesEcolesReglements();

        $eEleve = new Application_Model_Entities_Eleves();
        $eEleveClasse = new Application_Model_Entities_ElevesAnneesEcolesClasses();

        $eEleveReglement = new Application_Model_Entities_ElevesAnneesEcolesReglements();
        $eEleveReglementMontant = new Application_Model_Entities_ElevesAnneesEcolesReglementsMontants();

        $this->view->annees = $mAnnee->findAll();
        $this->view->ecoles = $mEcole->findAll();
        if($this->getRequest()->getParam("id")):
            $this->view->niveaux = $mNiveau->distinctNiveaux($this->getRequest()->getParam("id"));
            $this->view->reglements = $mNiveau->distinctReglements($this->getRequest()->getParam("id"));
        endif;


        //Versements en doublon
        $db = Zend_Db_Table::getDefaultAdapter();
        $stmt = $db->query("SELECT distinct e.reference,count(eaerm.id_reglement) as nombre FROM eleves e 
        LEFT OUTER JOIN eleves_annees_ecoles_reglements eaer ON e.id = eaer.id_eleve 
        LEFT OUTER JOIN eleves_annees_ecoles_reglements_montants eaerm ON eaer.id = eaerm.id_eleve_annee_ecole_reglement
        WHERE eaer.id_eleve is NOT NULL
        GROUP BY eaerm.id_reglement,eaer.id_eleve
        HAVING   COUNT(eaerm.id_reglement) > 1");
        $this->view->result = $stmt->fetchAll();
        

        if ($this->getRequest()->isPost()):


            $data = $this->getRequest()->getPost();

            $result = NULL;

            try{

                if ($data['valider-import-versement']):
                    
                    if (isset($_FILES['fichier-versement']['name'])):

                        $EXT = explode(".", $_FILES['fichier-versement']['name']);
                        $FIELD = "VRSMT-" . substr(md5(date("u")), 0, 20) . "." . $EXT[1];
        
                        if (in_array(strtolower($EXT[1]), array('xls', 'xlsx'))):
        
                            //Upload de fichiers
                            move_uploaded_file($_FILES['fichier-versement']['tmp_name'], "tmp/" . $FIELD);
        
                            $objPHPExcel = PHPExcel_IOFactory::load("tmp/" . $FIELD);
                            $objWorksheet = $objPHPExcel->getActiveSheet();
        
                            $highestRow = $objWorksheet->getHighestRow(); // e.g. 10
                            $highestColumn = $objWorksheet->getHighestColumn(); // e.g 'F'
        
                            $highestColumnIndex = PHPExcel_Cell::columnIndexFromString($highestColumn);
        
                            $result = NULL;
        
                            
                            
                            //Traitement des données textes du fichier excel
                            for ($row = 1; $row <= $highestRow; ++$row):
        
                                //Verification de l'existence de l'élève dans la base de données
                                if (!empty($objWorksheet->getCellByColumnAndRow(0, $row)->getValue())):
        
                                    $eleve = $mEleve->findByReference(trim($objWorksheet->getCellByColumnAndRow(0, $row)->getValue()));
        
                                    if ($eleve):

                                        $checkReglement = $mEleveAnneeReglement->checkReference(array(
                                            'ecole' => $this->getRequest()->getParam("id"),
                                            'annee' => $data['annee-versement'],
                                            'reference' => $objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                            'eleve' => $eleve['id']));

                                        if (sizeof($checkReglement) == 0):


                                            $ID = $eEleveReglement->insert(array(
                                                    'id_eleve' => $eleve['id'],
                                                    'id_annee' => $data['annee-versement'],
                                                    'id_ecole' => $this->getRequest()->getParam("id"),
                                                    'reference' => $objWorksheet->getCellByColumnAndRow(1, $row)->getValue(),
                                                    'reglement' => "Versement de ".$eleve['nom']." ".$eleve['prenom'],
                                                    'date_reglement' => $objWorksheet->getCellByColumnAndRow(3, $row)->getValue(),
                                                    'type_reglement' => 1,
                                                    'date_creation' => date("Y-m-d H:i:s"),
                                                    'administrateur_creation' => $session->user['id-user'],
                                                    'ip_creation' => $_SERVER['REMOTE_ADDR']));
                                
                                                for ($i = 0; $i < $data['total']; $i++):
                                
                                                    if ( !empty($data['reglement-' . $i]) ):
                                                        $result = $eEleveReglementMontant->insert(array(
                                                            'id_eleve_annee_ecole_reglement' => $ID,
                                                            'id_reglement' => $data['reglement-' . $i],
                                                            'montant' => $objWorksheet->getCellByColumnAndRow(2, $row)->getValue(),
                                                            'date_creation' => date("Y-m-d H:i:s"),
                                                            'administrateur_creation' => $session->user['id-user'],
                                                            'ip_creation' => $_SERVER['REMOTE_ADDR']));
                                                    endif;
                                
                                                endfor;

                                            endif;
        
                                    endif;
        
                                endif;
        
        
                            endfor;
        
                            if ($result):
                                $this->_redirect("principal/dashboard/record?".$this->getRequest()->getRequestUri());
                            endif;
        
                        else:
        
                            $this->view->message = '<div class="alert alert-danger">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>Format de données invalide...</strong>
                                </div>';
        
                        endif;
        
                    endif;

                endif;


            }catch(Exception $e){
                
                $this->view->message = '<div class="alert alert-danger">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                            <strong>'.$e->getMessage().'</strong>
                            </div>';
            }

            

                    //journal
        $log = new Application_Model_Tools_Logs();
        $log->info(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));


        endif;

        $this->_helper->layout()->setLayout('azia_layout');
    }
   

    public function deleteEleveAction() {
        
        $session = new Zend_Session_Namespace('Licence');

        if($this->getRequest()->getPost()):
        
        $data = $this->getRequest()->getPost();

        $mElevesAnneesEcolesClasses = new Application_Model_Mappers_ElevesAnneesEcolesClasses();
        
        $eEleves = new Application_Model_Entities_Eleves();
        $eElevesAnneesEcolesClasses = new Application_Model_Entities_ElevesAnneesEcolesClasses();
        $eElevesAnneesEcolesEvenements = new Application_Model_Entities_ElevesAnneesEcolesEvenements();
        $eElevesAnneesEcolesReglements = new Application_Model_Entities_ElevesAnneesEcolesReglements();
        $eElevesAnneesEcolesReglementsMontants = new Application_Model_Entities_ElevesAnneesEcolesReglementsMontants();
        $eElevesAnneesEcolesSessionsMatieresNotes = new Application_Model_Entities_ElevesAnneesEcolesSessionsMatieresNotes();
        
        if($data['annee'] && $data['ecole'] && $data['type'] && $data['niveau'] && $data['classe']):
        
            foreach($mElevesAnneesEcolesClasses->selectByAnneeByEcoleByTypeByNiveauByClasse(array(
                'annee'=>$data['annee'],
                'ecole'=>$data['ecole'],
                'type'=>$data['type'],
                'niveau'=>$data['niveau'],
                'classe'=>$data['classe'])) as $e):

                $result = $eEleves->delete(array('id=?' => $e['id_eleve']));
                $eElevesAnneesEcolesClasses->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesEvenements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesReglements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesSessionsMatieresNotes->delete(array('id=?' => $e['id_eleve']));
                //$eEleves->delete(array('id=?' => $e['id_eleve']));

            endforeach;
        elseif($data['annee'] && $data['ecole'] && $data['type'] && $data['niveau']):
        
            foreach($mElevesAnneesEcolesClasses->selectByAnneeByEcoleByTypeByNiveau(array(
                'annee'=>$data['annee'],
                'ecole'=>$data['ecole'],
                'type'=>$data['type'],
                'niveau'=>$data['niveau'])) as $e):

                $result = $eEleves->delete(array('id=?' => $e['id_eleve']));
                $eElevesAnneesEcolesClasses->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesEvenements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesReglements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesSessionsMatieresNotes->delete(array('id_eleve=?' => $e['id_eleve']));
                //$eEleves->delete(array('id=?' => $e['id_eleve']));

            endforeach;

        elseif($data['annee'] && $data['ecole'] && $data['type']):
                
            foreach($mElevesAnneesEcolesClasses->selectByAnneeByEcoleByType(array(
                'annee'=>$data['annee'],
                'ecole'=>$data['ecole'],
                'type'=>$data['type'])) as $e):
        
                $result = $eEleves->delete(array('id=?' => $e['id_eleve']));
                $eElevesAnneesEcolesClasses->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesEvenements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesReglements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesSessionsMatieresNotes->delete(array('id_eleve=?' => $e['id_eleve']));
                //$eEleves->delete(array('id=?' => $e['id_eleve']));
        
            endforeach;

        elseif($data['annee'] && $data['ecole']):
                
            foreach($mElevesAnneesEcolesClasses->selectByAnneeByEcole(array(
                'annee'=>$data['annee'],
                'ecole'=>$data['ecole'])) as $e):
        
                $result = $eEleves->delete(array('id=?' => $e['id_eleve']));
                $eElevesAnneesEcolesClasses->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesEvenements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesReglements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesSessionsMatieresNotes->delete(array('id_eleve=?' => $e['id_eleve']));
                //$eEleves->delete(array('id=?' => $e['id_eleve']));
        
            endforeach;
        elseif($data['annee']):
                        
            foreach($mElevesAnneesEcolesClasses->selectByAnnee(array(
                'annee'=>$data['annee'])) as $e):
                
                $result = $eEleves->delete(array('id=?' => $e['id_eleve']));
                $eElevesAnneesEcolesClasses->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesEvenements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesReglements->delete(array('id_eleve=?' => $e['id_eleve']));
                $eElevesAnneesEcolesSessionsMatieresNotes->delete(array('id_eleve=?' => $e['id_eleve']));
                //$eEleves->delete(array('id=?' => $e['id_eleve']));
                
            endforeach;
        
        endif;

        
        
        $this->view->statut = 'OK';
        
        //journal
        $log = new Application_Model_Tools_Logs();
        $log->warn(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));
        
    endif;
        //$this->_helper->layout()->setLayout('backoffice_layout');
        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }


    public function deleteEleveEcoleAction() {
        
        $eEleve = new Application_Model_Entities_Eleves();
        $db = Zend_Db_Table::getDefaultAdapter();
        $stmt = $db->query("SELECT distinct e.* FROM eleves e LEFT OUTER JOIN eleves_annees_ecoles_classes ec ON e.id= ec.id_eleve WHERE ec.id_eleve is NULL");
        foreach($stmt->fetchAll() as $f):
            $result = $eEleve->delete(array('id=?' => $f['id']));
        endforeach;
        
        if ($result):
            $this->view->statut = "OK";
        endif;
        
        $this->_helper->layout()->disableLayout();
    }
  
   

}

