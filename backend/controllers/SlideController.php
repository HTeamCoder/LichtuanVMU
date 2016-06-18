<?php

namespace backend\controllers;

use common\models\hinhanh;
use Yii;
use common\models\slide;
use common\models\SlideSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
use yii\web\UploadedFile;
/**
 * SlideController implements the CRUD actions for slide model.
 */
class SlideController extends Controller
{
    public function behaviors()
    {
        return [
         'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],
            ],
        ];
    }

    /**
     * Lists all slide models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new slidesearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single slide model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
            'hinhanh'=> new hinhanh(),
        ]);
    }

    /**
     * Creates a new slide model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new slide();
        $hinhanh = new hinhanh();
        if ($model->load(Yii::$app->request->post())) {
            $hinhanh->file = UploadedFile::getInstances($hinhanh, 'file');
            if ($hinhanh->file == null)
            {
                $thongbao = 'Hãy tải file lên';
                    return $this->render('create', [
                    'model' => $model,
                    'hinhanh' => $hinhanh,
                    'thongbao'=>$thongbao
                ]);
            }
            if ($model->active == 'hienthi')
            {
                $slide_active = slide::findOne(['active'=>'hienthi']);
                if ($slide_active != null)
                {
                    $slide_active->active = 'khonghienthi';
                    $slide_active->update(false);
                }
            }
            $model->donvi_id = Yii::$app->user->identity->donvi_id;
            $model->thoigianhienthi = count($hinhanh->file)*5000;
            if ($model->save())
            {
                \Yii::$app->session->addFlash('success', 'Tạo slide thành công');
                return $this->redirect(['index']);
            }else
            {
                 \Yii::$app->session->addFlash('danger', 'Tạo slide thất bại');
                 return $this->redirect(['index']);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
                'hinhanh' => $hinhanh,
            ]);
        }
    }

    /**
     * Updates an existing slide model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $thoigianhienthi = '';
        $model = $this->findModel($id);
        $hinhanh = new hinhanh();
        $hinhanh1 = hinhanh::findAll(['slide_id'=>$id]);
        $soluonganh = count(hinhanh::findAll(['slide_id'=>$id]));
        foreach($hinhanh1 as $item){
            $thoigianhienthi += $item->tocdohienthi;
        }
        if ($model->load(Yii::$app->request->post())) {
            $hinhanh->file = UploadedFile::getInstances($hinhanh, 'file');
            if ($hinhanh->file == null && $hinhanh1 == null)
            {
                $thongbao = 'Hãy tải file lên';
                    return $this->render('update', [
                    'model' => $model,
                    'hinhanh' => $hinhanh,
                    'thongbao'=>$thongbao
                ]);
            }
            if ($model->active == 'hienthi')
            {
                $slide_active = slide::findOne(['active'=>'hienthi']);
                if ($slide_active != null && $slide_active->id != $id)
                {
                    $slide_active->active = 'khonghienthi';
                    $slide_active->update();
                    unset($slide_active);// không cho chạy after save
                }
            }
            $model->donvi_id = Yii::$app->user->identity->donvi_id;
            $model->thoigianhienthi = count($hinhanh->file)*5000 + $thoigianhienthi;

           if ($model->save())
            {
                \Yii::$app->session->addFlash('success', 'Cập nhật slide thành công');
                return $this->redirect(['index']);
            }else
            {
                 \Yii::$app->session->addFlash('danger', 'Cập nhật slide thất bại');
                 return $this->redirect(['index']);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
                'hinhanh' => $hinhanh,
            ]);
        }
    }
    /**
     * Deletes an existing slide model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
         \Yii::$app->session->addFlash('success', 'Xóa slide thành công');
        return $this->redirect(['index']);
    }

    /**
     * Finds the slide model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return slide the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = slide::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    public function actionDeleteimage($id,$slide_id)
    {
        if (isset($id)&&isset($slide_id)&&is_numeric($id)&&is_numeric($slide_id))
        {

            $time = 0;
            $hinhanh = new hinhanh();
            $soluonganh = count(hinhanh::findAll(['slide_id'=>$slide_id]));
            $anh = $hinhanh->findOne(['id'=>$id,'slide_id'=>$slide_id]);
            if ($anh)
            {
                if (file_exists($anh->path))
                    unlink($anh->path);
                $anh->delete();
            }
            $hinhanhs = hinhanh::findAll(['slide_id'=>$slide_id]);
            foreach($hinhanhs as $item){
                $time += $item->tocdohienthi;
            }
            $slide = slide::findOne($slide_id);
            $slide->thoigianhienthi = $time;
            $slide->update(false);
        }
        return $this->redirect(['update', 'id' => $slide_id]);
    }
    public function actionConfigtime(){
        $time = 0;
        $hinhanh = new hinhanh();
        $hinhanhs = array();
        $id = '';
        if(isset($_GET['id'])) {
            $id = $_GET['id'];
            $hinhanhs = hinhanh::find()->where(['slide_id' => $id])->all();
            return $this->render('time',array('hinhanhs'=>$hinhanhs,'hinhanh'=>$hinhanh,'id'=>$id));
        }
        if ($hinhanh->load(Yii::$app->request->post()))  {
            $id = $_POST['id'];
            $hinhanhs = hinhanh::find()->where(['slide_id' => $id])->all();
            $giatris = $_POST['hinhanh']['tocdohienthi'];
            $i=0;
            foreach($hinhanhs as $hinhanh)
            {
                $hinhanh->tocdohienthi = $giatris[$i]*1000;
                $time += $giatris[$i]*1000;
                $i++;
                $hinhanh->save(false);
            }
            $slide = slide::findOne($id);
            $slide->thoigianhienthi = $time;
            $slide->update(false);
             \Yii::$app->session->addFlash('success', 'Cập nhật thời gian cho từng ảnh trong slide thành công');
            return $this->redirect(['index']);
        }

    }
}
