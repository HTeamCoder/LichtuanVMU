<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\tintuc */

$this->title = 'Thêm mới thông báo';
$this->params['breadcrumbs'][] = ['label' => 'Thông báo', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tintuc-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
