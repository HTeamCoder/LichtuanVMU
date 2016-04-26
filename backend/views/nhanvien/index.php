<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\nhanviensearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Danh sách nhân viên';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Thêm nhân viên', ['create'], ['class' => 'btn btn-success']) ?>
        <?= Html::a('Import', ['import'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

//            'id',
            'ten',
            'ngaysinh',
            [
                'attribute'=>'gioitinh',
                'value'=>function($data){
                    return $data->gioitinh==1?'Nam':'Nữ';
                },
                'filter' => Html::activeDropDownList($searchModel,'gioitinh',\yii\helpers\ArrayHelper::map([
                    ['id' => '1', 'name' => 'Nam'], ['id' => '0', 'name' => 'Nữ'],
                ],'id','name'),['prompt' => 'Tất cả','class' => 'form-control']),
            ],
            [
                'attribute'=>'donvi_id',
                'value'=>function($data){
                    return $data->donvi->tendonvi;
                },
                'filter'=>Html::activeDropDownList($searchModel,'donvi_id',\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'),['prompt'=>'Chọn đơn vị','class'=>'form-control'])

            ],
            [
                'attribute'=>'trinhdochuyenmon_id',
                'value'=>function($data){
                    return $data->trinhdochuyenmon->tentrinhdochuyenmon;
                },
                'filter'=>Html::activeDropDownList($searchModel,'trinhdochuyenmon_id',\yii\helpers\ArrayHelper::map(\common\models\trinhdochuyenmon::find()->all(),'id','tentrinhdochuyenmon'),['prompt'=>'Chọn trình độ','class'=>'form-control'])

            ],
            'username',
            'password_hash',
            // 'password_reset_token',
            // 'auth_key',
            // 'status',
            // 'created_at',
            // 'updated_at',


            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
