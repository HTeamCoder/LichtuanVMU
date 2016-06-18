<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
/* @var $this yii\web\View */
/* @var $model common\models\slide */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="slide-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data']]); ?>

    <?= $form->field($model, 'tieude')->textInput(['maxlength' => true]) ?>

    <?= $form->field($hinhanh, 'file[]')->widget(FileInput::classname(), [
        'options' => ['accept' => 'image/*','multiple' => true,],'pluginOptions' => [
        'showRemove' => true,
        'showUpload' => false,
        'browseClass' => 'btn btn-primary btn-block',
        'browseIcon' => '<i class="glyphicon glyphicon-camera"></i> ',
        'browseLabel' =>  ' Lựa chọn ảnh'
    ]
    ]); ?>
    <?= (isset($thongbao)&&$thongbao!='')?'<div class="help-block" style="color:#a94442 !important;">'.$thongbao.'</div>':''; ?>
    <?= $form->field($model, 'active')->dropDownList(['hienthi'=>'Hiển thị','khonghienthi'=>'Không hiển thị']) ?>
    <?=
    (isset($path))?Html::tag('div',$path,['id'=>'list-image']):'';
    ?>
    <!-- <?= (Yii::$app->user->identity->roles == 'admin')?$form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị'])->label('Đơn vị'. Html::tag('span', ' *',['class'=>'text-danger'])):'' ?> -->
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Thêm mới' : 'Cập nhật', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
