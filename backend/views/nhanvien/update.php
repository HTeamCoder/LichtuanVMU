<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = Yii::t('app', 'Cập nhật cán bộ : ') . ' ' . $model->ten;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Cán bộ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ten, 'url' => ['view', 'id' => $model->id]];
?>
<div class="nhanvien-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
