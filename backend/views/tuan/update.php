<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\thongbao */

$this->title = 'Cập nhật tuần công tác';
$this->params['breadcrumbs'][] = ['label' => 'Tuần công tác', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tuannam, 'url' => ['view', 'id' => $model->id]];
?>
<div class="tuan-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
