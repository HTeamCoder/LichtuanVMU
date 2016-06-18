<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\file\FileInput;
use mihaildev\ckeditor\CKEditor;
/* @var $this yii\web\View */
/* @var $model common\models\tuan */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tuan-form">

     <?php $form = ActiveForm::begin(['options' => ['enctype'=>'multipart/form-data']]); ?>

    
    <?= ($model->isNewRecord)?$form->field($model,'file')->widget(FileInput::classname(),['pluginOptions' => [
        'showRemove' => true,
        'showUpload' => false,
        'browseClass' => 'btn btn-primary btn-block',
        'browseIcon' => '<i class="glyphicon glyphicon-list-alt"></i> ',
        'browseLabel' =>  ' Lựa chọn file lịch tuần'
    ]]):''; ?>

    <?= $form->field($model, 'thoigianhienthi')->textInput(['type' => 'number' , 'min'=>'5','step' => '0.1' , 'value'=> $model->thoigianhienthi/1000 ]) ?>

	<?= (!$model->isNewRecord)?$form->field($model, 'sukien')->widget(CKEditor::className(),[
        'editorOptions' => [
            'preset' => 'full',
            'inline' => false,
        ],
    ]):'';
    ?>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Import') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
