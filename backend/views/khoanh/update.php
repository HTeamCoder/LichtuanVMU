<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\khoanh */

$this->title = Yii::t('app', 'Cập nhật ảnh nền: ') . ' ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Kho ảnh'), 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
?>
<div class="khoanh-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
