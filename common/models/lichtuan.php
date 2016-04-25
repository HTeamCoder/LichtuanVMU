<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "lichtuan".
 *
 * @property integer $id
 * @property string $tenlichtuan
 * @property string $tungay
 * @property string $dengnay
 * @property string $tuantheonam
 * @property string $tuannamtheonamhoc
 *
 * @property Sukien[] $sukiens
 */
class lichtuan extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public  $file;
    public static function tableName()
    {
        return 'lichtuan';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tungay', 'dengnay'], 'safe'],
            [['tuantheonam', 'tuannamtheonamhoc'], 'string', 'max' => 155],
            [['file'],'file'],


        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'tungay' => Yii::t('app', 'Từ Ngày'),
            'dengnay' => Yii::t('app', 'Đến Ngày'),
            'tuantheonam' => Yii::t('app', 'Tuần Theo Năm'),
            'tuannamtheonamhoc' => Yii::t('app', 'Tuần Theo Năm Học'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSukiens()
    {
        return $this->hasMany(Sukien::className(), ['lichtuan_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return LichtuanQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new LichtuanQuery(get_called_class());
    }
}
