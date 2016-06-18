<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[khauhieu]].
 *
 * @see khauhieu
 */
class KhauhieuQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return khauhieu[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return khauhieu|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}