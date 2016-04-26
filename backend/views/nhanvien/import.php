<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;


/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nhanvien-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data'],'method'=>'post','action'=>'index.php?r=nhanvien/import']); ?>
    <?= $form->field($model, 'file')->widget(FileInput::classname(), [
        'options' => ['accept' => 'file/*',],

    ]); ?>




    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
