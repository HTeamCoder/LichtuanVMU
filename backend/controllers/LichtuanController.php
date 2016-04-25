<?php

namespace backend\controllers;

use common\models\sukien;
use Yii;
use common\models\lichtuan;
use common\models\LichtuanSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * LichtuanController implements the CRUD actions for lichtuan model.
 */
class LichtuanController extends Controller
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
     * Lists all lichtuan models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new LichtuanSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single lichtuan model.
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
     * Creates a new lichtuan model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new lichtuan();

        if ($model->load(Yii::$app->request->post())) {
            $model = UploadedFile::getInstance($model, 'file');
//            var_dump($model);
//            exit;      var_dump($model);
//            exit;
            $file = $model->tempName;

            if ($file) {
                $content = '';
                $striped_content = "";
                $zip = zip_open($file);
                if (!$zip || is_numeric($zip)) return false;
                while ($zip_entry = zip_read($zip)) {
                    if (zip_entry_open($zip, $zip_entry) == FALSE) continue;
                    if (zip_entry_name($zip_entry) != "word/document.xml") continue;
                    $content .= zip_entry_read($zip_entry, zip_entry_filesize($zip_entry));
                    zip_entry_close($zip_entry);
                }// end while
                zip_close($zip);
                $content = str_replace('</w:r></w:p></w:tc><w:tc>', " ", $content);
                $content = str_replace('</w:r></w:p>', "\r\n", $content);
                $striped_content = strip_tags($content);
                //echo nl2br($content);
                $arr = array("Thứ Hai", "Thứ Ba", "Thứ Tư", "Thứ Năm", "Thứ Sáu", "Thứ Bảy", "Chủ nhật", "Ghi chú:", "HIỆU TRƯỞNG");
                $replace = str_replace($arr, $arr[0], $striped_content);
                $explode = explode($arr[0], $replace);

                //echo $explode[0];
                $arr2=array("TUẦN","TRƯỜNG","Từ ngày", "đến ngày",")");
                $rp2=str_replace($arr2,$arr2[0],$explode[0]);
                $ex2=explode($arr2[0],$rp2);


                $tungay = date_parse_from_format('m-d-Y',$ex2[4]);
                $denngay = date_parse_from_format('m-d-Y',$ex2[5]);
                $lichtuan = new lichtuan();

                $lichtuan->tungay=date('Y-m-d',strtotime($tungay['year'].'-'.$tungay['day'].'-'.$tungay['month']));
                $lichtuan->dengnay=date('Y-m-d',strtotime($denngay['year'].'-'.$denngay['day'].'-'.$denngay['month']));
                $lichtuan->tuantheonam="LỊCH TUẦN".$ex2[1];
                $lichtuan->tuannamtheonamhoc="Lịch Tuần".$ex2[2];
                $lichtuan->save(false);

                for($i=0;$i<7;$i++){
                    $str=substr($explode[$i+1],7);
                    $str2=substr($explode[$i+1],0,7);
//                    echo nl2br($arr[$i].$str2."<br>".$str);

                    $sukien = new sukien();
                    $sukien->thu=$arr[$i];
                    $sukien->ngay=$str2;
                    $sukien->noidung=$str;
                    $sukien->lichtuan_id=$lichtuan->id;
                    $sukien->save(false);

                }

            }
            return $this->redirect(['index']);

        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing lichtuan model.
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
     * Deletes an existing lichtuan model.
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
     * Finds the lichtuan model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return lichtuan the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = lichtuan::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
