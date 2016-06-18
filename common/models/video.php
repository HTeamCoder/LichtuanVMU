<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%video}}".
 *
 * @property integer $id
 * @property string $duongdan
 * @property integer $donvi_id
 *
 * @property Donvi $donvi
 */
class video extends \yii\db\ActiveRecord
{
    public $video;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%video}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['donvi_id','duongdan'], 'required'],
            [['donvi_id'], 'integer'],
            [['duongdan'], 'string', 'max' => 200],
            [['thoigianhienthi'], 'string', 'max' => 45],
            [['duongdan'],\tuyakhov\youtube\CodeValidator::className()],
            [['video'],'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
           'duongdan' => Yii::t('app', 'Đường dẫn video từ youtube'),
            'video'=>Yii::t('app', 'Video'),
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
     * @return VideoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new VideoQuery(get_called_class());
    }
}
