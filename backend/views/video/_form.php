<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\video */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="video-form">

    <?php $form = ActiveForm::begin(); ?>
		
    <?= $form->field($model, 'duongdan')->textInput(['maxlength' => true,'id'=>'videoytb','autocomplete'=>'off']) ?>
	<?= $form->field($model, 'thoigianhienthi')->textInput(['maxlength' => true,'id'=>'videoytb','readonly'=>true,'id'=>'results']) ?>
		<iframe width="420" height="315" src="" frameborder="0" allowfullscreen  id="showvideo" ?>></iframe>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Thêm mới') : Yii::t('app', 'Cập nhật'), ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>
		
    <?php ActiveForm::end(); ?>
</div>
<?php
$script = <<< JS
$(document).ready(function(){
		var apikey = 'AIzaSyD4qKl4PkolpUzEwmS3m43_gnbJF6FFch0';
		$('#showvideo').hide();
		$('#videoytb').keyup(function(){
			var codevideo = $(this).val();
	       $.get('index.php?r=video/show',{code:codevideo},function(data){
				$('#showvideo').attr('src',String('http://www.youtube.com/embed/'+JSON.parse(data)));
				$('#showvideo').show();
				$.get(
	        "https://www.googleapis.com/youtube/v3/search", {
	            part: 'snippet,id',
	            q: JSON.parse(data),
	            maxResults: 50,
	            type: 'video',
	            key: apikey
	        },
	        function(data) {
	            for (var i = 0; i < data.items.length; i++) {
	                var url1 = "https://www.googleapis.com/youtube/v3/videos?id=" + data.items[i].id.videoId + "&key=AIzaSyD4qKl4PkolpUzEwmS3m43_gnbJF6FFch0&part=snippet,contentDetails";
	                $.ajax({
	                    async: false,
	                    type: 'GET',
	                    url: url1,
	                    success: function(data) {
	                        if (data.items.length > 0) {
	                            var a = data.items[0].contentDetails.duration.match(/\d+/g);

							    if (data.items[0].contentDetails.duration.indexOf('M') >= 0 && data.items[0].contentDetails.duration.indexOf('H') == -1 && data.items[0].contentDetails.duration.indexOf('S') == -1) {
							        a = [0, a[0], 0];
							    }

							    if (data.items[0].contentDetails.duration.indexOf('H') >= 0 && data.items[0].contentDetails.duration.indexOf('M') == -1) {
							        a = [a[0], 0, a[1]];
							    }
							    if (data.items[0].contentDetails.duration.indexOf('H') >= 0 && data.items[0].contentDetails.duration.indexOf('M') == -1 && data.items[0].contentDetails.duration.indexOf('S') == -1) {
							        a = [a[0], 0, 0];
							    }

							    data.items[0].contentDetails.duration = 0;

							    if (a.length == 3) {
							        data.items[0].contentDetails.duration = data.items[0].contentDetails.duration + parseInt(a[0]) * 3600;
							        data.items[0].contentDetails.duration = data.items[0].contentDetails.duration + parseInt(a[1]) * 60;
							        data.items[0].contentDetails.duration = data.items[0].contentDetails.duration + parseInt(a[2]);
							    }

							    if (a.length == 2) {
							        data.items[0].contentDetails.duration = data.items[0].contentDetails.duration + parseInt(a[0]) * 60;
							        data.items[0].contentDetails.duration = data.items[0].contentDetails.duration + parseInt(a[1]);
							    }

							    if (a.length == 1) {
							        data.items[0].contentDetails.duration = data.items[0].contentDetails.duration + parseInt(a[0]);
							    }
							    var h = Math.floor(data.items[0].contentDetails.duration / 3600);
							    var m = Math.floor(data.items[0].contentDetails.duration % 3600 / 60);
							    var s = Math.floor(data.items[0].contentDetails.duration % 3600 % 60);
						     	$('#results').attr('value',(h*3600+m*60+s)*1000);

	                        }
	                    }
	                });
	            }
	        });
	       });
		});
   });
JS;
$this->registerJs($script);
?>