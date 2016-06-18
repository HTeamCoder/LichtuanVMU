<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace frontend\assets;

use yii\web\AssetBundle;

/**
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class AppAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        'css/bootstrap.min.css',
        'css/base.css',
        'css/theme.css',
        'css/portfolio-item.css',
        'css/style.css',
        'css/flipclock.css'
    ];
    public $js = [
        'js/bootstrap.min.js',
        'js/my.js',
        'js/jquery.cycle2.js',
        'js/jquery.cycle2.caption2.min.js',
        'js/jquery.tickerNews.min.js',
        'js/flipclock.js',
        'js/jquery.marquee.js'
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
