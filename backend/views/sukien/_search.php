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

    <?= $form->field($model, 'thu') ?>

    <?= $form->field($model, 'ngay') ?>

    <?= $form->field($model, 'thoigian') ?>

    <?= $form->field($model, 'noidung') ?>

    <?php // echo $form->field($model, 'lichtuan_id') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
