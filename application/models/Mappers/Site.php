<?php 

class Application_Model_Mappers_Site  {

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
            $this->setDbTable('Application_Model_Entities_Site');
        }
        return $this->_dbTable;
    }
    
    
    public function findAll() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'site'), array('s.*'))
                ->order("s.site_name asc");
        
        return $this->getDbTable()->fetchAll($select);
    }
    
    public function findSite() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'site'), array('s.*'))
                ->group("s.site_name")
                ->order("s.site_name asc");
        
        return $this->getDbTable()->fetchAll($select);
    }


     public function findAllByName($name) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'site'), array('s.*'))
               ->where("s.id = ?",$name);
        
        return $this->getDbTable()->fetchAll($select);
    }
    
    


    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'site'), array('p.*'))
                ->where("s.site_name = ?",$id);
        
         return $this->getDbTable()->fetchAll($select);
    }


     public function verification($numero,$periode,$siteid) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('s'=>'site'), array('*'))
                ->where("s.site_name = ?",intVal($numero))
                 ->where("s.id= ?",$siteid);
               
         return $this->getDbTable()->fetchAll($select);
    }
    

}

