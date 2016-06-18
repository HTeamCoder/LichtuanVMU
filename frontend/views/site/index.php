<?php
use yii\widgets\Pjax;
use yii\helpers\Html;
/* @var $this yii\web\View */
$this->title = 'Bảng thông tin điện tử VMU';
?>
  <div class="content">
         <?php if ($thongbaos != null ): ?>
        <div class="row">
            <div class="col-lg-12 .col-4k-12 .col-fhd-12 .col-xlg-12">
                <div class="page-header">    
                    <div class="TickerNews theme5" id="T5">
                          <div class="ti_wrapper">
                          <div id="clock" class="text-center sibling"></div>
                            <div class="ti_slide">
                              <div class="ti_content">
                                <?php foreach($thongbaos as $thongbao): ?>
                                     <div class="ti_news"><li><a href="#" title="<?= $thongbao['noidung']; ?>"><?= $thongbao['noidung']; ?></a></li>
                                    </div>
                                <?php endforeach; ?>
                              </div>
                            </div>
                          </div>
                        </div>
                </div>
            </div>
        </div>
         <?php endif; ?>
        <div class="row">
            <div class="col-md-12 .col-4k-12 .col-fhd-12 .col-xlg-12" >
                <div id="myCarousel" class="carousel slide carousel-fade">
                    <div class="carousel-inner">
                        <div class="active item" data-interval="<?= ($lichtuans != null)?$lichtuans->thoigianhienthi:'60000' ?>" id="lichtuancongtac" status="0">
                            <?php if ($lichtuans != null){
                                  echo $lichtuans->sukien;
                              } ?>     
                        </div>

                        <div class="item" data-interval="<?= ($countdown != null)?$countdown['thoigianhienthi']:'60000' ?>" id="sukien">
                            
                            <div class="event" data-time="<?= ($countdown!=null)?$countdown['thoigiandienra']:''; ?>" ma="">
                                <div id="thongbao" style="font-size:30px;"><?= ($countdown!=null)?$countdown['tieude']:''; ?></div>
                                <div class="clock"></div>
                            </div>
                
                        </div>
                        <div class="item" data-interval="<?= ($tintucs!=null)?$tintucs['thoigianhienthi']:'60000'; ?>" id="tintuc" status="0">
                           
                             <p class="text-center lead" id="tieude">
                             <?php 
                                echo $tintucs['tieude'];
                              ?>
                            </p>
                            <div id="noidung" class="marquee-vert" data-gap=0 data-direction="up" data-duplicated="true" data-speed="40000" >
                              <?=
                                  ($tintucs['noidung']);
                              ?>
                            </div>
                           
                        </div>
                         <div class="item" data-interval="<?= ($slide!=null)?$slide['thoigianhienthi']:'60000'; ?>" id="slide">
                           
    			                  <div class="cycle-slideshow" data-cycle-fx="fade" data-cycle-caption-plugin="caption2"
                              data-cycle-overlay-fx-sel=">div" data-cycle-timeout=5000 id="slideshow"
                            >
                                <div class="cycle-overlay" style="display: block;" data-cycle-fx="fade">Redwoods Muir Woods National Monument</div>
                            <?php
                                if($slide != null)
                                foreach($slide->hinhanhs as $hinhanh)
                                {
                                  echo '<img src="'.Yii::$app->urlManagerFrontend->baseUrl.'/'.$hinhanh['path'].'" data-cycle-title="" data-cycle-desc="'.$slide['tieude'].'" class="cycle-slide cycle-slide-active">';
                                }
                            ?> 
                          </div>
                       
                        </div>
                        <div class="item" data-interval="<?= ($sinhnhats!=null)?$sinhnhats['thoigianhienthi']:'60000'; ?>" id="sinhnhat">
                                <div class="col-md-6">
                                  <img src="<?= Yii::$app->request->baseUrl; ?>/img/hpbd.png" alt="" style="width: 100%;position:relative;" id="pic-hpbd">
                                </div>
                                <div class="col-md-6">
                                    <div class="thongtinsinhnhat">
                                    <p class="text-center canbo">Chúc Mừng Sinh Nhật</p>
                                    <div class="lead text-center ten">
                                      <?php if ($sinhnhats != null): ?>
                                          <?php foreach($sinhnhats as $sinhnhat): ?>
                                              <?= ($sinhnhat['ten']!='')?'<p>'.$sinhnhat['ten'].'('.$sinhnhat['tuoi'].' tuổi)'.'-'.$sinhnhat['donvi'].'</p>':''; ?>
                                          <?php endforeach; ?>
                                      <?php endif; ?>
                                    </div>       
                                </div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>