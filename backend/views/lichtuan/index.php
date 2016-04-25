<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel common\models\LichtuanSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Lịch Tuần');
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="lichtuan-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a(Yii::t('app', 'Thềm Lịch Tuần'), ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'tungay',
            'dengnay',
            'tuantheonam',
            // 'tuannamtheonamhoc',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>

</div>
