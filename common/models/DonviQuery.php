<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[donvi]].
 *
 * @see donvi
 */
class DonviQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return donvi[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return donvi|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}