<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\SukienSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sukien-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'thoigian') ?>

    <?= $form->field($model, 'diadiem_congviec') ?>

    <?= $form->field($model, 'chutri') ?>

    <?= $form->field($model, 'khachmoi') ?>

    <?php // echo $form->field($model, 'nam') ?>

    <?php // echo $form->field($model, 'namhoc') ?>

    <?php // echo $form->field($model, 'tuancuanam') ?>

    <?php // echo $form->field($model, 'tuancuanamhoc') ?>

    <?php // echo $form->field($model, 'ngaycongtac') ?>

    <?php // echo $form->field($model, 'ghichu') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
