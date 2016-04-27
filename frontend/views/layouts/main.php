<?php

/* @var $this \yii\web\View */
/* @var $content string */

use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;

AppAsset::register($this);
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?= Html::csrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body>
<?php $this->beginBody() ?>
 <div class="main">
        <nav class="navbar" role="navigation">
        <div class="top">
            <div class="row">
                <div class="col-md-10">
                    <div class="header text-center">
                        <div class="navbar-header">
                            <img src="<?php echo Yii::$app->request->baseUrl;?>/img/logo.png" width="80" height="80" alt="">
                        </div>
                        <div class="collapse navbar-collapse" id="info-banner">
                            <h1>TRƯỜNG ĐẠI HỌC HÀNG HẢI VIỆT NAM</h1>
                            <h3>Khoa Công Nghệ Thông Tin</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <?= $content;?>
     <!-- Footer -->
       <footer>
           <p class="text-center">Copyright &copy H-Team 2016</p>
       </footer>
    </div>

<?php $this->endBody() ?>
</body>
<script type="text/javascript">    
     $(function(){
                $("#T5").newsTicker({
            base : {
            width : 2100,
            time : 30000
          },
        });
      
            });
    $(function(){
      $('#lichtuan').vTicker({ 
        speed:2000,
        pause: 6000,
        animation: 'fade',
        mousePause: false,
        showItems: 3
      });
    });
    var t;

    var start = $('#myCarousel').find('.active').attr('data-interval');
    t = setTimeout("$('#myCarousel').carousel({interval: 1000});", start-1000);

    $('#myCarousel').on('slid.bs.carousel', function () {  
         clearTimeout(t);  
         var duration = $(this).find('.active').attr('data-interval');
        
         $('#myCarousel').carousel('pause');
         t = setTimeout("$('#myCarousel').carousel();", duration-1000);
    })

    $('.carousel-control.right').on('click', function(){
        clearTimeout(t);   
    });

    $('.carousel-control.left').on('click', function(){
        clearTimeout(t);   
    });
          </script>
</html>
<?php $this->endPage() ?>
