<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "trinhdochuyenmon".
 *
 * @property integer $id
 * @property string $tentrinhdochuyenmon
 *
 * @property Nhanvien[] $nhanviens
 */
class trinhdochuyenmon extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'trinhdochuyenmon';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tentrinhdochuyenmon'], 'string', 'max' => 100]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tentrinhdochuyenmon' => 'Tentrinhdochuyenmon',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getNhanviens()
    {
        return $this->hasMany(Nhanvien::className(), ['trinhdochuyenmon_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return TrinhdochuyenmonQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TrinhdochuyenmonQuery(get_called_class());
    }
}
