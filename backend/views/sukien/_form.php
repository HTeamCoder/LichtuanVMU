<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
use mihaildev\ckeditor\CKEditor;
/* @var $this yii\web\View */
/* @var $model common\models\sukien */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="sukien-form">

    <?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data']]); ?>

    
    <?= ($model->isNewRecord)?$form->field($model,'file')->widget(FileInput::classname()):''; ?>

	<?= (!$model->isNewRecord)?$form->field($model, 'diadiem_congviec')->widget(CKEditor::className(),[
        'editorOptions' => [
            'preset' => 'full',
            'inline' => false,
            'clientOptions' => [
                'filebrowserUploadUrl' => 'ckeditor/url'
            ],
        ],
    ]):'';
    ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Import') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
