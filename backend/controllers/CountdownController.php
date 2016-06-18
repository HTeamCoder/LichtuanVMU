<?php

namespace backend\controllers;

use Yii;
use common\models\countdown;
use common\models\CountdownSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CountdownController implements the CRUD actions for countdown model.
 */
class CountdownController extends Controller
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
     * Lists all countdown models.
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
        $searchModel = new CountdownSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single countdown model.
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
     * Creates a new countdown model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new countdown();
        if (Yii::$app->request->isAjax &&$model->load($_POST))
        {
            Yii::$app->response->format = 'json';
            return \yii\widgets\ActiveForm::validate($model);
        }
        $model->donvi_id = Yii::$app->user->identity->donvi_id;
        if ($model->load(Yii::$app->request->post())) {
            if ($model->active == 'hienthi')
            {
                $countdown_active = countdown::findOne(['active'=>'hienthi']);
                if ($countdown_active != null)
                {
                    $countdown_active->active = 'khonghienthi';
                    $countdown_active->update(false);
                }
            }
            if ($model->save())
            {
                \Yii::$app->session->addFlash('success', 'Tạo mới sự kiện thành công');
                return $this->redirect(['index']);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing countdown model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        if (Yii::$app->request->isAjax &&$model->load($_POST))
        {
            Yii::$app->response->format = 'json';
            return \yii\widgets\ActiveForm::validate($model);
        }
        if ($model->load(Yii::$app->request->post())) {
            if (date('d-m-Y H:i',time()) < Yii::$app->request->post('countdown')['thoigiandienra'])
                $model->dadienra = 0;
            if ($model->active == 'hienthi')
            {
                $countdown_active = countdown::findOne(['active'=>'hienthi']);
                if ($countdown_active != null)
                {
                    $countdown_active->active = 'khonghienthi';
                    $countdown_active->update(false);
                }
            }
            if($model->save())
            {
                \Yii::$app->session->addFlash('success', 'Cập nhật sự kiện thành công');
                return $this->redirect(['index']);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing countdown model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
        \Yii::$app->session->addFlash('success', 'Xóa sự kiện thành công');
        return $this->redirect(['index']);
    }

    /**
     * Finds the countdown model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return countdown the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = countdown::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
