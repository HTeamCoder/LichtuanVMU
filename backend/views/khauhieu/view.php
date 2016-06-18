<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\khauhieu */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Khẩu hiệu'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="khauhieu-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Cập nhật'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Xóa bỏ'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa khẩu hiệu này không ?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            [
                'attribute'=>'banner',
                'format'=>'html',
                'value'=> Html::img(\Yii::$app->request->BaseUrl.'/'.$model->banner, ['width'=>'150','height'=>'100','style'=>'margin:0 5px;'])
            ],
            [
                'attribute'=>'donvi_id',
                'value'=> $model->donvi->tendonvi
            ]
        ],
    ]) ?>

</div>
