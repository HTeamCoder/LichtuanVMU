<?php
use yii\helpers\Url;
use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\NhanvienSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý thanh viên');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="thanhvien-index">

    <h1><?= Html::encode($this->title) ?></h1>
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
                'attribute'=>'username',
                'label'=>'Tên đăng nhập',
                'value'=>function($model)
                {
                    return $model->username;
                }
            ],
            [
                'attribute'=>'roles',
                'label'=>'Vai trò',
                'value'=>function($model)
                {
                    return $model->roles;
                },
                'filter'=>Html::activeDropDownList($searchModel,'roles',\yii\helpers\ArrayHelper::map(\common\models\nhanvien::find()->where(['not',['roles'=>Null]])->all(),'roles','roles'
                ),['prompt' => 'Tất cả','class' => 'form-control']),
            ],
            [
                'attribute'=>'donvi_id',
                'value'=>function($model)
                {
                    return $model->donvi->tendonvi;
                },
                'filter'=>Html::activeDropDownList($searchModel,'donvi_id',\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'
                ),['prompt' => 'Tất cả','class' => 'form-control']),
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
            [
                'attribute'=>'created_at',
                'label'=>'Thời gian tạo',
                'value'=>function($model)
                {
                    return date('d-m-Y H:i',$model->created_at);
                }
            ],

            ['class' => 'yii\grid\ActionColumn',
                 'template' => '{account} {resetpassword} {delete} ',
                'buttons' => [
                            'account' => function ($url,$data) {
                                if((Yii::$app->user->identity->roles == 'admin' || Yii::$app->user->identity->roles == 'manager')&&$data->username != Yii::$app->user->identity->username)
                                return Html::a(
                                    '<span class="glyphicon glyphicon-lock"></span>',
                                    $url, 
                                    [
                                        'title' => 'Cấp quyền',
                                    ]
                                );
                            },
                            'resetpassword' => function ($url,$data) {
                                if((Yii::$app->user->identity->roles == 'admin' || Yii::$app->user->identity->roles == 'manager')&&$data->username != Yii::$app->user->identity->username)
                                return Html::a(
                                    '<span class="glyphicon glyphicon-refresh"></span>',
                                    $url, 
                                    [
                                        'title' => 'Reset Password',
                                        'data-confirm'=>"Bạn có chắc chắn muốn reset mật khẩu cho cán bộ ".$data->ten." không?",
                                    ]
                                );
                            },
                            'delete' => function ($url, $data) {
                                if ($data->username == Yii::$app->user->identity->username)
                                {
                                    return Html::a('<span class="glyphicon glyphicon-trash hidden"></span>', $url, [
                                                    'title' => Yii::t('app', 'Xóa bỏ'),         
                                        ]);
                                }else
                                {
                                    return '<a href="'.Url::to(['nhanvien/deleteaccount','id'=>$data->id]).'" title="Delete" aria-label="Delete" data-confirm="Bạn có chắc chắn muốn xóa thành viên này không?" data-method="post" data-pjax="0"><span class="glyphicon glyphicon-trash"></span></a>';
                                }
                                }
                            ]
            ],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>
