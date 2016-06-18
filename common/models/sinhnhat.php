<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%sinhnhat}}".
 *
 * @property integer $id
 * @property double $thoigianhienthi
 */
class sinhnhat extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%sinhnhat}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['thoigianhienthi'], 'number']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'thoigianhienthi' => Yii::t('app', 'Thời gian hiển thị'),
        ];
    }

    /**
     * @inheritdoc
     * @return SinhnhatQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new SinhnhatQuery(get_called_class());
    }
}
