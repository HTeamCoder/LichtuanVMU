<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\slide */

$this->title = 'Cập nhật Slide: ' . ' ' . $model->tieude;
$this->params['breadcrumbs'][] = ['label' => 'Slide', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->tieude, 'url' => ['view', 'id' => $model->id]];
?>
<div class="slide-update">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php
    if(isset($_GET['thongbao']))
    $thongbao = $_GET['thongbao'];
    ?>
    <?= $this->render('_form', [
        'model' => $model,
        'hinhanh' => $hinhanh,
        'path'=>$hinhanh->getUrl_image($model),
        'thongbao'=>(isset($thongbao))?$thongbao:'',
    ]) ?>

</div>
