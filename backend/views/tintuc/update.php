<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\tintuc */

$this->title = 'Cập nhật thông báo: ' . ' ' . $model->tieude;
$this->params['breadcrumbs'][] = ['label' => 'Thông báo', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tieude, 'url' => ['view', 'id' => $model->id]];
?>
<div class="tintuc-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
