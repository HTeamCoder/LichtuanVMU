<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\loaitin */

$this->title = $model->tenloai;
$this->params['breadcrumbs'][] = ['label' => 'Loại tin', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="loaitin-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cập nhật', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Xóa bỏ', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Bạn có chắc chắn muốn xóa loại tin '.$model->tenloai.' này không ?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'tenloai',
        ],
    ]) ?>

</div>
