<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use dosamigos\datetimepicker\DateTimePicker;
/* @var $this yii\web\View */
/* @var $model common\models\countdown */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="countdown-form">

    <?php $form = ActiveForm::begin(['enableAjaxValidation'=>true]); ?>

    <?= $form->field($model, 'tieude')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'thoigianhienthi')->textInput(['type' => 'number' , 'min'=>'5','step' => '0.1' , 'value'=> $model->thoigianhienthi/1000 ]) ?>
    
	<!-- <?= (Yii::$app->user->identity->roles == 'admin'&&$model->isNewRecord)?$form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị'])->label('Đơn vị'. Html::tag('span', ' *',['class'=>'text-danger'])):'' ?> -->
	<?= $form->field($model, 'active')->dropDownList(['hienthi'=>'Hiển thị','khonghienthi'=>'Không hiển thị']) ?>
	<?= $form->field($model, 'thoigiandienra')->widget(DateTimePicker::className(), [
	    'language' => 'vi',
	    'size' => 'xs',
	    'pickButtonIcon' => 'glyphicon glyphicon-time',
	    'clientOptions' => [
	        'autoclose' => true,
	        'format' => 'dd-mm-yyyy hh:ii',
	        'todayBtn' => false
	    ]
	]);?>
	<br>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Thêm mới') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
