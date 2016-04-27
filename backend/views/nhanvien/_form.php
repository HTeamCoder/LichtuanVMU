<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nhanvien-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ngaysinh')->textInput() ?>

    <?= $form->field($model, 'gioitinh')->dropDownList([ 'nam' => 'Nam', 'nu' => 'Nu', ], ['prompt' => '']) ?>

    <?= $form->field($model, 'ngach')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'hesoluong')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ghichu')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password_hash')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password_reset_token')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'auth_key')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput() ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <?= $form->field($model, 'donvi_id')->textInput() ?>

    <?= $form->field($model, 'trinhdo_id')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
