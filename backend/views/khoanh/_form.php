<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
/* @var $this yii\web\View */
/* @var $model common\models\khoanh */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="khoanh-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data']]); ?>

  <?= $form->field($model, 'anh')->widget(FileInput::classname(), [
        'options' => ['accept' => 'image/*'],'pluginOptions' => [
        'showRemove' => true,
        'showUpload' => false,
        'browseClass' => 'btn btn-primary btn-block',
        'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
        'browseLabel' =>  ' Lựa chọn ảnh',
        'initialPreviewConfig' => [
                           'config' => [
                                'caption' => "People-1.jpg",
                                'width' => "120px",
                                'url' => "/site/file-delete",
                                'key' => 1,
                                'showDelete'=>true
                            ],

                        ],
        'initialPreviewShowDelete' => true,
    ]
    ]); ?>
    <?= ($model->anh)?Html::img(\Yii::$app->request->BaseUrl.'/'.$model->anh, ['width'=>'150','height'=>'100','style'=>'margin:20px 0px;']):''; ?>

   <!--  <?= (Yii::$app->user->identity->roles == 'admin'&&$model->isNewRecord)?$form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị'])->label('Đơn vị'. Html::tag('span', ' *',['class'=>'text-danger'])):'' ?> -->

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Thêm mới') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
