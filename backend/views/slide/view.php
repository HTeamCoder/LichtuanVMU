<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\slide */

$this->title = $model->tieude;
$this->params['breadcrumbs'][] = ['label' => 'Slide', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="slide-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cập nhật', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Xóa bỏ', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Bạn có chắc chắn muốn xóa slide này không ?',
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
                'attribute'=>'hinhanh',
                'label'=>'Hình ảnh',
                'format'=>'html',
                'value'=>$hinhanh->getUrl_image($model),
            ],
            // [
            //     'attribute'=>'donvi_id',
            //     'label'=>'Đơn vị',
            //     'value'=>$model->donvi->tendonvi
            // ],
             [
                'attribute'=>'thoigianhienthi',
                'label'=>'Thời gian hiển thị',
                'value'=>(intval($model->thoigianhienthi)/1000).' giây'
            ],
            [
                'attribute'=>'active',
                'label'=>'Trạng thái',
                'value'=>($model->active == 'hienthi')?'Hiển thị':'Không hiển thị',
            ],
        ],
    ]) ?>

</div>
