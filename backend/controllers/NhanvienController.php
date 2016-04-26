<?php

namespace backend\controllers;

use common\models\donvi;
use common\models\trinhdochuyenmon;
use Yii;
use common\models\nhanvien;
use common\models\nhanviensearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use moonland\phpexcel\Excel;
use yii\filters\AccessControl;
/**
 * NhanvienController implements the CRUD actions for nhanvien model.
 */
class NhanvienController extends Controller
{
    public function behaviors()
    {
        return [
//            'access' => [
//                'class' => AccessControl::className(),
//                'rules' => [
//                    [
//                        'actions' => ['login', 'error'],
//                        'allow' => true,
//                    ],
//                    [
//                        'actions' => ['logout', 'index'],
//                        'allow' => true,
//                        'roles' => ['*'],
//                    ],
//                ],
//            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['post'],
                ],

            ],
        ];
    }

    /**
     * Lists all nhanvien models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new nhanviensearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single nhanvien model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new nhanvien model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new nhanvien();
        if($model->load(Yii::$app->request->post())){
            var_dump($model);
            exit;
        }
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing nhanvien model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing nhanvien model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the nhanvien model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return nhanvien the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = nhanvien::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    public function actionImport(){
        $model = new nhanvien();

        $model->file = UploadedFile::getInstance($model,'file');


        if($model->file) {
            $model->file->saveAs('uploads/excel/' . $model->file->name);
            $path = 'uploads/excel/' . $model->file->name;
            $data = \moonland\phpexcel\Excel::widget([
                'mode' => 'import',
                'fileName' => $path,
                'setFirstRecordAsKeys' => false, // if you want to set the keys of record column with first record, if it not set, the header with use the alphabet column on excel.
                'setIndexSheetByName' => false, // set this if your excel data with multiple worksheet, the index of array will be set with the sheet name. If this not set, the index will use numeric.
                'getOnlySheet' => 'Sheet1', // you can set this property if you want to get the specified sheet from the excel data with multiple worksheet.
            ]);
            foreach($data as $value) {
                if (gettype($value['A'])=='double' && gettype($value['B'])=='string') {
                    $nhanvien = new nhanvien();
                    $trinhdo = trinhdochuyenmon::findOne(['tentrinhdochuyenmon' => $value['E']]);
                    if (!isset($trinhdo)) {
                        $trinhdo = new trinhdochuyenmon();
                        $trinhdo->tentrinhdochuyenmon = $value['E'];
                        $trinhdo->save();
                        $nhanvien->trinhdochuyenmon_id = $trinhdo->id;
                    }
                    $donvi = donvi::findOne(['tendonvi' => $value['G']]);
                    if (!isset($donvi)) {
                        $donvi = new donvi();
                        $donvi->tendonvi = $value['G'];
                        $donvi->save();
                        $nhanvien->donvi_id = $donvi->id;
                    }
                    $nhanvien->ten = $value['B'];
                    $nhanvien->donvi_id = $donvi->id;
                    $nhanvien->trinhdochuyenmon_id = $trinhdo->id;

                    if (isset($value['C'])) {
                        $namsinh = substr($value['C'],6,2);
                        $ngaysinh = substr($value['C'],0,2);
                        $thangsinh = substr($value['C'],3,2);
                        $nhanvien->ngaysinh = '19'.$namsinh.'-'.$ngaysinh.'-'.$thangsinh;
                        $nhanvien->gioitinh = 1;
                    } else {
                        $namsinh = substr($value['D'],6,2);
                        $ngaysinh = substr($value['D'],0,2);
                        $thangsinh = substr($value['D'],3,2);
                        $nhanvien->ngaysinh ='19'.$namsinh.'-'.$ngaysinh.'-'.$thangsinh;
                        $nhanvien->gioitinh = 0;
                    }
                    $nhanvien->save();
                }
            }
            return $this->redirect(['index', 'id' => $model->id]);
        }
        else {
            return $this->render('import', [
                'model' => $model,
            ]);
        }
    }
}
