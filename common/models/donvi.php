<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "donvi".
 *
 * @property integer $id
 * @property string $tendonvi
 *
 * @property Nhanvien[] $nhanviens
 */
class donvi extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'donvi';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tendonvi'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tendonvi' => 'Tendonvi',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNhanviens()
    {
        return $this->hasMany(Nhanvien::className(), ['donvi_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return DonviQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new DonviQuery(get_called_class());
    }
}
