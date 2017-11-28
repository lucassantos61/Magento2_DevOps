<?php

namespace Lucas\CRUD\Model\ResourceModel;
use \Magento\Framework\Model\ResourceModel\Db\AbstractDb;
class CRUDModel extends AbstractDb {
    protected function _construct(){
        $this->_init('lucas_crud','lucas_crud_custom_id');
    }
}