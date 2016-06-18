<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\TuanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý tuần công tác');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="tuan-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a(Yii::t('app', 'Import lịch tuần'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> tuần",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'tuannam',
                'label'=>'Tuần theo năm',
                'value'=>function($model)
                {
                    return '<a href="'.Url::to(['tuan/view','id'=>$model->id]).'" title="'.$model->tuannam.'" style="text-decoration : none;">'.$model->tuannam.'</a>';
                },
                'format'=>'html',
                'filter'=>false
            ],
            // [
            //     'attribute'=>'tuannamhoc',
            //     'label'=>'Tuần theo năm học',
            //     'value'=>'tuannamhoc',
            //     'filter'=>false
            // ],
            [
                'attribute'=>'tungay',
                'label'=>'Từ ngày',
                'value'=>'tungay',
                'filter'=>false
            ],
            [
                'attribute'=>'denngay',
                'label'=>'Đến ngày',
                'value'=>'denngay',
                'filter'=>false
            ],
            ['class' => 'yii\grid\ActionColumn','template' => '{time} {view} {update} {delete}',
            'buttons' => [
                            'delete' => function ($url, $data) {
                                if (Yii::$app->user->identity->roles == 'user')
                                {
                                    return Html::a('<span class="glyphicon glyphicon-trash hidden"></span>', $url, [
                                                    'title' => Yii::t('app', 'Xóa bỏ'),         
                                        ]);
                                }else
                                {
                                    return '<a href="'.$url.'" title="Delete" aria-label="Delete" data-confirm="Bạn có chắc chắn muốn xóa tuần công tác này không?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a>';
                                }
                                },
                        ]
            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
