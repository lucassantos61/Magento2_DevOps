<?php
namespace Lucas\Model\ResourceModel\LucasCRUD;
use \Magento\Framework\Model\ResourceModel\Db\Collection\AbstractCollection;

class Collection extends AbstractCollection{
    public function _construct(){
        $this->_init('Lucas\CRUD\Model\LucasCRUD','Lucas\CRUD\Model\ResourceModel\LucasCRUD');
    }
}