<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%trinhdo}}".
 *
 * @property integer $id
 * @property string $tentrinhdo
 *
 * @property Nhanvien[] $nhanviens
 */
class trinhdo extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%trinhdo}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tentrinhdo'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'tentrinhdo' => Yii::t('app', 'Tentrinhdo'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNhanviens()
    {
        return $this->hasMany(nhanvien::className(), ['trinhdo_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return TrinhdoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TrinhdoQuery(get_called_class());
    }
}
