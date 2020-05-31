<?php 

class Application_Model_Mappers_Equipement  {

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
            $this->setDbTable('Application_Model_Entities_Equipement');
        }
        return $this->_dbTable;
    }
    
    
    public function findAll() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'equipement'), array('s.*'))
                ->order("s.libelle_equipement asc");
        
        return $this->getDbTable()->fetchAll($select);
    }
    


     public function findAllByType($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'equipemennt'), array('s.*'))
               ->where("s.type = ?",$id);
        
        return $this->getDbTable()->fetchAll($select);
    }
    
    


    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'equipemennt'), array('s.*'))
                ->where("s.id_equipement = ?",$id);
        
         return $this->getDbTable()->fetchAll($select);
    }


    

}

