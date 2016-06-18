<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
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
    <?php Pjax::begin(); ?>
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
                'format'=>'html',
                'contentOptions'=>['style'=>'max-width: 500px;overflow:auto;']
            ],

            ['class' => 'yii\grid\ActionColumn',
             'template' => '{view} {update}',
            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
