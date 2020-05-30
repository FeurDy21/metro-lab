<?php


class Application_Model_Mappers_Pda   {

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
            $this->setDbTable('Application_Model_Entities_Pda');
        }
        return $this->_dbTable;
    }
    
    
    public function findAll() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('p'=>'pda'), array('p.*'))
                ->order("p.idExcel asc");
        
        return $this->getDbTable()->fetchAll($select);
    }
    
    public function findSite() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('p'=>'pda'), array('p.*'))
                ->group("p.site_name")
                ->order("p.site_name asc");
        
        return $this->getDbTable()->fetchAll($select);
    }

     public function findTypeSnag() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('p'=>'pda'), array('p.*'))
                ->group("p.type_of_snag")
                ->order("p.type_of_snag asc");
        
        return $this->getDbTable()->fetchAll($select);
    }
    


    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('p'=>'pda'), array('p.*'))
                ->where("p.idExcel = ?",$id);
        
         return $this->getDbTable()->fetchAll($select);
    }

     public function verification($numero,$periode,$siteid) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('p'=>'pda'), array('*'))
                ->where("p.numero = ?",intVal($numero))
                ->where("p.periode= ?",intVal($periode))
                 ->where("p.site_id_partners= ?",$siteid);
               
         return $this->getDbTable()->fetchAll($select);
    }
    

}

