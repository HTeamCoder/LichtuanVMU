<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%tintuc}}".
 *
 * @property integer $id
 * @property string $noidung
 * @property string $thoigian
 * @property string $tieude
 * @property integer $donvi_id
 *
 * @property Donvi $donvi
 */
class tintuc extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tintuc}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['noidung'], 'string'],
            [['donvi_id','tieude','noidung'], 'required'],
            [['donvi_id'], 'integer'],
            [['thoigian'], 'string', 'max' => 45],
            [['tieude','active'], 'string', 'max' => 300],
            [['thoigianhienthi'], 'double','max'=>99000,'min'=>5],
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
            'thoigian' => Yii::t('app', 'Thời gian tạo'),
            'tieude' => Yii::t('app', 'Tiêu đề'),
            'donvi_id' => Yii::t('app', 'Đơn vị'),
            'thoigianhienthi' => Yii::t('app', 'Thời gian hiển thị'),
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
     * @return TintucQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TintucQuery(get_called_class());
    }

    public function beforeSave($insert)
    {
        $this->thoigianhienthi = $this->thoigianhienthi*1000;
        return parent::beforeSave($insert);
    }
}
