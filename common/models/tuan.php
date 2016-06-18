<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%tuan}}".
 *
 * @property integer $id
 * @property string $tuannam
 * @property string $tuannamhoc
 * @property string $tungay
 * @property string $denngay
 * @property string $thoigianhienthi
 * @property string $sukien
 *
 * @property Sukien[] $sukiens
 */
class tuan extends \yii\db\ActiveRecord
{
     public $file;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%tuan}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['sukien'], 'string'],
            [['tuannam', 'tuannamhoc', 'tungay', 'denngay'], 'string', 'max' => 45],
            [['file'],'file','skipOnEmpty' => false, 'extensions' => 'docx, doc'],
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
            'tuannam' => Yii::t('app', 'Tuần'),
            'tuannamhoc' => Yii::t('app', 'Tuần năm học'),
            'tungay' => Yii::t('app', 'Từ ngày'),
            'denngay' => Yii::t('app', 'Đến ngày'),
            'thoigianhienthi' => Yii::t('app', 'Thời gian hiển thị'),
            'sukien' => Yii::t('app', 'Sự kiện'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSukiens()
    {
        return $this->hasMany(sukien::className(), ['tuan_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return TuanQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new TuanQuery(get_called_class());
    }

    public function beforeSave($insert)
    {
        $this->thoigianhienthi = $this->thoigianhienthi*1000;
        return parent::beforeSave($insert);
    }
}
