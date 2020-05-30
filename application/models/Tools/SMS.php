<?php

class Application_Model_Tools_SMS {

    var $sms;
    var $msisdn;

    function setSms($d){
        $this->sms = $d;
    }

    function setMsisdn($d){
        $this->msisdn = $d;
    }

    function __construct() {
        
    }

    function send(){
        
        $config = new Zend_Config_Ini(APPLICATION_PATH.'/configs/application.ini', 'sms');
        $curl = curl_init();

        

        /*curl_setopt($curl,1, array(
            CURLOPT_URL => 
                $config->url."send_message/user/".
                $config->username."/secret/".
                $config->password."/msg/".
                urlencode($this->sms)."/receiver/225".
                $this->msisdn."/sender/".
                $config->sender."/cltmsgid/".
                $config->cltMsgId,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => "",
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 30,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST =>"GET",
            CURLOPT_HTTPHEADER => array("cache-control: no-cache")
        ));*/

        /*echo $config->url."send_message/user/".
        $config->username."/secret/".
        $config->password."/msg/".
        urlencode($this->sms)."/receiver/225".
        $this->msisdn."/sender/".
        $config->sender."/cltmsgid/".
        $config->cltMsgId;*/

        curl_setopt($curl, CURLOPT_URL, $config->url."send_message/user/".
            $config->username."/secret/".
            $config->password."/msg/".
            urlencode($this->sms)."/receiver/225".
            $this->msisdn."/sender/".
            $config->sender."/cltmsgid/".
            $config->cltMsgId);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_MAXREDIRS, 10);
        curl_setopt($curl, CURLOPT_TIMEOUT, 30);
        curl_setopt($curl, CURLOPT_HTTP_VERSION, CURL_HTTP_VERSION_1_1);
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "GET");
        //curl_setopt($curl, CURLOPT_HTTPHEADER, "cache-control: no-cache");

        $msg = curl_exec($curl);
        $err = curl_error($curl);
        curl_close($curl);
        if ($err):
            return "[{'Success':0,'Error':$err,'Description':'cURL Error'}]";
        else:
            return $msg;
        endif;

        //print_r($curl);
                
    }


}
