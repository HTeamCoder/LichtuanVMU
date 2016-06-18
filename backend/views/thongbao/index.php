<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\thongbaosearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Quản lý tin tức';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="thongbao-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Thêm mới tin tức', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> tin tức",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'noidung',
                'value'=>function($model)
                {
                    return '<a href="'.Url::to(['thongbao/view','id'=>$model->id]).'" title="'.$model->noidung.'" style="text-decoration : none;">'.$model->noidung.'</a>';
                },
                'format'=>'html',
            ],
            //  [
            //     'attribute'=>'donvi_id',
            //     'value'=>function($model)
            //     {
            //         return $model->donvi['tendonvi'];
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
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
