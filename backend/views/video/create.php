<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\video */

$this->title = Yii::t('app', ($model->isNewRecord)?'Thêm mới Video':'Cập nhật video');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Video'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="video-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
