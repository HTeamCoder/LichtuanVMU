<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\countdown */

$this->title = $model->tieude;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Sự kiện'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="countdown-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Cập nhật'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Xóa bỏ'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa sự kiện này không?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'tieude',
            [
                'attribute'=>'thoigiandienra',
                'value'=> date('d-m-Y H:i',strtotime($model->thoigiandienra)),
            ],
            [
                'attribute'=>'dadienra',
                'label'=>'Trạng thái',
                'value'=> ($model->dadienra == 0)?'Sắp diễn ra':'Kết thúc'
            ],
            // [
            //     'attribute'=>'donvi_id',
            //     'value'=> $model->donvi->tendonvi  
            // ],
            [
                'attribute'=>'thoigianhienthi',
                'value'=> ($model->thoigianhienthi/1000).' giây'
            ],
             [
                'attribute'=>'active',
                'label'=>'Trạng thái',
                'value'=>($model->active == 'hienthi')?'Hiển thị':'Không hiển thị',
            ],
        ],
    ]) ?>

</div>
