<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\thongbao */

$this->title = $model->noidung;
$this->params['breadcrumbs'][] = ['label' => 'Tin tức', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="thongbao-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cập nhật', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Xóa bỏ', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Bạn có chắc chắn muốn xóa tin tức này không ?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'noidung:ntext',
            // [
            //     'attribute'=>'donvi_id',
            //     'label'=>'Đơn vị',
            //     'value'=>$model->donvi->tendonvi
            // ],
            [
                'attribute'=>'active',
                'label'=>'Trạng thái',
                'value'=> ($model->active == 'hienthi')?'Hiển thị':'Không hiển thị'
            ],
        ],
    ]) ?>

</div>
