<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\slide */

$this->title = 'Thêm mới Slide';
$this->params['breadcrumbs'][] = ['label' => 'Slide', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="slide-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
        'hinhanh' => $hinhanh,
 		'thongbao'=>(isset($thongbao))?$thongbao:'',
    ]) ?>

</div>
