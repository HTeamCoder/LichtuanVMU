<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[trinhdo]].
 *
 * @see trinhdo
 */
class TrinhdoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return trinhdo[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return trinhdo|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}