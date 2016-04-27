<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\sukien */

$this->title = $model->thoigian;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Lịch tuần'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sukien-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Cập nhật'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Xóa bỏ'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa lịch tuần '.$model->thoigian.' này không ?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'thoigian',
            'diadiem_congviec:html',
            'ghichu:html',
        ],
    ]) ?>

</div>
