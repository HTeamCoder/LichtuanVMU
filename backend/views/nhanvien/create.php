<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = 'Thêm nhân viên';
$this->params['breadcrumbs'][] = ['label' => 'Danh sách nhân viên', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
