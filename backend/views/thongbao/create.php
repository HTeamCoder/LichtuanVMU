<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\thongbao */

$this->title = 'Thêm mới tin tức';
$this->params['breadcrumbs'][] = ['label' => 'Tin tức', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="thongbao-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
