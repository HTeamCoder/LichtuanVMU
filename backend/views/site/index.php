<?php
/* @var $this yii\web\View */

$this->title = 'Hệ thống quản lý thông tin lịch tuần VMU';
?>
<div class="site-index">

    <div class="jumbotron">
        <h1>Bảng thông tin điện tử VMU</h1>
        <p class="lead">Hệ thống quản lý bảng thông tin điện tử VMU</p>
    <div class="auto-due">
    <style>
        #soon-amor {
            font-family:Arial, serif;
            color:#fff;
            background-color:#db4b3e;
        }
        #soon-amor .soon-label {
            color:rgba(0,0,0,0.7);
        }
        #soon-amor{
            background-color:#fff;
        }
        #soon-amor .soon-flip-card
        {
            background-color:#000 !important;
        }
    </style>
    <div class="soon" id="soon-amor"
         data-format="y,d,h,m,s"
         data-layout="group"
         data-event-complete="complete"
         data-scale-max="l"
         data-due = '2017-01-01T00:00:00'
         data-now = <?= date('Y-m-d',time()).'T'.date('H:i:s',time()); ?>
         data-face="flip color-light corners-round shadow-soft" style="font-size: 50px !important;width: 100% !important;">
          <div id="thongbao"></div>
    </div>
   
    </div>
</div>
  </div>
  