<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\slidesearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Quản lý Slide';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="slide-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Thêm mới Slide', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> slide",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'tieude',
                'value'=>function($model)
                {
                    return '<a href="'.Url::to(['slide/view','id'=>$model->id]).'" title="'.$model->tieude.'" style="text-decoration : none;">'.$model->tieude.'</a>';
                },
                'format'=>'html',
            ],
            // [
            //     'attribute'=>'donvi_id',
            //     'value'=>function($model)
            //     {
            //         return $model->donvi->tendonvi;
            //     },
            //     'filter'=>(Yii::$app->user->identity->roles == 'admin')?Html::activeDropDownList($searchModel,'donvi_id',\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'
            //     ),['prompt' => 'Tất cả','class' => 'form-control']):false,
            // ],
            [
            'attribute'=>'active',
            'label'=>'Trạng thái',
            'value'=>function($model)
                {
                    return $model->active == 'hienthi'?'Hiển thị':'Không hiển thị';},
                'filter' => Html::activeDropDownList($searchModel,'active',\yii\helpers\ArrayHelper::map([
        ['id' =>'hienthi', 'name' => 'Hiển thị'], ['id' => 'khonghienthi', 'name' => 'Không hiển thị'],
    ],'id','name'),['prompt' => 'Tất cả','class' => 'form-control']),

            ],
            ['class' => 'yii\grid\ActionColumn',
            'template' => '{configtime} {view} {update} {delete} ',
            'buttons' => [
                'configtime' => function ($url,$data) {
                    if(isset(Yii::$app->user->identity->donvi_id))
                        return Html::a(
                            '<span class="glyphicon glyphicon-time"></span>',
                            $url,
                            [
                                'title' => 'Chỉnh sửa tốc độ',
                            ]
                        );
                },
    ]
            ],
    ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
