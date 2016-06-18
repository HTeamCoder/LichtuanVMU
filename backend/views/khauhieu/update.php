<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\khauhieu */

$this->title = Yii::t('app', 'Cập nhật khẩu hiệu');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Khẩu hiệu'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
?>
<div class="khauhieu-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
