<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = 'Sửa thông tin: ' . ' ' . $model->ten;
$this->params['breadcrumbs'][] = ['label' => 'Danh sách nhân viên', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->ten, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Sửa';
?>
<div class="nhanvien-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
