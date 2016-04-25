<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\sukien */

$this->title = Yii::t('app', 'Create Sukien');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Sukiens'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sukien-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
