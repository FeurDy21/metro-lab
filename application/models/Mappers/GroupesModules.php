<?php


class Application_Model_Mappers_GroupesModules  {

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
            $this->setDbTable('Application_Model_Entities_GroupesModules');
        }
        return $this->_dbTable;
    }
    
    
    public function findAll($d) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('gm'=>'groupes_modules'), array('gm.*'))
                ->join(array('g' => 'groupes'),'gm.id_groupe =  g.id',array('g.groupe'))
                ->join(array('m' => 'modules'),'gm.id_module =  m.id',array('m.module'))
                ->where("gm.id_groupe = ?",$d['groupe']);
        
        return $this->getDbTable()->fetchAll($select);
    }

    public function findByGroupeByModule($d) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('gm'=>'groupes_modules'), array('gm.*'))
                ->join(array('g' => 'groupes'),'gm.id_groupe =  g.id',array('g.groupe'))
                ->join(array('m' => 'modules'),'gm.id_module =  m.id',array('m.module','m.description'))
                ->where("gm.id_groupe = ?",$d['groupe'])
                ->where("gm.id_module = ?",$d['module']);
        
        return $this->getDbTable()->fetchAll($select);
    }
    
    public function find($id) {
        
        $table = $this->getDbTable();
        
        $select = $table->select();
        $select->setIntegrityCheck(false)
                ->from(array('gm'=>'groupes_modules'), array('gm.*'))
                ->join(array('g' => 'groupes'),'gm.id_groupe =  g.id',array('g.groupe'))
                ->join(array('m' => 'modules'),'gm.id_module =  m.id',array('m.module'))
                ->where("gm.id = ?",$id);
        
         return $this->getDbTable()->fetchAll($select)->current();
    }
    

}

