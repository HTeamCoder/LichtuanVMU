<?php

namespace common\models;

/**
 * This is the ActiveQuery class for [[video]].
 *
 * @see video
 */
class VideoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        $this->andWhere('[[status]]=1');
        return $this;
    }*/

    /**
     * @inheritdoc
     * @return video[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * @inheritdoc
     * @return video|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}