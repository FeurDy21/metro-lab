<?php 

class Application_Model_Mappers_Probleme   {

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
            $this->setDbTable('Application_Model_Entities_Probleme');
        }
        return $this->_dbTable;
    }
    
    
    public function findAll() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'snags'),array('s.*'))
                ->order("s.type asc");
        
        return $this->getDbTable()->fetchAll($select);
    }
    
    

     public function findTypeSnag() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'snags'), array('s.*'))
                ->group("s.type")
                ->order("s.type asc");
        
        return $this->getDbTable()->fetchAll($select);
    }
    
 public function findSnagDescription($type) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'snags'), array('s.description'))
                ->where("s.type = ?",$type)
                ->order("s.description desc");
        
        return $this->getDbTable()->fetchAll($select);
    }


 public function findSnagElement($type,$description) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'snags'), array('s.*'))
                ->where("s.type = ?",$type)
                 ->where("s.description = ?",$description);
        
        return $this->getDbTable()->fetchAll($select);
    }


    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'snags'), array('p.*'))
                ->where("s.idSnag = ?",$id);
        
         return $this->getDbTable()->fetchAll($select);
    }


    
    

}

