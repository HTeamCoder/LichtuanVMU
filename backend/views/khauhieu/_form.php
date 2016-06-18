<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
/* @var $this yii\web\View*/
/* @var $model common\models\khauhieu */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="khauhieu-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data']]); ?>

   <?= $form->field($model, 'banner')->widget(FileInput::classname(), [
        'options' => ['accept' => 'image/*'],
    ]); ?>
    <?= ($model->banner)?Html::img(\Yii::$app->request->BaseUrl.'/'.$model->banner, ['width'=>'150','height'=>'100','style'=>'margin:20px 0px;']):''; ?>
 	<?= (Yii::$app->user->identity->roles == 'admin'&&$model->isNewRecord)?$form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị'])->label('Đơn vị'. Html::tag('span', ' *',['class'=>'text-danger'])):'' ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Thêm mới') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
