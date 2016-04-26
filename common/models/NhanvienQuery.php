<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[nhanvien]].
 *
 * @see nhanvien
 */
class NhanvienQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return nhanvien[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return nhanvien|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}