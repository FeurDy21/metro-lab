<?php

class Service_IndexController extends Zend_Controller_Action{

public function init(){
	parent::init();
}


public function indexAction(){

    $session =new Zend_Session_Namespace('Kinara');
    
	$this->_helper->layout()->setLayout('layout');
}



}