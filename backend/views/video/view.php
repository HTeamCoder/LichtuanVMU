<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\video */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Video'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="video-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cập nhật', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Delete'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa video này không ?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'duongdan',
            [
                'attribute'=>'video',
                'format'=>'raw',
                'value'=>'<iframe width="220" height="220" src="'.$model->duongdan.'" frameborder="0" allowfullscreen ></iframe>',
            ],
            [
                'attribute'=>'donvi_id',
                'value'=>$model->donvi->tendonvi
            ],
           [
                'attribute'=>'thoigianhienthi',
                'label'=>'Thời gian hiển thị',
                'value'=>(intval($model->thoigianhienthi)/1000).' giây'
            ],
        ],
    ]) ?>

</div>
