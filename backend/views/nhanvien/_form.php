<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use mihaildev\ckeditor\CKEditor;
use dosamigos\datepicker\DatePicker;
/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="nhanvien-form">

    <?php $form = ActiveForm::begin(); ?>
    <?= $form->field($model, 'ten')->textInput(['maxlength' => true,'placeholder'=>'Nhập họ và tên'])->label('Họ tên'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

    <?= $form->field($model, 'ngaysinh')->widget(
    DatePicker::className(), [
         'inline' => true, 
        'template' => '<div class="well well-sm" style="background-color: #fff; width:250px">{input}</div>',
        'language' => 'vi',
        'clientOptions' => [
            'autoclose' => true,
            'format' => 'dd-m-yyyy'
        ]
]); ?>

    <?= $form->field($model, 'gioitinh')->dropDownList([ 'nam' => 'Nam', 'nu' => 'Nữ', ], ['prompt' => 'Chọn giới tính'])->label('Giới tính'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

    <?= $form->field($model, 'ngach')->textInput(['maxlength' => true,'placeholder'=>'Nhập ngạch'])->label('Ngạch'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

    <?= $form->field($model, 'hesoluong')->textInput(['maxlength' => true,'placeholder'=>'Nhập hệ số lương'])->label('Hệ số lương'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

    <?= $form->field($model, 'ghichu')->widget(CKEditor::className(),[
        'editorOptions' => [
            'preset' => 'basic',
            'inline' => false,
            'clientOptions' => [
                'filebrowserUploadUrl' => 'ckeditor/url'
            ],
        ],
    ]); ?>

    <?= $form->field($model, 'donvi_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị'])->label('Đơn vị'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

    <?= $form->field($model, 'trinhdo_id')->dropDownList(\yii\helpers\ArrayHelper::map(\common\models\trinhdo::find()->all(),'id','tentrinhdo'),['prompt'=>'Chọn trình độ chuyên môn'])->label('Trình độ'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Thêm mới') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
