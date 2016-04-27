<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = $model->ten;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Cán bộ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Cập nhật'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Xóa bỏ'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa cán bộ '.$model->ten.' này không ?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'ten',
            'ngaysinh',
            'gioitinh',
            'ngach',
            'hesoluong',
            'ghichu',
            'username',
            'password_hash',
            'password_reset_token',
            'auth_key',
            'status',
            'created_at',
            'updated_at',
            'donvi_id',
            'trinhdo_id',
        ],
    ]) ?>

</div>
