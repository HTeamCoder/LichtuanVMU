<?php

namespace backend\controllers;

use Yii;
use common\models\tintuc;
use common\models\TintucSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\filters\AccessControl;
/**
 * TintucController implements the CRUD actions for tintuc model.
 */
class TintucController extends Controller
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
     * Lists all tintuc models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new TintucSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single tintuc model.
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
     * Creates a new tintuc model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new tintuc();
        $model->donvi_id = Yii::$app->user->identity->donvi_id;
        $model->thoigian = time();
        if ($model->load(Yii::$app->request->post())) {
            if ($model->active == 'hienthi')
            {
                $tintuc_active = tintuc::findOne(['active'=>'hienthi']);
                if ($tintuc_active != null)
                {
                    $tintuc_active->active = 'khonghienthi';
                    $tintuc_active->update(false);
                }
            }
            if ($model->save(false))
            {
                \Yii::$app->session->addFlash('success', 'Tạo mới thông báo thành công');
                return $this->redirect(['index']);
            }
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing tintuc model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $model->thoigian = time();
        if ($model->load(Yii::$app->request->post())) {
             if ($model->active == 'hienthi')
            {
                $tintuc_active = tintuc::findOne(['active'=>'hienthi']);
                if ($tintuc_active != null)
                {
                    $tintuc_active->active = 'khonghienthi';
                    $tintuc_active->update();
                }
            }
            if ($model->save(false))
            {
                \Yii::$app->session->addFlash('success', 'Cập nhật thông báo thành công');
                return $this->redirect(['index']);
            }
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing tintuc model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();
        \Yii::$app->session->addFlash('success', 'Xóa thông báo thành công');
        return $this->redirect(['index']);
    }

    /**
     * Finds the tintuc model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return tintuc the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = tintuc::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
