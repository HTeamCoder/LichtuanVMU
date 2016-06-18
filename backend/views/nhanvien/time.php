<?php 
use yii\helpers\Html;
use yii\widgets\ActiveForm;
 ?>
<div class="sinhnhat-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'thoigianhienthi')->textInput(['type' => 'number' , 'min'=>'0.1','step' => '0.1' , 'value'=> $model->thoigianhienthi/1000 ]) ?>
    
    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
