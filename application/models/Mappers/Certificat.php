<?php


class Application_Model_Mappers_Certificat  {

    protected $_dbTable;
    protected $logger;
    private $suffix;

    public function __construct($_n = 1) {
        $this->n = $_n;
        $this->suffix = '_n_' . $this->n;
    }

    public function setDbTable($dbTable) {
        if (is_string($dbTable)) {
            $dbTable = new $dbTable();
        }
        if (!$dbTable instanceof Zend_Db_Table_Abstract) {
            throw new Exception('Invalid table data gateway provided');
        }
        $this->_dbTable = $dbTable;
        return $this;
    }

    /**
     * @return Application_Model_DbTable_Action
     */
    public function getDbTable() {
        if (null === $this->_dbTable) {
            $this->setDbTable('Application_Model_Entities_Certificat');
        }
        return $this->_dbTable;
    }
    
    
    public function findAll() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('gm'=>'certificat'), array('gm.*'))
                ->join(array('g' => 'modele'),'gm.id_certificat =  g.id_certificat',array('g.modele'));
               
        return $this->getDbTable()->fetchAll($select);
    }

   
    
    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('gm'=>'certificat'), array('gm.*'))
                ->join(array('m' => 'modele'),'gm.id_modele =  m.id_modele',array('m.id_modele'))
                ->where("gm.id_modele= ?",$id);
        
         return $this->getDbTable()->fetchAll($select)->current();
    }
    

}

