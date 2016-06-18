<?php
/* @var $this \yii\web\View */
/* @var $content string */
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use frontend\assets\AppAsset;
use common\widgets\Alert;
use yii\widgets\Pjax;
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
<body onload="time()">
<?php $this->beginBody() ?>
 <div class="main">
        <nav class="navbar" role="navigation">
        <div class="top">
            <div class="row">
                <div class="col-md-7" id="logo">
                    <div class="header text-center">
                        <div class="col-md-2">
                          <div class="navbar-header" style="float:none;">
                            <img src="<?php echo Yii::$app->request->baseUrl;?>/img/logo.png" width="80" height="80" alt="">
                          </div>
                        </div>
                        <div class="collapse navbar-collapse col-md-10" id="info-banner">
                            <h3>TRƯỜNG ĐẠI HỌC HÀNG HẢI VIỆT NAM</h3>
                            <h3 class="text-left">BẢNG THÔNG TIN ĐIỆN TỬ</h3>
                        </div>
                    </div>
                </div>
                <div class="col-md-5" id="countdown">
                      <img src="<?= Yii::$app->request->baseUrl; ?>/img/anh-1.jpg">
                      <img src="<?= Yii::$app->request->baseUrl; ?>/img/anh-2.jpg">
                      <img src="<?= Yii::$app->request->baseUrl; ?>/img/anh-3.jpg">
                      <img src="<?= Yii::$app->request->baseUrl; ?>/img/anh-4.jpg" class='last-img'>
                      <div id="huanchuong">
                          <img src="<?= Yii::$app->request->baseUrl; ?>/img/huy-chuong-1.png">
                          <img src="<?= Yii::$app->request->baseUrl; ?>/img/huy-chuong-2.png">
                          <img src="<?= Yii::$app->request->baseUrl; ?>/img/huy-chuong-3.png">
                          <img src="<?= Yii::$app->request->baseUrl; ?>/img/huy-chuong-4.png">
                      </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- Page Content -->
    <?= $content;?>
    </div>
<?php $this->endBody() ?>
</body>
<script type="text/javascript">    
     $(function(){
                $("#T5").newsTicker({
            base : {
            width : 2100,
            time : 35000
          },
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
  function time() {
   var today = new Date();
   var weekday=new Array(7);
   weekday[0]="Chủ Nhật";
   weekday[1]="Thứ Hai";
   weekday[2]="Thứ Ba";
   weekday[3]="Thứ Tư";
   weekday[4]="Thứ Năm";
   weekday[5]="Thứ Sáu";
   weekday[6]="Thứ Bảy";
   var day = weekday[today.getDay()]; 
   var dd = today.getDate();
   var mm = today.getMonth()+1; 
   var yyyy = today.getFullYear();
   var h=today.getHours();
   var m=today.getMinutes();
   var s=today.getSeconds();
   m=checkTime(m);
   s=checkTime(s);
   if (h<10){h='0'+h;}
   nowTime = h+"<span class='point'>:</span>"+m+"<span class='point'>:</span>"+s;
   if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm} today = day+', '+ dd+'/'+mm+'/'+yyyy;

   tmp='<span class="date">'+nowTime+'</span>';

   document.getElementById("clock").innerHTML=tmp;
   // document.getElementById("date").innerHTML = today;
   clocktime=setTimeout("time()","1000","JavaScript");
   function checkTime(i)
   {
      if(i<10){
   i="0" + i;
      }
      return i;
   }
}
</script>
<script type="text/javascript">
    var clock;
    
    $(document).ready(function() {
        var futureDate  = new Date($('.event').attr('data-time'));
        var currentDate = new Date();

        // Calculate the difference in seconds between the future and current date
        var diff = futureDate.getTime() / 1000 - currentDate.getTime() / 1000;

        // Calculate day difference and apply class to .clock for extra digit styling.
        function dayDiff(first, second) {
          return (second-first)/(1000*60*60*24);
        }

        if (dayDiff(currentDate, futureDate) < 100) {
          $('.clock').addClass('twoDayDigits');
        } else {
          $('.clock').addClass('threeDayDigits');
        }

        if(diff < 0) {
          diff = 0;
        }

        // Instantiate a coutdown FlipClock
        clock = $('.clock').FlipClock(diff, {
          clockFace: 'DailyCounter',
          countdown: true,
          callbacks: {
              stop: function() {
                 var ma = $('.event').attr('ma');
                $.post('index.php?r=site/sukien',{dataajax:ma},function(data){
                  $('.carousel').carousel('next');
            });
              }
            }
        });

    });
  </script>
<script type="text/javascript">
        $(document).ready(function(){
          $('.marquee-vert').marquee({
            direction: 'up',
            speed: 20000,
            startVisible:true,
          });
        });
</script>
</html>
<?php $this->endPage() ?>
