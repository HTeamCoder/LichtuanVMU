<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\lichtuan */

$this->title = Yii::t('app', 'Create Lichtuan');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Lichtuans'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lichtuan-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
