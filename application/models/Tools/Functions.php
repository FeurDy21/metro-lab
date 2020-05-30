<?php


class Application_Model_Tools_Functions {

    public function __construct() {
    }
    
    public function note($d) {
        $total=1;
        $note=0;
        //echo $d['nombre'];
        for ($i=1;$i<=$d['total'];$i++):
            $note +=$d['note'];
            $total++;
        endfor;
        //round(($note/$total),2);
        return round(($note/$total),2);
    }
    
    
    

}

