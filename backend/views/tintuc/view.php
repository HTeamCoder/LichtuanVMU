<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\tintuc */

$this->title = $model->tieude;
$this->params['breadcrumbs'][] = ['label' => 'Thông báo', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tintuc-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cập nhật', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Xóa bỏ', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Bạn có chắc chắn muốn xóa thông báo này không ?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'tieude',
            'noidung:html',
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
