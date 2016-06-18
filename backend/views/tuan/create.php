<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\tuan */

$this->title = Yii::t('app', 'Import lịch tuần');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Tuần'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tuan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
