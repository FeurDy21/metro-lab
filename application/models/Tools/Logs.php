<?php


class Application_Model_Tools_Logs {

    public function __construct() {
    }
    
    public function info($d) {
        $logger = new Zend_Log(new Zend_Log_Writer_Stream('logs/application.log'));
        $logger->info($d['url']."|".$d['info']."|".$d['user']."|".$_SERVER['REMOTE_ADDR']);
    }
    
    public function warn($d) {
        $logger = new Zend_Log(new Zend_Log_Writer_Stream('logs/application.log'));
        $logger->warn($d['url']."|".$d['info']."|".$d['user']."|".$_SERVER['REMOTE_ADDR']);
        
    }
    
    

}

