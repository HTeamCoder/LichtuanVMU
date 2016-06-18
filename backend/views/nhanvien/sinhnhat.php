<?php 
use yii\helpers\Html;
use yii\grid\GridView;
$this->title = Yii::t('app', 'Sinh nhật của cán bộ');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-view">
    <p>
        <?= Html::a(Yii::t('app', 'Cài đặt hiển thị'), ['time'], ['class' => 'btn btn-primary']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
         'summary' => "<h3 class='text-center'>Danh sách cán bộ có ngày sinh nhật hôm nay</h3>",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'ten',
                'label'=>'Họ tên',
                'value'=>function($model)
                {
                    return $model['ten'];
                },
                'filter'=>false
                
            ],
            [
                'attribute'=>'tuoi',
                'label'=>'Tuổi',
                'value'=>function($model)
                {
                    return $model['tuoi'];
                },
                'filter'=>false
                
            ],
            [
                'attribute'=>'donvi',
                'label'=>'Đơn vị',
                'value'=>function($model)
                {
                    return $model['donvi'];
                },
                'filter'=>false
                
            ],
            [
                'attribute'=>'trinhdo',
                'label'=>'Trình độ',
                'value'=>function($model)
                {
                    return $model['trinhdo'];
                },
                'filter'=>false
                
            ],
            [
                'attribute'=>'ngaysinh',
                'label'=>'Ngày sinh',
                'value'=>function($model)
                {
                    return $model['ngaysinh'];
                },
                'filter'=>false
                
            ],
            [
                'attribute'=>'gioitinh',
                'label'=>'Giới tính',
                'value'=>function($model)
                {
                    return $model['gioitinh'];
                },
                'filter'=>false
                
            ],
        ],
    ]); ?>

</div>