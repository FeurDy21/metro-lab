<?php



use Zend\Form\Form;
use Zend\Form\Element;
use Zend\Form\Element\File;
use Zend\Http\PhpEnvironment\Request;
use Zend\Http\PhpEnvironment\Response;


require_once "library/vendor/SpreadsheetReader.php";

require_once "library/vendor/php_excel_reader/excel_reader2.php";

class Snag_sendboxController extends Zend_Controller_Action {

    public function init() {
        parent::init();
    }

    public function settingAction() {

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

        $this->_helper->layout()->setLayout('layout');
    }


 public function findsnagAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $mSnag = new Application_Model_Mappers_Probleme();
        $result =  $mSnag->findSnagDescription($data["snag"]);
       $html='';
        if($result)
       foreach ($result as $value) {
            
           $html.='<option value="'.$value["description"].'"  selected>'. $value["description"].'</option>'; 
        }

        echo $html;
        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }

 public function findsnagelementAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $mSnag = new Application_Model_Mappers_Probleme();
        $result =  $mSnag->findSnagElement($data["type"],$data["description"]);

         $snagelment=[];
          if($result)
       foreach ($result as $value) {
            $snagelment["categorie"]=$value["categorisation"];
           $snagelment["delai"]=$value["delai"];
             $snagelment["severite"]=$value["severite"];
        }

        echo json_encode($snagelment);

        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }




    public function findsiteAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $mSite = new Application_Model_Mappers_Site();
        $result =  $mSite->findAllByName(intval($data["id"]));

         $site=[];
          if($result)
       foreach ($result as $value) {
            $site["area_partners"]=$value["area_partners"];
            $site["site_id_partners"]=$value["site_id_partners"];
             $site["site_id_oci"]=$value["site_id_oci"];
             $site["uir_hw"]=$value["uir_hw"];
             $site["uir_oci"]=$value["uir_oci"];
       
        }

        echo json_encode($site);

        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }


 public function addAction() {

        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

        $data = $this->getRequest()->getPost();

        $epda = new Application_Model_Entities_Pda();
         $result = $pda->insert(array(
            'numero' => $data['numero'],
            'site_id' => $data['site_id'],
            'area' => $data['area'],
            'site_name' => $data['site_name'],
             'uir' => $data['uir'],
            'site_type' => $data['site_type'],
            'sendeur' => $data['sendeur'],
            'type_of_snag' => $data['type_of_snag'],
            'severitey' => $data['severitey'],
            'snag_description' => $data['snag_description'],
            'action_plan_proposed' => $data['action_plan_proposed'],
            'servey_date' => $data['survey_date'],
            'survey_of_week' => $data['survey_of_week'],
            'responsability' => $data['responsability'],
            'status' => $data['status'],
            'created_at' => date("y-m-d H:i:s")

                 ));
        if($result)$this->view->statut = "ok";

        $this->_helper->layout()->disableLayout();
        //$this->_helper->viewRenderer->setNoRender(true);
    }





 public function import2Action(){
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;  

   $this->view->page="import";
   $probleme = new Application_Model_Entities_Site(); 
    $probleMps =new Application_Model_Mappers_Site(); 
     
      
        if(!isset($_FILES["file"])):

          $this->view->message='';
         $this->_redirect("/snag/sendbox/setting"); 
         return;
        endif;
        // $datas = $this->getRequest()->getPost();

  $allowedFileType =['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];
  
  if(in_array($_FILES["file"]["type"],$allowedFileType)){

   // suppression des donnée qui sont deja dans la base deonnées
        $result =$probleme->delete(array());
        //delete(array('id_admin=?' => $data['id']));

//echo ("<script> alert('Un porbleme s'est produit lors de l'importation du fichier');</script>");
        $targetPath = 'public/uploads/'.$_FILES["file"]["name"];

        //die($_FILES["file"]["name"]);
        move_uploaded_file($_FILES["file"]["tmp_name"],$targetPath);
        
        $Reader = new SpreadsheetReader($targetPath);
       //var_dump($Reader);
        $sheetCount = count($Reader->sheets());
          
          //on verifie si la color
           
          
        //pour la mise à jour du fichier EXCEL dans notre base de données, on supprime tout simplemenement toutes les données existantes. 
        //die( var_dump($Reader ));

       $data= array();
         
        for($i=0;$i<$sheetCount;$i++)
        {
            $Reader->ChangeSheet($i);
          
            foreach ($Reader as $Row)
            {
            //var_dump($Row);
              
              $data["area_partnaire"]="";
                if(isset($Row[0])) {
                    $data["area_partnaire"]=$Row[0];
                }

                 $data["site_id_partnaire"]="";
                if(isset($Row[1])) {
                    $data["site_id_partnaire"]=$Row[1];
                }

               $data["site_name"]=="";
                if(isset($Row[2]) AND  !empty($Row[2])) {
                    $data["site_name"]=$Row[2];
                    //echo $excel->getZone();
                }
                
                
                  $data["site_id_oci"]="";
                if(isset($Row[3])) {
                    $data["site_id_oci"]=$Row[3];
                }

                 

                $data["uir_hw"]="";
                if(isset($Row[4])) {
                    $data["uir_hw"]=$Row[4];
                }

                $data["uir_oci"]="";
                if(isset($Row[5])) {
                    $data["uir_oci"]=$Row[5];
                }


       if ($data['site_name']!="" ) {
                    
          // si chek, on procced à une mise à jour de la ligne,sinon, on ajoute une nouvelle ligne;
            $result =   $probleme->insert(array(
            'site_name' => $data['site_name'],
            'site_id_partners' => $data['site_id_partnaire'],
            'site_id_oci' => $data['site_id_oci'],
            'area_partners' => $data['area_partnaire'],
             'uir_hw' => $data['uir_hw'],
             'uir_oci' => $data['uir_oci']

                 ));

             if($result) {
                      
                     $this->view->message='yes';
                    }else {
                        //$type = "error";
                       $this->view->message="no";
                    }

             
                    
                }
             }
        
         }

      

     }//fin de la permission
     else{

        $this->_redirect("snag/sendbox/setting?site_file_false=true");
     }

        //$this->view->snag=$probleMps->findAll();
         $this->_redirect("/snag/sendbox/setting?site=true"); 
   
  }








 public function importAction(){
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;  

   $this->view->page="import";
   $probleme = new Application_Model_Entities_Probleme(); 
    $probleMps =new Application_Model_Mappers_Probleme(); 
     
      
        if(!isset($_FILES["file"])):

          $this->view->message='';
         $this->_redirect("/snag/sendbox/setting"); 
         return;
        endif;
        // $datas = $this->getRequest()->getPost();

  $allowedFileType =['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];
  
  if(in_array($_FILES["file"]["type"],$allowedFileType)){

   // die($_FILES["file"]["name"]);
        $result =$probleme->delete(array());
        //delete(array('id_admin=?' => $data['id']));

//echo ("<script> alert('Un porbleme s'est produit lors de l'importation du fichier');</script>");
        $targetPath = 'public/uploads/'.$_FILES["file"]["name"];

        //die($_FILES["file"]["name"]);
        move_uploaded_file($_FILES["file"]["tmp_name"],$targetPath);
        
        $Reader = new SpreadsheetReader($targetPath);
       //var_dump($Reader);
        $sheetCount = count($Reader->sheets());
          
          //on verifie si la color
           
          
        //pour la mise à jour du fichier EXCEL dans notre base de données, on supprime tout simplemenement toutes les données existantes. 
        //die( var_dump($Reader ));

       $data= array();
         
        for($i=0;$i<$sheetCount;$i++)
        {
            $Reader->ChangeSheet($i);
          
            foreach ($Reader as $Row)
            {
            //var_dump($Row);
               
               $data["type"]=="";
                if(isset($Row[0]) AND  !empty($Row[0])) {
                    $data["type"]=$Row[0];
                    //echo $excel->getZone();
                }
                
                 $data["description"]="";
                if(isset($Row[1])) {
                    $data["description"]=$Row[1];
                }
                  
                  $data["severite"]="";
                if(isset($Row[2])) {
                    $data["severite"]=$Row[2];
                }

                 $data["categorisation"]="";
                if(isset($Row[3])) {
                    $data["categorisation"]=$Row[3];
                }

                $data["delai"]="";
                if(isset($Row[4])) {
                    $data["delai"]=$Row[4];
                }


       if ($data['type']!="" ) {
                    
          // si chek, on procced à une mise à jour de la ligne,sinon, on ajoute une nouvelle ligne;
            $result =   $probleme->insert(array(
            'type' => $data['type'],
            'description' => $data['description'],
            'severite' => $data['severite'],
            'categorisation' => $data['categorisation'],
             'delai' => $data['delai']

                 ));

             if($result) {
                      
                     $this->view->message='yes';
                    }else {
                        //$type = "error";
                       $this->view->message="no";
                    }

             
                    
                }
             }
        
         }

      

     }//fin de la permission
     else{

        $this->_redirect("/snag/sendbox/setting?snag_file_false=true");
     }

        //$this->view->snag=$probleMps->findAll();
         $this->_redirect("/snag/sendbox/setting?snag=true"); 
   
  }




}