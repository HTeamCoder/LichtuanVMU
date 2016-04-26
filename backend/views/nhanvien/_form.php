<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\datetime\DateTimePicker;
/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nhanvien-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'ten')->textInput(['maxlength' => true]) ?>
    <?php
    echo '<label class="control-label">Ngày sinh</label>';
    echo DateTimePicker::widget([
        'model' => $model,
        'attribute' => 'ngaysinh',
        'options' => ['placeholder' => 'Nhập ngày sinh ...'],
        'pluginOptions' => [
            'language' => 'vi',//ko biết ký hiệu tiếng việt
            'autoclose' => true,
            'format'=> 'yyyy-mm-dd'
        ]

    ]);
    ?>
    <?= $form->field($model, 'gioitinh')->dropDownList(['1'=>'Nam','0'=>'Nữ'],['prompt'=>'Giới tính']) ?>

    <?= $form->field($model, 'username')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'password_hash')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chợn đơn vị']) ?>

    <?= $form->field($model, 'trinhdochuyenmon_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\trinhdochuyenmon::find()->all(),'id','tentrinhdochuyenmon'),['prompt'=>'Chọn trình dộ chuyên môn'])?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Thêm' : 'Sửa', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
