<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = $model->ten;
$this->params['breadcrumbs'][] = ['label' => 'Danh sách nhân viên', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Sửa', ['update', 'id' => $model->ten], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Xóa', ['delete', 'id' => $model->ten], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
//            'id',
            'ten',
            'ngaysinh',
            [
                'attribute'=>'gioitinh',
                'value'=>$model->gioitinh==1?'Nam':'Nữ',
            ],

//            'password_reset_token',
//            'auth_key',
//            'status',
//            'created_at',
//            'updated_at',
            [
                'attribute'=>'donvi_id',
                'value'=>$model->donvi->tendonvi,

            ],
            [
                'attribute'=>'trinhdochuyenmon_id',
                'value'=>$model->trinhdochuyenmon->tentrinhdochuyenmon,
            ],
            'username',
            'password_hash',
        ],
    ]) ?>

</div>
