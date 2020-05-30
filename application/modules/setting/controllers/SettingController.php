<?php

class Setting_IndexController extends Zend_Controller_Action {

    public function init() {
        parent::init();
    }


 public function indexAction() {


   $this->_helper->layout()->setLayout('azia_layout');
       
    }

public function adminAction() {


   $this->_helper->layout()->setLayout('azia_layout');
       
    }



}    