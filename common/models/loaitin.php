<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "loaitin".
 *
 * @property integer $id
 * @property string $tenloai
 *
 * @property Tintuc[] $tintucs
 */
class loaitin extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'loaitin';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['tenloai'], 'required'],
            [['tenloai'], 'string', 'max' => 45],
            [['tenloai'], 'unique']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'tenloai' => 'Tên loại',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTintucs()
    {
        return $this->hasMany(Tintuc::className(), ['loaitin_id' => 'id']);
    }

    /**
     * @inheritdoc
     * @return LoaitinQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new LoaitinQuery(get_called_class());
    }
}
