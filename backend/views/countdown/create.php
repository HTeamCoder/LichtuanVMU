<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\countdown */

$this->title = Yii::t('app', 'Thêm mới sự kiện');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Sự kiện'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="countdown-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
