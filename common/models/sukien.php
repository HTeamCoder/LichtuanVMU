<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "sukien".
 *
 * @property integer $id
 * @property string $thu
 * @property string $ngay
 * @property string $thoigian
 * @property string $noidung
 * @property integer $lichtuan_id
 *
 * @property Lichtuan $lichtuan
 */
class sukien extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'sukien';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ngay'], 'string'],
            [['noidung'], 'string'],
            [['lichtuan_id'], 'required'],
            [['lichtuan_id'], 'integer'],
            [['thu', 'thoigian'], 'string', 'max' => 45]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'thu' => Yii::t('app', 'Thứ'),
            'ngay' => Yii::t('app', 'Ngày Tháng'),
            'thoigian' => Yii::t('app', 'Thời Gian'),
            'noidung' => Yii::t('app', 'Nội Dung'),
            'lichtuan_id' => Yii::t('app', 'Tuần Sự Kiện'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLichtuan()
    {
        return $this->hasOne(Lichtuan::className(), ['id' => 'lichtuan_id']);
    }

    /**
     * @inheritdoc
     * @return SukienQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new SukienQuery(get_called_class());
    }
}
