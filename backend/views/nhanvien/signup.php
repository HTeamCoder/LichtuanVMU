<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model \frontend\models\SignupForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Cấp phát tài khoản';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="site-signup">
    <h1><?= Html::encode($this->title) ?></h1>

    <p>Cấp phát tài khoản cho cán bộ:</p>

    <div class="row">
        <div class="col-lg-5">
            <?php $form = ActiveForm::begin(['id' => 'form-signup']); ?>

                 <?= $form->field($model, 'roles')->dropDownList(['manager' => 'Manager', 'user'=>'User'], ['prompt' => 'Chọn vai trò'])->label('Vai trò'. Html::tag('span', ' *',['class'=>'text-danger'])) ?>

                <div class="form-group">
                    <?= Html::submitButton('Cấp phát', ['class' => 'btn btn-primary']) ?>
                </div>

            <?php ActiveForm::end(); ?>
        </div>
    </div>
</div>
