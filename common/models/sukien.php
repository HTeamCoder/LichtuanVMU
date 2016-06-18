<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%sukien}}".
 *
 * @property integer $id
 * @property string $thoigian
 * @property string $diadiem_congviec
 * @property string $thoidiem
 * @property string $ghichu
 * @property integer $tuan_id
 *
 * @property Tuan $tuan
 */
class sukien extends \yii\db\ActiveRecord
{
    public $file;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%sukien}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['diadiem_congviec', 'ghichu'], 'string'],
            [['tuan_id','diadiem_congviec'], 'required'],
            [['tuan_id'], 'integer'],
            [['thoigian', 'thoidiem'], 'string', 'max' => 45],
            [['file'],'file','skipOnEmpty' => false, 'extensions' => 'docx, doc']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'thoigian' => Yii::t('app', 'Ngày công tác'),
            'diadiem_congviec' => Yii::t('app', 'Địa điểm và Nội dung'),
            'thoidiem' => Yii::t('app', 'Thời gian'),
            'ghichu' => Yii::t('app', 'Ghi chú'),
            'tuan_id' => Yii::t('app', 'Tuan ID'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTuan()
    {
        return $this->hasOne(tuan::className(), ['id' => 'tuan_id']);
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
