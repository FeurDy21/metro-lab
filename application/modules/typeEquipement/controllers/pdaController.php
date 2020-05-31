<?php



use Zend\Form\Form;
use Zend\Form\Element;
use Zend\Form\Element\File;
use Zend\Http\PhpEnvironment\Request;
use Zend\Http\PhpEnvironment\Response;


require_once "library/vendor/SpreadsheetReader.php";

require_once "library/vendor/php_excel_reader/excel_reader2.php";

class Snag_PdaController extends Zend_Controller_Action {

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


    public function addAction(){
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;

          $pda = new Application_Model_Entities_Pda(); 
         $pdaMap=new Application_Model_Mappers_Pda(); 

         $site = new Application_Model_Entities_Site(); 
         $snag = new Application_Model_Entities_Probleme(); 
          $mSite = new Application_Model_Mappers_Site();
           $mSnag = new Application_Model_Mappers_Probleme();

            $this->view->snag=$mSnag->findTypeSnag();

        $this->view->site=$mSite->findSite();

          $this->view->snag=$mSnag->findTypeSnag();
         
         $this->view->page="add";
         $this->view->message=null;
        $this->_helper->layout()->setLayout('layout');
    }



 public function importAction(){
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;  

   $this->view->page="import";
   $pda = new Application_Model_Entities_Pda(); 
    $pdaMap =new Application_Model_Mappers_Pda(); 
     
       $site = new Application_Model_Entities_Site(); 
         $snag = new Application_Model_Entities_Probleme(); 
          $mSite = new Application_Model_Mappers_Site();
           $mSnag = new Application_Model_Mappers_Probleme();

      
        if(!isset($_FILES["file"])):

          $this->view->message='';
          $this->view->snag=$pdaMap->findAll();
         $this->_helper->layout()->setLayout('layout'); 
         return;
        endif;
        // $datas = $this->getRequest()->getPost();

  $allowedFileType =['application/vnd.ms-excel','text/xls','text/xlsx','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'];
  
  if(in_array($_FILES["file"]["type"],$allowedFileType)){

   // die($_FILES["file"]["name"]);
       

//echo ("<script> alert('Un porbleme s'est produit lors de l'importation du fichier');</script>");
        $targetPath = 'public/uploads/'.$_FILES["file"]["name"];

        //die($_FILES["file"]["name"]);
        move_uploaded_file($_FILES["file"]["tmp_name"],$targetPath);
        
        $Reader = new SpreadsheetReader($targetPath);
       //var_dump($Reader);
        $sheetCount = count($Reader->sheets());
          
          //on verifie si la colo
       

          
           
          
        //pour la mise à jour du fichier EXCEL dans notre base de données, on supprime tout simplemenement toutes les données existantes. 
        //die( var_dump($Reader ));

       $data= array();
         
        for($i=0;$i<$sheetCount;$i++)
        {
            $Reader->ChangeSheet($i);
          
            foreach ($Reader as $Row)
            {
            //var_dump($Row);
               
               $data["numero"]=null;
                if(isset($Row[0]) AND  !empty($Row[0])) {
                    $data["numero"]=$Row[0];
                    //echo $excel->getZone();
                }
                
                $data["site_id_partners"]="";
                if(isset($Row[1])) {
                    $data["site_id_partners"]=$Row[1];
                }
                
                 $data["site_id_oci"]="";
                if(isset($Row[2])) {
                    $data["site_id_oci"]=$Row[2];
                }  

                  $data["area_partners"]="";
                if(isset($Row[3])) {
                    $data["area_partners"]=$Row[3];
                }

                 $data["site_name"]="";
                if(isset($Row[4])) {
                    $data["site_name"]=$Row[4];
                }

                $data["uir_hw"]="";
                if(isset($Row[5])) {
                    $data["uir_hw"]=$Row[5];
                }

                 $data["uir_oci"]="";
                if(isset($Row[6])) {
                    $data["uir_oci"]=$Row[6];
                }

                $data["site_type"]="";
                if(isset($Row[7])) {
                    $data["site_type"]=$Row[7];
                }



                $data["sendeur"]="";
                if(isset($Row[8])) {
                    $data["sendeur"]=$Row[8];
                }

                $data["type_of_snag"]="";
                if(isset($Row[9])) {
                    $data["type_of_snag"]=$Row[9];
                }
                

                   
              
                $data["severitey"]="";
                if(isset($Row[10])) {
                    $data["severitey"]=$Row[10];
                }

                $data["categorisation"]="";
                if(isset($Row[11])) {
                    $data["categorisation"]=$Row[11];
                }

                 $data["snag_description"]="";
                if(isset($Row[12])) {
                    $data["snag_description"]=$Row[12];
                }

                $data["action_plan_proposed"]="";
                if(isset($Row[13])) {
                  $data["action_plan_proposed"]=$Row[13];
                }


                // la date du servey 14
                
                $data["report_escalation_date"]=null;
                if(isset($Row[15]) and !empty($Row[15])) {
                    $date1=explode('.',$Row[15]);
                  $data["report_escalation_date"]=$date1[2]."-".$date1[1]."-".$date1[0];
                }
                
                 $data["responsability"]="";
                if(isset($Row[16])) {
                  $data["responsability"]=$Row[16];
                }
                
                $data["resolution_deadline"]=null;
                if(isset($Row[17]) and !empty($Row[17])) {
                    $date1=explode('.',$Row[17]);
                  $data["resolution_deadline"]=$date1[2]."-".$date1[1]."-".$date1[0];
                }
                

                $data["status"]="";
               if(isset($Row[18])) {
                  $data["status"]=$Row[18];
                }
               
                //reslolution date 19

               $data["observations"]="";
               if(isset($Row[20]) ) {
                  
                  $data["observations"]=$Row[20];
                }

                 
                 $data["classe"]="";
                if(isset($Row[21])) {
                  $data["classe"]=$Row[21];
                }
        
              $data["periode"]=date("y");
                

                $data["comment"]="";
                if(isset($Row[21])) {
                  $data["comment"]=$Row[21];
                }
                 
                   $data["dalais"]="";
                if(isset($Row[23])) {
                  $data["delais"]=$Row[23];
                }
                 

                

       if ($data['numero']!=null OR  $data['site_id_partners']!="" ) {
                    
         $data["survey_date"]=null;
         $data["survey_of_week"]=null;
         if(isset($Row[14]) and !empty($Row[14])){ 
         
    $date1=explode('.',$Row[14]);
    $data["survey_of_week"]=date('W',mktime(0,0,0,intval($date1[1]),intval($date1[0]),intval($date1[2])));
          
            $data["survey_date"]=$date1[2]."-".$date1[1]."-".$date1[0];
        //$date[2].'-'.$date[1].'-'.$date[0];//on change ici le format de la date
          }

         $data['resolved_date']=null;
        $data["resolution_of_week"]=null;
           if(isset($Row[19]) and !empty($Row[19])){ 
            
        $dat=explode('.',$Row[19]);
 $data["resolution_of_week"]=date('W',mktime(0,0,0,intval($dat[1]),intval($dat[0]),intval($dat[2])));

    $data['resolved_date']=$dat[2]."-".$dat[1]."-".$dat[0];
            
         }
          
    
         //$valu=null;
          
         $valu=$pdaMap->verification($data['numero'],$data['periode'],$data['site_id_partners']);
         //die(var_dump($valu));
         //resultat de la demande
      // foreach($valu as $doc)
          $check=false;  
           foreach ($valu as $key => $value) {
             if (isset($value["numero"]) and $value["numero"]!="") {
               $check=true;
                break;
             }
           }

          // si chek, on procced à une mise à jour de la ligne,sinon, on ajoute une nouvelle ligne;
         if ($check) {

           // die(var_dump($valu));

            $result = $pda->update(array(
                'numero' => $data['numero'],
            'site_id_partners' => $data['site_id_partners'],
            'site_id_oci' => $data['site_id_oci'],
            'area_partners' => $data['area_partners'],
            'site_name' => $data['site_name'],
               'uir_hw' => $data['uir_hw'],
               'uir_oci' => $data['uir_oci'],
            'site_type' => $data['site_type'],
            'sendeur' => $data['sendeur'],
            'type_of_snag' => $data['type_of_snag'],
               'severitey' => $data['severitey'],
            'snag_description' => $data['snag_description'],
            'action_plan_proposed' => $data['action_plan_proposed'],
            'servey_date' => $data['survey_date'],
            'survey_of_week' => $data['survey_of_week'],
            'report_escalation_date' => $data['report_escalation_date'],
            'responsability' => $data['responsability'],
            'resolution_deadline' => $data['resolution_deadline'],
            'status' => $data['status'],
             'resolved_date' => $data['resolved_date'],
              'categorisation' => $data['categorisation'],
            'resolution_of_week' => $data['resolution_of_week'],
            'observations' => $data['observations'],
            'classe' => $data['classe'],
            'periode' => $data['periode'],
            'comment' => $data['comment'],
            'delais' => $data['delais'],
            'updated_at' => date("y-m-d H:i:s")), array('numero=?' => $data['numero']));

           if($result) { 
                     $this->view->message='yes';
                    }else {
                        //$type = "error";
                       $this->view->message=" no";
                    }
         }else{

            $result = $pda->insert(array(
            'numero' => $data['numero'],
            'site_id_partners' => $data['site_id_partners'],
            'site_id_oci' => $data['site_id_oci'],
            'area_partners' => $data['area_partners'],
            'site_name' => $data['site_name'],
               'uir_hw' => $data['uir_hw'],
               'uir_oci' => $data['uir_oci'],
            'site_type' => $data['site_type'],
            'sendeur' => $data['sendeur'],
            'type_of_snag' => $data['type_of_snag'],
               'severitey' => $data['severitey'],
            'snag_description' => $data['snag_description'],
            'action_plan_proposed' => $data['action_plan_proposed'],
            'servey_date' => $data['survey_date'],
            'survey_of_week' => $data['survey_of_week'],
            'report_escalation_date' => $data['report_escalation_date'],
            'responsability' => $data['responsability'],
            'resolution_deadline' => $data['resolution_deadline'],
            'status' => $data['status'],
             'resolved_date' => $data['resolved_date'],
              'categorisation' => $data['categorisation'],
            'resolution_of_week' => $data['resolution_of_week'],
            'observations' => $data['observations'],
            'classe' => $data['classe'],
            'periode' => $data['periode'],
            'comment' => $data['comment'],
            'delais' => $data['delais'],
            'created_at' => date("y-m-d H:i:s")));

             if($result) {
                      
                     $this->view->message='yes';
                    }else {
                        //$type = "error";
                       $this->view->message=" no";
                    }

             }
                
                    

                    
                }
             }
        
         }

      

     }//fin de la permission
     else{

        $this->_redirect("/snag/pda/add?errorFile=true");
     }

        $this->view->snag=$mSnag->findAll();

        $this->view->site=$mSite->findAll();
         $this->_helper->layout()->setLayout('layout'); 
   
  }




}