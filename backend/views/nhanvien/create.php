<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = Yii::t('app', 'Thêm mới cán bộ');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Cán bộ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
