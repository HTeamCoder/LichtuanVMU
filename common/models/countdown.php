<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%countdown}}".
 *
 * @property integer $id
 * @property string $tieude
 * @property string $thoigiandienra
 * @property integer $dadienra
 * @property integer $donvi_id
 *
 * @property Donvi $donvi
 */
class countdown extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%countdown}}';
    }
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tieude', 'thoigiandienra', 'donvi_id','thoigianhienthi'], 'required'],
            ['thoigiandienra','checkDatetime'],
            [['thoigiandienra'], 'safe'],
            [['dadienra', 'donvi_id'], 'integer'],
            [['tieude','active'], 'string', 'max' => 150],
            [['thoigianhienthi'], 'double','max'=>99000,'min'=>5],
        ];
    }
    public function checkDatetime($attribute,$params)
    {
        $today = time();
        $selectDate = strtotime($this->thoigiandienra);
        if ($selectDate < $today)
            $this->addError($attribute,'Thời gian diễn ra phải lớn hơn thời gian hiện tại');
    }
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'tieude' => Yii::t('app', 'Tiêu đề'),
            'thoigiandienra' => Yii::t('app', 'Thời gian diễn ra'),
            'thoigianhienthi' => Yii::t('app', 'Thời gian hiển thị (giây)'),
            'dadienra' => Yii::t('app', 'Dadienra'),
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
     * @return CountdownQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CountdownQuery(get_called_class());
    }

    public function beforeSave($insert)
    {
        $this->thoigiandienra = date('Y-m-d H:i',strtotime($this->thoigiandienra));
        $this->thoigianhienthi = $this->thoigianhienthi*1000;
        return parent::beforeSave($insert);
    }
}
