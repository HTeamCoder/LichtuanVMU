<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model common\models\khauhieu */

$this->title = Yii::t('app', 'Thêm mới khẩu hiệu');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Khẩu hiệu'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="khauhieu-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>
