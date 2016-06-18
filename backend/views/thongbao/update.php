<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\thongbao */

$this->title = 'Cập nhật tin tức ' . ' ' ;
$this->params['breadcrumbs'][] = ['label' => 'Tin tức', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->noidung, 'url' => ['view', 'id' => $model->id]];
?>
<div class="thongbao-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
