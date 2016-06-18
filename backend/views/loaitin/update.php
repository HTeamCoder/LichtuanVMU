<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\loaitin */

$this->title = 'Cập nhật loại tin:  '.' '. $model->tenloai;
$this->params['breadcrumbs'][] = ['label' => 'Loại tin', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tenloai, 'url' => ['view', 'id' => $model->tenloai]];
?>
<div class="loaitin-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
