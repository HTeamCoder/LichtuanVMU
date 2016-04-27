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
        'css/sliderengine/amazingslider-1.css',
    ];
    public $js = [
        'js/jquery.tickerNews.min.js',
        'js/jquery.vticker-min.js',
        'js/sliderengine/amazingslider.js',
        'js/sliderengine/initslider-1.js',
        'js/bootstrap.min.js',
    ];
    public $depends = [
        'yii\web\YiiAsset',
        'yii\bootstrap\BootstrapAsset',
    ];
}
