<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%thongbao}}".
 *
 * @property integer $id
 * @property string $noidung
 * @property integer $donvi_id
 *
 * @property Donvi $donvi
 */
class thongbao extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%thongbao}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['noidung', 'donvi_id'], 'required'],
            [['noidung','active'], 'string'],
            [['donvi_id'], 'integer']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'noidung' => Yii::t('app', 'Nội dung'),
            'donvi_id' => Yii::t('app', 'Đơn vị'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDonvi()
    {
        return $this->hasOne(donvi::className(), ['id' => 'donvi_id']);
    }

    /**
     * @inheritdoc
     * @return ThongbaoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ThongbaoQuery(get_called_class());
    }
}
