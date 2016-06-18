<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
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
         <?= (Yii::$app->user->identity->roles == 'admin')?Html::a(Yii::t('app', 'Import cán bộ'), ['import'], ['class' => 'btn btn-primary']):'' ?>
    </p>
    <?php Pjax::begin(); ?>            
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> cán bộ",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',

        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'ten',
            [
                'attribute'=>'ngaysinh',
                'value'=>function($model)
                {
                    return date('d-m-Y',strtotime($model->ngaysinh));
                },
                'filter'=>false
                
            ],
            [
                'attribute'=>'gioitinh',
                'value'=>function($model)
                {
                    return ($model->gioitinh!='nu')?'Nam':'Nữ';
                },
                'filter'=>Html::activeDropDownList($searchModel,'gioitinh',\yii\helpers\ArrayHelper::map([
                        ['id' => 'nu', 'name' => 'Nữ'], ['id' => 'nam', 'name' => 'Nam'],
                    ],'id','name'),['prompt' => 'Tất cả','class' => 'form-control']),
            ],
            [
                'attribute'=>'ngach',
                'value'=>function($model)
                {
                    return $model->ngach;
                },
                'filter'=>false,
            ],
            [
                'attribute'=>'hesoluong',
                'value'=>function($model)
                {
                    return $model->hesoluong;
                },
                'filter'=>false,
            ],
            [
                'attribute'=>'donvi_id',
                'value'=>function($model)
                {
                    return $model->donvi->tendonvi;
                },
                'filter'=>(Yii::$app->user->identity->roles == 'admin')?Html::activeDropDownList($searchModel,'donvi_id',\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'
                ),['prompt' => 'Tất cả','class' => 'form-control']):false,
            ],
            [
                'attribute'=>'trinhdo_id',
                'value'=>function($model)
                {
                    return $model->trinhdo->tentrinhdo;
                },
                'filter'=>Html::activeDropDownList($searchModel,'trinhdo_id',\yii\helpers\ArrayHelper::map(\common\models\trinhdo::find()->all(),'id','tentrinhdo'
                ),['prompt' => 'Tất cả','class' => 'form-control']),
            ],

            ['class' => 'yii\grid\ActionColumn',
                 'template' => '{account} {view} {update} {delete} ',
                'buttons' => [
                            'account' => function ($url,$data) {
                                if((Yii::$app->user->identity->roles == 'admin' || Yii::$app->user->identity->roles == 'manager')&&$data->username == null)
                                return Html::a(
                                    '<span class="glyphicon glyphicon-user"></span>',
                                    $url, 
                                    [
                                        'title' => 'Cấp phát tài khoản',
                                    ]
                                );
                            },
                            'delete' => function ($url, $data) {
                                if ((!is_null($data->username)&&$data->username == Yii::$app->user->identity->username)||Yii::$app->user->identity->roles == 'user')
                                {
                                    return Html::a('<span class="glyphicon glyphicon-trash hidden"></span>', $url, [
                                                    'title' => Yii::t('app', 'Xóa bỏ'),         
                                        ]);
                                }else
                                {
                                    return '<a href="'.$url.'" title="Delete" aria-label="Delete" data-confirm="Bạn có chắc chắn muốn xóa cán bộ này không?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a>';
                                }
                                }
                            ]
            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
