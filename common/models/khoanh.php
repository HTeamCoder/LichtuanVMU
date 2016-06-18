<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;
/**
 * This is the model class for table "{{%khoanh}}".
 *
 * @property integer $id
 * @property string $anh
 * @property integer $donvi_id
 *
 * @property Donvi $donvi
 */
class khoanh extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%khoanh}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['donvi_id'], 'required'],
            [['donvi_id'], 'integer'],
            [['anh'], 'string', 'max' => 100],
            [['anh'],'file','skipOnEmpty' => false, 'extensions' => 'png, jpg'],
            [['anh'],'image','minWidth'=>'1000']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'anh' => Yii::t('app', 'Ảnh nền'),
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
     * @return KhoanhQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new KhoanhQuery(get_called_class());
    }

    public function beforeSave($insert)
    {
        $anh = UploadedFile::getInstance($this,'anh');
        $anhnen = $this->findOne($this->id);
        if ($anh)
        {
            if($anhnen && file_exists($anhnen->anh))
            {
                unlink($anhnen->anh);
            }
            $anh->saveAs('uploads/background/'.time().'.'.$anh->extension);
            $this->anh = 'uploads/background/'.time().'.'.$anh->extension;
        }
        return parent::beforeSave($insert);
    }
    public function beforeDelete()
    {
        $anh = $this->findOne($this->id);
        if ($anh && file_exists($anh->anh))
            unlink($anh->anh);
        return parent::beforeDelete();
    }
}
