<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\tuan */

$this->title = $model->tuannamhoc;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Tuần công tác'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tuan-view">

    <h1><?= Html::encode($this->title) ?></h1>
     <p>
        <?= Html::a(Yii::t('app', 'Cập nhật'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Xóa bỏ'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa tuần công tác này không ?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute'=>'tuannam',
                'label'=>'Tuần theo năm',
                'value'=>$model->tuannam
            ],
            // [
            //     'attribute'=>'tuannamhoc',
            //     'label'=>'Tuần theo năm học',
            //     'value'=>$model->tuannamhoc
            // ],
            [
                'attribute'=>'tungay',
                'label'=>'Từ ngày',
                'value'=>$model->tungay
            ],
            [
                'attribute'=>'denngay',
                'label'=>'Đến ngày',
                'value'=>$model->denngay
            ],
            [
                'attribute'=>'thoigianhienthi',
                'value'=>((intval($model->thoigianhienthi))/1000).' giây'
            ],
            [
                'attribute'=>'sukien',
                'label'=>'Nội dung',
                'format'=>'html',
                'value'=>$model->sukien
            ],
        ],
    ]) ?>

</div>
