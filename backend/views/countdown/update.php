<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\countdown */

$this->title = Yii::t('app', 'Cập nhật sự kiện: '). ' ' . $model->tieude;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Sự kiện'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tieude, 'url' => ['view', 'id' => $model->id]];
?>
<div class="countdown-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
