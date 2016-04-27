<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\NhanvienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý cán bộ');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Thêm mới cán bộ'), ['create'], ['class' => 'btn btn-success']) ?>
         <?= Html::a(Yii::t('app', 'Import cán bộ'), ['import'], ['class' => 'btn btn-primary']) ?>
    </p>
            
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> cán bộ",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'ten',
            'ngaysinh',
            'gioitinh',
            'ngach',
            'hesoluong',
            // 'ghichu',
            // 'username',
            // 'password_hash',
            // 'password_reset_token',
            // 'auth_key',
            // 'status',
            // 'created_at',
            // 'updated_at',
            // 'donvi_id',
            // 'trinhdo_id',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
