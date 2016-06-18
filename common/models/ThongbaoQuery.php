<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[thongbao]].
 *
 * @see thongbao
 */
class ThongbaoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return thongbao[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return thongbao|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}