<?php 

use Zend\Form\Element\File;
use Zend\Form\Form;
use Zend\Form\Element;
use Zend\Http\PhpEnvironment\Request;
use Zend\Http\PhpEnvironment\Response;

class site_sallesController  extends Zend_Controller_Action{

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
        
        $this->view->classSetting = "active";
        
        $mTypeSalle = new Application_Model_Mappers_TypesSalles();
        $this->view->typeSalles = $mTypeSalle->findAll();
        
        $this->_helper->layout()->setLayout('azia_layout');
    }


    public function elementAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        if (!$session->user):
            $this->_redirect("/auth/login");
        else:
            $this->view->user = $session->user;
        endif;
        
        $this->view->classSandbox = "active";
        
        $mTypeSalle = new Application_Model_Mappers_TypesSalles();
        $mElement = new Application_Model_Mappers_Elements();
        $this->view->typeSalles = $mTypeSalle->findAll();
        $this->view->elements = $mElement->findAll();
        
        $this->_helper->layout()->setLayout('azia_layout');
    }

    
    
    public function addAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eSalle = new Application_Model_Entities_Salles();
        $result = $eSalle->insert(array('id_type_salle' => $data['type-salle'],'id_site' => $data['site'],'reference' => $data['reference-salle'],'salle' => $data['salle']));
        
        
        if($result)
            echo $data["site"];
        else
           echo 0;
            
        $this->view->statut = 'OK';
        $this->_helper->layout()->disableLayout(); 
    }


    public function addElementAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eElement = new Application_Model_Entities_Elements();
        $result = $eElement->insert(array('element' => $data['element']));
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout(); 
    }
    
    
    public function editAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eTypeSalle = new Application_Model_Entities_TypesSalles();
        $result = $eTypeSalle->update(array(
                    'type_salle' => $data['type']), 
                    array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout();
    }


    public function editElementAction() { 
        
        $session = new Zend_Session_Namespace('Kinara');
        
        $data = $this->getRequest()->getPost();
        
        $eElement = new Application_Model_Entities_Elements();
        $result = $eElement->update(array(
                    'element' => $data['element']), 
                    array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        
        $this->_helper->layout()->disableLayout();
    }


    public function deleteAction() {

        $data = $this->getRequest()->getPost();
        $eTypeSalle = new Application_Model_Entities_TypesSalles();
        $result = $eTypeSalle->delete(array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }


    public function deleteElementAction() {

        $data = $this->getRequest()->getPost();
        
        $eElement = new Application_Model_Entities_Elements();
        $result = $eElement->delete(array('id=?' => $data['id']));
        
        if($result)$this->view->statut = "OK";
        $this->_helper->layout()->disableLayout();
    }

  public function uploadAction(){
$data = $this->getRequest()->getPost();

if($_FILES['image']['name'])
{
    $valid_file=true;
    $message="";
//if no errors...
if(!$_FILES['image']['error'])
{
//now is the time to modify the future file name and validate the file
  $test=explode(".", $_FILES["image"]["name"]);
    $extension=end($test);
   $new_file_name=substr(md5(uniqid(rand(), true)),1,8).".".$extension; //rename file
     $chemin="public/images";  

if($_FILES['image']['size'] > (2024000)) //can't be larger than 1 MB
{
$valid_file = false;
$message = 'Oops! La taille de l\'image est plus de 2Mo .';
}
//if the file has passed the test
if($valid_file)
{

//move it to where we want it to be
move_uploaded_file($_FILES['image']['tmp_name'], $chemin.'/'.$new_file_name);
$message = 'Image enregistrée avec succes'.$new_file_name;


$eSalle = new Application_Model_Entities_Salles();
        
$result = $eSalle->update(array(
                    'image' => $new_file_name), 
                    array('id=?' => $data['idFile']));

    $this->view->succesUploading=true;
 $this->_redirect("site/site-region/dossier/p/".$this->getRequest()->getParam("p")."/r/".$this->getRequest()->getParam("r")."/s".$this->getRequest()->getParam("s"));
}
}
//if there is an error...
else
{
//set that to be the returned message
$message = 'Ooops! Une erreur est survenue lors de l\'enregistrement: '.$_FILES['image']['error'];
}
}
  $this->view->message=$message;
  $this->_helper->layout()->disableLayout();

}

    public function actionElementAction() {

        $session = new Zend_Session_Namespace('Kinara');

        $data = $this->getRequest()->getPost();
        $eTypeSalleElement = new Application_Model_Entities_TypesSallesElements();
        $mTypeSalleElement = new Application_Model_Mappers_TypesSallesElements();
        $element = $mTypeSalleElement->findAll(array('salle'=>$data['salle'],'element'=>$data['element']));
        
        if(sizeof($element)>0):
            $eTypeSalleElement->delete(array('id_type_salle=?' => $data['salle'],'id_element=?' => $data['element']));
        else:
            $eTypeSalleElement->insert(array('id_type_salle' => $data['salle'],'id_element' => $data['element']));
        endif;
        
        $this->view->statut = "OK";
                
        $log = new Application_Model_Tools_Logs();
        $log->warn(array('url' => $this->getRequest()->getRequestUri(),'info'=>json_encode($data), 'user' => $session->user['user']));
        
        $this->_helper->layout()->disableLayout();
    }
   
  

}

/*
if ($request->isPost())
{
try
{
$adapter = new Zend_File_Transfer_Adapter_Http();
$adapter->addValidator("Count",false, array("min"=>1, "max"=>3))
->addValidator("Size",false,array("max" => 10000))
->addValidator("Extension",false,array("extension" => "jpg,png,jpeg","case" => true));

$adapter->setDestination("kinara\\tmp");

$files = $adapter->getFileInfo();
//print_r($files);

foreach($files as $fieldname=>$fileinfo)
{
if (($adapter->isUploaded($fileinfo["name"]))&& ($adapter->isValid($fileinfo["name"])))
{
$extension = substr($fileinfo["name"], strrpos($fileinfo["name"], ".") + 1);
$filename = "file_".date("Ymdhs").".".$extension;
$adapter->addFilter("Rename",array("target"=>"kinara\\tmp".$filename,"overwrite"=>true));

$adapter->receive($fileinfo["name"]);
//then, store in db..
}

}
var_dump($adapter->getMessages());
}
catch (Exception $ex)
{
echo "Exception!\n";
echo $ex->getMessage();
}
}
*/