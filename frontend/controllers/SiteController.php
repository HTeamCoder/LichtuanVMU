<?php
namespace frontend\controllers;

use Yii;
use common\models\LoginForm;
use common\models\thongbao;
use common\models\video;
use common\models\slide;
use common\models\sinhnhat;
use common\models\tintuc;
use common\models\hinhanh;
use common\models\countdown;
use common\models\tuan;
use common\models\nhanvien;
use yii\base\InvalidParamException;
use yii\web\BadRequestHttpException;
use yii\web\Controller;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\helpers\Json;
/**
 * Site controller
 */
class SiteController extends Controller
{
    /**
     * @inheritdoc
     */

    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout', 'signup'],
                'rules' => [
                    [
                        'actions' => ['signup'],
                        'allow' => true,
                        'roles' => ['?'],
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return mixed
     */
    public function actionIndex()
    {
        $event = countdown::find(['dadienra'=>0])->all();
        foreach($event as $key=>$val)
        {
            if (strtotime($val['thoigiandienra'])<time())
            {
                $sukien = countdown::findOne($val['id']);
                $sukien->dadienra = 1;
                $sukien->active = 'khonghienthi';
                $sukien->update(false);
            }
        }
        $thongbao = thongbao::findAll(['active'=>'hienthi']);
        $slide = slide::findOne(['active'=>'hienthi']);
        $lichtuans = tuan::find()->orderBy('id DESC')->one();
        return $this->render('index',['thongbaos'=>$thongbao,'lichtuans'=>$lichtuans,'video'=>Json::decode($this->actionVideo()),'tintucs'=>Json::decode($this->actionTintuc()),
            'slide'=>$slide,'countdown'=>Json::decode($this->actionSukien()),'sinhnhats'=>Json::decode($this->actionSinhnhat())]);
    }

    /**
     * Logs in a user.
     *
     * @return mixed
     */
    public function actionLogin()
    {
        if (!\Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->goBack();
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Logs out the current user.
     *
     * @return mixed
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();

        return $this->goHome();
    }

    public function actionLichtuan()
    {
        $lichtuan = tuan::find()->orderBy('id DESC')->one();
        return Json::encode($lichtuan);
    }
    public function actionThongbao()
    {
        $thongbao = thongbao::findAll(['active'=>'hienthi']);
        return Json::encode($thongbao);
    }
    public function actionVideo()
    {
        $video = video::find()->orderBy('id DESC')->one();
        return Json::encode($video);
    }
    public function actionSlide()
    {
        $slides = slide::findOne(['active'=>'hienthi']);
        foreach($slides->hinhanhs as $key=>$val)
        {
            $slide[$key]['tieude'] = $slides->tieude;
            $slide[$key]['hinhanh'] = Yii::$app->urlManagerFrontend->baseUrl.'/'.$val->path;
            $slide[$key]['thoigian'] = $slides->thoigianhienthi;
            $slide[$key]['thoigianmoianh'] = $val->tocdohienthi;
        }
        return Json::encode($slide);
    }
    public function actionTintuc()
    {
        $tintuc = tintuc::findOne(['active'=>'hienthi']);
        return Json::encode($tintuc);
    }
    public function actionSukien()
    {
        if (isset($_POST['dataajax']))
        {
            $sukien = countdown::findOne($_POST['dataajax']);
            $sukien->dadienra = 1;
            $sukien->active = 'khonghienthi';
            $sukien->update();
        }
        $sukien = countdown::find()->where(['dadienra'=>0,'active'=>'hienthi'])->one();
        if (!is_null($sukien))
        $sukien->thoigiandienra = date('Y-m-d',strtotime($sukien->thoigiandienra)).' '.date('H:i:s',strtotime($sukien->thoigiandienra));

        return Json::encode($sukien);
    }
    public function actionSinhnhat()
    {
        $time = sinhnhat::find()->one();
        $sinhnhat = nhanvien::find()->all();
        foreach ($sinhnhat as $key => $value) {
            if (date('d-m',time()) == date('d-m',strtotime($value['ngaysinh'])))
            {
                $canbo[$key]['ten'] = $value['ten'];
                $canbo[$key]['gioitinh'] = $value['gioitinh'];
                $canbo[$key]['trinhdo'] =$value['trinhdo']->tentrinhdo;
                $canbo[$key]['donvi'] =$value['donvi']->tendonvi;
                $canbo[$key]['ngaysinh'] =$value['ngaysinh'];
                $canbo[$key]['tuoi'] = intval(date('Y',time()) - date('Y',strtotime($value['ngaysinh'])));
                 $canbo['thoigianhienthi'] = $time->thoigianhienthi;
            }
        }
        return Json::encode((isset($canbo))?$canbo:null);
    }
}
