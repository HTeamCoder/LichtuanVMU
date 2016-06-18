<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use mihaildev\ckeditor\CKEditor;


/* @var $this yii\web\View */
/* @var $model common\models\tintuc */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tintuc-form">

    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'tieude')->textInput(['maxlength' => true]) ?>
    <?=
    $form->field($model, 'noidung')->widget(CKEditor::className(),[
        'editorOptions' => [
            'preset' => 'full',
            'inline' => false,
            'clientOptions' => [
                'filebrowserUploadUrl' => 'ckeditor/url'
            ],
        ],
    ]);
    ?>
    <?= $form->field($model, 'thoigianhienthi')->textInput(['type' => 'number' , 'min'=>'5','step' => '0.1' , 'value'=> $model->thoigianhienthi/1000 ]) ?>
    <?= $form->field($model, 'active')->dropDownList(['hienthi'=>'Hiển thị','khonghienthi'=>'Không hiển thị']) ?>
   <!--  <?= (Yii::$app->user->identity->roles == 'admin'&&$model->isNewRecord)?$form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị'])->label('Đơn vị'. Html::tag('span', ' *',['class'=>'text-danger'])):'' ?> -->

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Thêm mới' : 'Cập nhật', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
