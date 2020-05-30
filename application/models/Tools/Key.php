<?php

class Application_Model_Tools_Key {

    var $key = "1234567890AZERTYUIOPQSDFGHJKLMWXCVBN";

    function __construct() {
        
    }

    function getKey() {
        return $this->key;
    }

    function setKey($key) {
        $this->key = $key;
    }

    function GenerationCle($Texte, $CleDEncryptage) {
        $CleDEncryptage = md5($CleDEncryptage);
        $Compteur = 0;
        $VariableTemp = "";
        for ($Ctr = 0; $Ctr < strlen($Texte); $Ctr++) {
            if ($Compteur == strlen($CleDEncryptage))
                $Compteur = 0;
            $VariableTemp.= substr($Texte, $Ctr, 1) ^ substr($CleDEncryptage, $Compteur, 1);
            $Compteur++;
        }
        return $VariableTemp;
    }

    function Crypte($Texte, $Cle) {
        srand((double) microtime() * 1000000);
        $CleDEncryptage = md5(rand(0, 32000));
        $Compteur = 0;
        $VariableTemp = "";
        for ($Ctr = 0; $Ctr < strlen($Texte); $Ctr++) {
            if ($Compteur == strlen($CleDEncryptage))
                $Compteur = 0;
            $VariableTemp.= substr($CleDEncryptage, $Compteur, 1) . (substr($Texte, $Ctr, 1) ^ substr($CleDEncryptage, $Compteur, 1) );
            $Compteur++;
        }
        return base64_encode($this->GenerationCle($VariableTemp, $Cle));
    }

    public function Decrypte($Texte, $Cle) {
        $Texte = $this->GenerationCle(base64_decode($Texte), $Cle);
        $VariableTemp = "";
        for ($Ctr = 0; $Ctr < strlen($Texte); $Ctr++) {
            $md5 = substr($Texte, $Ctr, 1);
            $Ctr++;
            $VariableTemp.= (substr($Texte, $Ctr, 1) ^ $md5);
        }
        return $VariableTemp;
    }

}
