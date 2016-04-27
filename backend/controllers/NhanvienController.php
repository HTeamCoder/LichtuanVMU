<?php

namespace backend\controllers;

use Yii;
use common\models\nhanvien;
use common\models\donvi;
use common\models\trinhdo;
use common\models\NhanvienSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
/**
 * NhanvienController implements the CRUD actions for nhanvien model.
 */
class NhanvienController extends Controller
{
    public function behaviors()
    {
        return [
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
        $searchModel = new NhanvienSearch();
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
            $path = $model->file->tempName;
            $data = \moonland\phpexcel\Excel::widget([
                'mode' => 'import',
                'fileName' => $path,
                'setFirstRecordAsKeys' => false, // if you want to set the keys of record column with first record, if it not set, the header with use the alphabet column on excel.
                'setIndexSheetByName' => false, // set this if your excel data with multiple worksheet, the index of array will be set with the sheet name. If this not set, the index will use numeric.
                'getOnlySheet' => 'Sheet1', // you can set this property if you want to get the specified sheet from the excel data with multiple worksheet.
            ]);
            foreach($data as $key=>$value) {
                if ($key>14&&$value['A']!=null) {
                    $nhanvien = new nhanvien();
                    if($value['E']!=null)
                    $trinhdo = trinhdo::findOne(['tentrinhdo' => $value['E']]);
                    if (is_null($trinhdo)) {
                        $trinhdo = new trinhdo();
                        $trinhdo->tentrinhdo = $value['E'];
                        $trinhdo->save();
                    }
                    if($value['G']!=null)
                    $donvi = donvi::findOne(['tendonvi' => $value['G']]);
                    if (is_null($donvi)) {
                        $donvi = new donvi();
                        $donvi->tendonvi = $value['G'];
                        $donvi->save();
                    }
                    $nhanvien->ten = $value['B'];
                    $nhanvien->donvi_id = $donvi->id;
                    $nhanvien->trinhdo_id = $trinhdo->id;
                    $nhanvien->ngaysinh = (is_null($value['C']))?date('Y-m-d',strtotime(str_replace('-','/',$this->convert_date($value['D'])))):date('Y-m-d',strtotime(str_replace('-','/',$this->convert_date($value['C']))));
                    $nhanvien->ngach = $value['F'];
                    $nhanvien->ghichu = $value['I'];
                    $nhanvien->hesoluong = $value['H'];
                    $nhanvien->gioitinh = (is_null($value['C']))?'nu':'nam';
                    $nhanvien->save();
                }
            }
            \Yii::$app->session->addFlash('success', 'Import file dữ liệu thành công');
            return $this->redirect(['index', 'id' => $model->id]);
        }
        else {
            return $this->render('import', [
                'model' => $model,
            ]);
        }
    }
    private function convert_date($date)
    {
        $datebegin = substr($date, 0,6);
        $dateend = substr($date, 6,2);
        $yn=date("y");
        if ($dateend > $yn && $dateend < 100)   
        {
            $year2=19;
        }
        elseif ($dateend <= $yn)
        {
            $year2=20;
        }
        return $datebegin.$year2.$dateend;
    }
}

