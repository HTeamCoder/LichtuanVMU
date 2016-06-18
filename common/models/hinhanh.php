<?php

namespace common\models;

use Yii;
use yii\helpers\Html;
use yii\helpers\Url;


/**
 * This is the model class for table "hinhanh".
 *
 * @property integer $id
 * @property string $path
 * @property integer $slide_id
 *
 * @property Slide $slide
 */
class hinhanh extends \yii\db\ActiveRecord
{
    public $file;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'hinhanh';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['slide_id'], 'required'],
            [['slide_id'], 'integer'],
            [['tocdohienthi'], 'double','max'=>99000,'min'=>5],
            [['path'], 'string', 'max' => 100],
            [['file'],'file','extensions'=>'png,jpg','maxFiles'=>'10','maxSize' => 1024 * 1024 * 2],

        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'path' => 'Path',
            'slide_id' => 'Slide ID',
            'tocdohienthi' => 'Thời gian hiển thị',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getSlide()
    {
        return $this->hasOne(slide::className(), ['id' => 'slide_id']);
    }

    /**
     * @inheritdoc
     * @return HinhanhQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new HinhanhQuery(get_called_class());
    }
    public function getUrl_image($data)
    {
        $string_path = '';
        $path_img = hinhanh::find()->where(['slide_id' => $data->id])->all();
        foreach ($path_img as $img)
        {
            if (file_exists($img['path']))
                if (Yii::$app->controller->action->id != 'view')
                    $string_path .= Html::tag('div',Html::tag('div',Html::img(\Yii::$app->request->BaseUrl.'/'.$img['path'], ['width'=>'150','height'=>'150','style'=>'margin-bottom:15px;']).Html::a(Html::tag('i','',['class'=>'glyphicon glyphicon-remove delete-img']),Url::to(['slide/deleteimage','id'=>$img['id'],'slide_id'=>$img['slide_id']]),['title'=>'Xóa']),['class'=>'box-image']),['class'=>'wrap-image']);
                else
                    $string_path .= Html::img(\Yii::$app->request->BaseUrl.'/'.$img['path'], ['width'=>'150','height'=>'150','style'=>'margin:0 5px;']);
        }
        return $string_path;
    }
}
