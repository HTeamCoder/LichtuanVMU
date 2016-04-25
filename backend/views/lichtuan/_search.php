<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\LichtuanSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="lichtuan-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>


    <?= $form->field($model, 'tungay') ?>

    <?= $form->field($model, 'dengnay') ?>

    <?= $form->field($model, 'tuantheonam') ?>

    <?php // echo $form->field($model, 'tuannamtheonamhoc') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
