<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\khoanh */

$this->title = Yii::t('app', 'Thêm mới ảnh');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Kho ảnh'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="khoanh-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
