<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php'),
    require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'language' => 'vi',
    'basePath' => dirname(__DIR__),
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [],
    'components' => [
        'user' => [
            'identityClass' => 'common\models\User',
            'enableAutoLogin' => true,
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],
        
        'urlManager' => [
            'class' => 'yii\web\UrlManager',
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
                'trang-chu' => 'site/index',
                'thong-bao' => 'tintuc/index',
                'tuan-cong-tac' => 'tuan/index',
                'can-bo' => 'nhanvien/index',
                'tin-tuc' => 'thongbao/index',
                'slide-show' => 'slide/index',
                'sinh-nhat' => 'nhanvien/birthday',
                'su-kien' => 'countdown/index',
                'kho-anh' => 'khoanh/index',
                'thanh-vien' => 'nhanvien/member',
                'doi-mat-khau' => 'nhanvien/changepassword',
                'dang-nhap' => 'site/login',
                'thong-bao/them-moi' => 'tintuc/create',
                'thong-bao/cap-nhat/<id:\d+>' => 'tintuc/update',
                'thong-bao/<id:\d+>' => 'tintuc/view',
                'thong-bao/xoa/<id:\d+>' => 'tintuc/delete',
                'tuan-cong-tac/them-moi' => 'tuan/create',
                'tuan-cong-tac/cap-nhat/<id:\d+>' => 'tuan/update',
                'tuan-cong-tac/<id:\d+>' => 'tuan/view',
                'tuan-cong-tac/xoa/<id:\d+>' => 'tuan/delete',
                'can-bo/them-moi' => 'nhanvien/create',
                'can-bo/cap-nhat/<id:\d+>' => 'nhanvien/update',
                'can-bo/<id:\d+>' => 'nhanvien/view',
                'can-bo/xoa/<id:\d+>' => 'nhanvien/delete',
                'can-bo/cap-tai-khoan/<id:\d+>' => 'nhanvien/account',
                'can-bo/khoi-phuc-mat-khau/<id:\d+>' => 'nhanvien/resetpassword',
                'can-bo/xoa-tai-khoan/<id:\d+>' => 'nhanvien/deleteaccount',
                'tin-tuc/them-moi' => 'thongbao/create',
                'tin-tuc/cap-nhat/<id:\d+>' => 'thongbao/update',
                'tin-tuc/<id:\d+>' => 'thongbao/view',
                'tin-tuc/xoa/<id:\d+>' => 'thongbao/delete',
                'slide-show/them-moi' => 'slide/create',
                'slide-show/cap-nhat/<id:\d+>' => 'slide/update',
                'slide-show/<id:\d+>' => 'slide/view',
                'slide-show/xoa/<id:\d+>' => 'slide/delete',
                'slide-show/thoi-gian-hien-thi/<id:\d+>' => 'slide/configtime',
                'su-kien/them-moi' => 'countdown/create',
                'su-kien/cap-nhat/<id:\d+>' => 'countdown/update',
                'su-kien/<id:\d+>' => 'countdown/view',
                'su-kien/xoa/<id:\d+>' => 'countdown/delete',
                'kho-anh/them-moi' => 'khoanh/create',
                'kho-anh/cap-nhat/<id:\d+>' => 'khoanh/update',
                'kho-anh/<id:\d+>' => 'khoanh/view',
                'kho-anh/xoa/<id:\d+>' => 'khoanh/delete',
            ],
            'suffix'=>'.html'
        ],
        
    ],
    'params' => $params,
];
