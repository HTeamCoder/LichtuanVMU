<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\KhauhieuSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý khẩu hiệu');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="khauhieu-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Thêm mới khẩu hiệu'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "Hiển thị <strong>{begin}</strong> -> <strong>{end}</strong> của <strong>{count}</strong> khẩu hiệu",
        'emptyText'=>'<p class="text-center"><strong class="text-danger">Không tìm thấy kết quả nào</strong></p>',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            [
                'attribute'=>'banner',
                'label'=>'Ảnh Banner',
                'format'=>'html',
                'value'=>function($model)
                {
                    return Html::img(\Yii::$app->request->BaseUrl.'/'.$model->banner, ['width'=>'150','height'=>'100','style'=>'margin:0 5px;']);
                }
                ,'filter'=>false
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
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
