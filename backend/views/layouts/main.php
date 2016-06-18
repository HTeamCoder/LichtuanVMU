<?php

/* @var $this \yii\web\View */
/* @var $content string */

use backend\assets\AppAsset;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
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

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => 'Dashboard VMU System',
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    if (Yii::$app->user->isGuest) {
         $menuItems[] = '';
    } else {
        $menuItems = [
        ['label' => 'Tổng quan', 'url' => ['/site/index']],
        ['label' => 'Thông báo', 'url' => ['/tintuc/index']],
        ['label' => 'Tuần công tác', 'url' => ['/tuan/index']],
        // ['label' => 'Lịch tuần', 'url' => ['/sukien/index']],
        ['label' => 'Cán bộ', 'url' => ['/nhanvien/index']],
    ];
         $menuItems[] = ['label' => 'Danh mục', 'items'=>[
            [
                'label' => 'Tin tức',
                'url' => ['/thongbao/index']
            ],
            [
                'label' => 'Slide',
                'url' => ['/slide/index']
            ],
            [
                'label' => 'Sinh nhật',
                'url' => ['/nhanvien/birthday']
            ],
            [
                'label' => 'Sự kiện',
                'url' => ['/countdown/index']
            ],
            [
                'label' => 'Kho ảnh nền sinh nhật',
                'url' => ['/khoanh/index']
            ],
        ]
        ];
        if (Yii::$app->user->identity->roles == 'admin' || Yii::$app->user->identity->roles == 'manager')
        $menuItems[] = ['label' => 'Thành viên', 'url' => ['/nhanvien/member']];
        $menuItems[] = ['label' => Yii::$app->user->identity->ten, 'items'=>[
            [
                'label' => 'Đổi mật khẩu',
                'url' => ['/nhanvien/changepassword']
            ],
            [
                'label' => 'Đăng xuất',
                'url' => ['/site/logout'],
                'linkOptions' => ['data-method' => 'post']
            ],
        ]

        ];
      
    }
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => $menuItems,
    ]);
    NavBar::end();
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; H-Team <?= date('Y') ?></p>

        <p class="pull-right"><?= Yii::powered() ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
<script>
function complete() {
       $('#thongbao').html('Welcome to Infoboard Vimaru System');
    }
</script>
<script>
  var soons = document.querySelectorAll('.soon');
  for(var i=0;i<soons.length;i++) {
      Soon.create(soons[i]);
  }
</script>
</body>
</html>
<?php $this->endPage() ?>
