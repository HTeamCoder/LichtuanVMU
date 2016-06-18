<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[tintuc]].
 *
 * @see tintuc
 */
class TintucQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return tintuc[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return tintuc|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}