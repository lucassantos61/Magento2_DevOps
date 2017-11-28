<?php

namespace Lucas\CRUD\Model;

use Magento\Framework\Model\AbstractModel;
use Magento\Framework\DataObject\IdentityInterface;

class CRUDModel extends AbstractModel implements CRUDItemInterface , IdentityInterface
{
    const CACHE_TAG = 'Lucas_CRUD_CRUDModel';

    protected function _construct()
    {
        $this->_init('Lucas\CRUD\Model\ResourceModel\CRUDModel');
    }
    public function getIdentities()
    {
        return [self::CACHE_TAG . '_' . $this->getId()];
    }
}