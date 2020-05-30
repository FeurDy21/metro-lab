<?php


class Application_Model_Mappers_Administrateurs   {

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
            $this->setDbTable('Application_Model_Entities_Administrateurs');
        }
        return $this->_dbTable;
    }
    
    
    public function authenticate($d) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('a'=>'administrateurs'), array('a.*'))
                ->join(array('g' => 'groupes'),'a.id_admin =  g.id_groupe',array('g.groupe'))
                ->where("a.login = ?",$d['login']);
        
        return $this->getDbTable()->fetchAll($select)->current();
    }
    
    
    public function findAll() {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('a'=>'administrateurs'), array('a.*'))
                ->join(array('g' => 'groupes'),'a.id_groupe =  g.id_groupe',array('g.groupe'));
        
         return $this->getDbTable()->fetchAll($select);
    }
    
    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('a'=>'administrateurs'), array('a.*'))
                ->join(array('g' => 'groupes'),'a.id_admin =  g.id_groupe',array('g.groupe'))
                ->where("a.id_admin = ?",$id);
        
         return $this->getDbTable()->fetchAll($select);
    }
    

}

