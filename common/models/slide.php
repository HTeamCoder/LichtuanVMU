<?php

namespace common\models;

use Yii;
use yii\web\UploadedFile;
/**
 * This is the model class for table "{{%slide}}".
 *
 * @property integer $id
 * @property string $tieude
 * @property integer $donvi_id
 *
 * @property Hinhanh[] $hinhanhs
 * @property Donvi $donvi
 */
class slide extends \yii\db\ActiveRecord
{
    public $anh;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%slide}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['donvi_id','tieude'], 'required'],
            [['donvi_id'], 'integer'],
            [['tieude'], 'string', 'max' => 100],
            [['active'], 'string'],
        ];
    }
    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'tieude' => Yii::t('app', 'Tiêu dề'),
            'donvi_id' => Yii::t('app', 'Đơn vị'),
            'active' => Yii::t('app', 'Ưu tiên hiển thị'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getHinhanhs()
    {
        return $this->hasMany(hinhanh::className(), ['slide_id' => 'id']);
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
     * @return SlideQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new SlideQuery(get_called_class());
    }
    public function afterSave($insert, $changedAttributes)
    {

        $thoigianhienthi = '';
        $hinhanh = new hinhanh();
        $hinhanh->file = UploadedFile::getInstances($hinhanh, 'file');
        if ($hinhanh->file) {
            foreach ($hinhanh->file as $key => $value) {
                $value->saveAs('uploads/slide/' . time() . '-' . substr(sha1($key + 1), 0, 10) . '.' . $value->extension);
                $hinhanh1 = new hinhanh();
                $hinhanh1->path = 'uploads/slide/' . time() . '-' . substr(sha1($key + 1), 0, 10) . '.' . $value->extension;
                $hinhanh1->slide_id = $this->id;
                $hinhanh1->tocdohienthi = 5000;//thời gian mặc định của 1 ảnh
                $hinhanh1->save(false);

            }
        }
        parent::afterSave($insert, $changedAttributes);
    }
    public function beforeDelete()
    {
        $hinhanh = new hinhanh();
        $paths = $hinhanh->findAll(['slide_id'=>$this->id]);
        if ($paths)
        {
            foreach ($paths as $path)
            {
                if(file_exists($path['path']))
                    unlink($path['path']);
            }
        }
        $hinhanh->deleteAll(['slide_id'=>$this->id]);
        return parent::beforeDelete();
    }

}
