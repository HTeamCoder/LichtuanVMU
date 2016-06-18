<?php
/**
 * Created by PhpStorm.
 * User: Tung
 * Date: 5/20/2016
 * Time: 10:27 AM
 */
use yii\helpers\Html;
use yii\widgets\ActiveForm;
?>
<div class="cauhinh-form">

    <?php $form = ActiveForm::begin(['method'=>'post','action'=>['slide/configtime']]); ?>
    <input name="id" value="<?php echo $id ?>" class="hide">
    <?php

        foreach($hinhanhs as $hinhanh1){;
    ?>
            <div style="margin-top: 20px">
    <?php echo Html::img(\Yii::$app->request->BaseUrl.'/'.$hinhanh1['path'], ['width'=>'150','height'=>'150','style'=>'margin:0 5px;','float'=>'left']) ?>
    <?= $form->field($hinhanh, "tocdohienthi[]")->textInput(['type' => 'number','min'=>'5','step' => '0.1','value'=>$hinhanh1->tocdohienthi/1000]) ?>
            </div>
    <?php } ?>
<div class="form-group">
    <?= Html::submitButton($hinhanh->isNewRecord ? Yii::t('app', 'OK') : Yii::t('app', 'Chỉnh sửa'), ['class' => $hinhanh->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
</div>

<?php ActiveForm::end(); ?>

</div>