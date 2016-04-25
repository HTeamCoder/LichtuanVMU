<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[sukien]].
 *
 * @see sukien
 */
class SukienQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return sukien[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return sukien|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}