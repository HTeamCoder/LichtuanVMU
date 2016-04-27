<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\SukienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý lịch tuần');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="sukien-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Import lịch tuần'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> lịch tuần",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'tuan_id',
                'value'=>function ($model)
                {
                    return $model->tuan->tuannam;
                },
                'label'=>'Lịch tuần theo năm',
                'filter'=>Html::activeDropDownList($searchModel,'tuan_id',\yii\helpers\ArrayHelper::map(\common\models\tuan::find()->all(),'id','tuannam'
                ),['prompt' => 'Tất cả','class' => 'form-control'])
            ],
            [
                'attribute'=>'tuan_id',
                'value'=>function ($model)
                {
                    return $model->tuan->tuannamhoc;
                },
                'label'=>'Lịch tuần theo năm học',
                'filter'=>Html::activeDropDownList($searchModel,'tuan_id',\yii\helpers\ArrayHelper::map(\common\models\tuan::find()->all(),'id','tuannamhoc'
                ),['prompt' => 'Tất cả','class' => 'form-control'])
            ],
            [
                'attribute'=>'thoigian',
                'value'=>function($model)
                {
                    return $model->thoigian;
                },
                'filter'=>false,
            ],
            [
                 'attribute'=>'thoidiem',
                'value'=>function ($model)
                {
                    return $model->thoidiem;
                },
                'label'=>'Thời gian',
                'filter'=>true
            ],
            [
                'attribute'=>'diadiem_congviec',
                'value'=>function($model)
                {
                    return $model->diadiem_congviec;
                },
                'filter'=>false,
                'format'=>'html'
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
