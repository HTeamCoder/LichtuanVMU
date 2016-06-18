<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;
/**
 * This is the model class for table "{{%khauhieu}}".
 *
 * @property integer $id
 * @property string $banner
 * @property integer $donvi_id
 *
 * @property Donvi $donvi
 */
class khauhieu extends \yii\db\ActiveRecord
{    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%khauhieu}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['donvi_id'], 'required'],
            [['donvi_id'], 'integer'],
            [['banner'], 'string', 'max' => 200],
            [['banner'],'file','skipOnEmpty' => false, 'extensions' => 'png, jpg'],
            [['banner'],'image','minWidth'=>'1000']
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'banner' => Yii::t('app', 'Banner'),
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
     * @return KhauhieuQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new KhauhieuQuery(get_called_class());
    }

    public function beforeSave($insert)
    {
        $banner_bg = UploadedFile::getInstance($this,'banner');
        $banner_img = $this->findOne($this->id);
        if ($banner_bg)
        {
            if($banner_img && file_exists($banner_img->banner))
            {
                unlink($banner_img->banner);
            }
            $banner_bg->saveAs('uploads/slogan/'.time().'.'.$banner_bg->extension);
            $this->banner = 'uploads/slogan/'.time().'.'.$banner_bg->extension;
        }
        return parent::beforeSave($insert);
    }
    public function beforeDelete()
    {

        $banner = $this->findOne($this->id);
        if ($banner && file_exists($banner->banner))
            unlink($banner->banner);
        return parent::beforeDelete();
    }
}
