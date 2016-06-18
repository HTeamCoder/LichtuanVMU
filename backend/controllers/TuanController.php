<?php

namespace backend\controllers;

use Yii;
use common\models\tuan;
use common\models\TuanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use common\components\read;
/**
 * TuanController implements the CRUD actions for tuan model.
 */
class TuanController extends Controller
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
     * Lists all tuan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TuanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single tuan model.
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
     * Creates a new tuan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new tuan();
        $model->file = UploadedFile::getInstance($model,'file');
        if ($model->file) {
            $word = new read();
            $sukien = $word->toWord($model->file->tempName);
            $tuan = $word->toText($model->file->tempName);
             if (!(is_null(tuan::findOne(['tuannamhoc'=>$tuan['tuannamhoc'],'tuannam'=>$tuan['tuannam']]))))
             {
                 \Yii::$app->session->addFlash('warning', 'Lịch <strong>'.$tuan['tuannamhoc'].'</strong> đã tồn tại và không thể import thêm');
                return $this->redirect(['index']);
             };
            $model->tuannam = $tuan['tuannam'];
            $model->tuannamhoc = $tuan['tuannamhoc'];
            $model->tungay = $tuan['tungay'];
            $model->denngay = $tuan['denngay'];
            $model->sukien = $sukien;
            $model->thoigianhienthi = Yii::$app->request->post('tuan')['thoigianhienthi'];
            $model->save();
            \Yii::$app->session->addFlash('success', 'Import file dữ liệu lịch tuần thành công');
            return $this->redirect(['index']);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing tuan model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionTime($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            \Yii::$app->session->addFlash('success', 'Cập nhật thời gian hiển thị lịch tuần thành công');
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save(false)) {
            \Yii::$app->session->addFlash('success', 'Cập nhật lịch tuần thành công');
            return $this->redirect(['index']);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }
    /**
     * Deletes an existing tuan model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
        \Yii::$app->session->addFlash('success', 'Xóa lịch tuần thành công');
        return $this->redirect(['index']);
    }

    /**
     * Finds the tuan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return tuan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = tuan::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
    
}
