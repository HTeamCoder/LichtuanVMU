<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\KhoanhSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý ảnh nền');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="khoanh-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Thêm mới ảnh nền'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
         'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> ảnh nền",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'anh',
                'format'=>'html',
                'value'=>function($model)
                {
                    return Html::img(\Yii::$app->request->BaseUrl.'/'.$model->anh, ['width'=>'250','height'=>'200','style'=>'margin:0 5px;']);
                }
                ,'filter'=>false
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
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
