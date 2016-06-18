<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\VideoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Quản lý video');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="video-index">

    <h1><?= Html::encode($this->title) ?></h1>
     <p>
        <?= Html::a('Nhúng video', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'summary' => "",
        'columns' => [
            [
                'attribute'=>'video',
                'label'=>'Video',
                'format'=>'raw',
                'value'=> function($model)
                {
                    return '<iframe width="320" height="320" src="'.$model->duongdan.'" frameborder="0" allowfullscreen ></iframe>';
                },
                'filter'=>false
            ],
            [
                'attribute'=>'donvi_id',
                'value'=>function($model)
                {
                    return $model->donvi['tendonvi'];
                },
                'filter'=>(Yii::$app->user->identity->roles == 'admin')?Html::activeDropDownList($searchModel,'donvi_id',\yii\helpers\ArrayHelper::map(\common\models\donvi::find()->all(),'id','tendonvi'
                ),['prompt' => 'Tất cả','class' => 'form-control']):false,
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); 

    ?>

</div>
