<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[trinhdochuyenmon]].
 *
 * @see trinhdochuyenmon
 */
class TrinhdochuyenmonQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return trinhdochuyenmon[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return trinhdochuyenmon|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}