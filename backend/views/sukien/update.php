<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\sukien */

$this->title = Yii::t('app', 'Cập nhật lịch tuần: ') . ' ' . $model->thoigian;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Lịch tuần'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->thoigian, 'url' => ['view', 'id' => $model->id]];
?>
<div class="sukien-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
