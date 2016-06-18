<?php
use yii\helpers\Html;
use yii\widgets\DetailView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $model common\models\nhanvien */

$this->title = $model->ten;
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Cán bộ'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="nhanvien-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a(Yii::t('app', 'Cập nhật'), ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a(Yii::t('app', 'Xóa bỏ'), ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => Yii::t('app', 'Bạn có chắc chắn muốn xóa cán bộ '.$model->ten.' này không ?'),
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?php Pjax::begin(); ?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'ten',
            [
                'attribute'=>'ngaysinh',
                'value'=>date('d-m-Y',strtotime($model->ngaysinh)),
            ],
            [
                'attribute'=>'gioitinh',
                'value'=>($model->gioitinh != 'nu')?'Nam':'Nữ',
            ],
            'ngach',
            'hesoluong',
            [
                'attribute'=>'ghichu',
                'value'=>($model->ghichu != null)?$model->ghichu:'',
            ],
            [
                'attribute'=>'donvi_id',
                'value'=>$model->donvi->tendonvi,
            ],
            [
                'attribute'=>'trinhdo_id',
                'value'=>$model->trinhdo->tentrinhdo,
            ],
        ],
    ]) ?>
    <?php 
        if ((Yii::$app->user->identity->roles == 'admin'|| Yii::$app->user->identity->username == $model->username)&& !is_null($model->username))
            {
                echo 
                DetailView::widget([
                'model' => $model,
                'attributes' => [
                    [
                        'attribute'=>'username',
                        'value'=>$model->username,
                    ],
                    [
                        'attribute'=>'password',
                        'label'=>'Mật khẩu',
                        'value'=>$model->username
                    ],
                    [
                        'attribute'=>'roles',
                        'label'=>'Vai trò',
                        'value'=>$model->roles
                    ],
                ],
            ]);
            }
    ?>
    <?php Pjax::end(); ?>
</div>
