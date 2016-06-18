<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[tuan]].
 *
 * @see tuan
 */
class TuanQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return tuan[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return tuan|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}