<?php

namespace backend\controllers;

use Yii;
use common\models\nhanvien;
use common\models\sinhnhat;
use common\models\donvi;
use common\models\trinhdo;
use common\models\NhanvienSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;
use yii\filters\AccessControl;
use backend\models\PasswordResetRequestForm;
use backend\models\ResetPasswordForm;
use backend\models\SignupForm;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use yii\data\ArrayDataProvider;
/**
 * NhanvienController implements the CRUD actions for nhanvien model.
 */
class NhanvienController extends Controller
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

     public function actionMember()
    {
        if (Yii::$app->user->identity->roles == 'user')
        {
             \Yii::$app->session->addFlash('danger', 'Bạn không có quyền sử dụng chức năng này');
            return $this->redirect(['index']);
        }
        $searchModel = new NhanvienSearch();
        $dataProvider = $searchModel->search_user(Yii::$app->request->queryParams);
        return $this->render('nguoidung', [
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

    public function actionBirthday()
    {
        $sinhnhat = nhanvien::find()->all();
        $canbo = [];
        foreach ($sinhnhat as $key => $value) {
            if (date('d-m',time()) == date('d-m',strtotime($value['ngaysinh'])))
            {
                $canbo[$key]['ten'] = $value['ten'];
                $canbo[$key]['gioitinh'] = $value['gioitinh'];
                $canbo[$key]['trinhdo'] =$value['trinhdo']->tentrinhdo;
                $canbo[$key]['donvi'] =$value['donvi']->tendonvi;
                $canbo[$key]['ngaysinh'] =$value['ngaysinh'];
                $canbo[$key]['tuoi'] = intval(date('Y',time()) - date('Y',strtotime($value['ngaysinh'])));
            }
        }
        $provider = new ArrayDataProvider([
        'allModels' => $canbo,
        'pagination' => ['pageSize' => 5]
        ]);
        return $this->render('sinhnhat', [
            'dataProvider' => $provider,
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

        if ($model->load(Yii::$app->request->post()) && $model->save(false)) {
            \Yii::$app->session->addFlash('success', 'Tạo mới cán bộ thành công');
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }
    public function actionTime()
    {
        $model = new sinhnhat();
        $sinhnhat = $model->find()->one();
        if ($model->load(Yii::$app->request->post())) {
            if ($sinhnhat != null)
            {
                $sinhnhat->thoigianhienthi = $model->thoigianhienthi*1000;
                $sinhnhat->update();
            }else
            {
                $model->thoigianhienthi = $model->thoigianhienthi*1000;
                $model->save();
            }
            \Yii::$app->session->addFlash('success', 'Cập nhật thời gian hiển thị sinh nhật thành công');
            return $this->redirect(['birthday']);
        } else {
            return $this->render('time', [
                'model' => ($sinhnhat != null)?$sinhnhat:$model,
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
        $model->ngaysinh = date('d-m-Y',strtotime($model->ngaysinh));
        if ($model->load(Yii::$app->request->post()) && $model->save(false)) {
            \Yii::$app->session->addFlash('success', 'Cập nhật cán bộ thành công');
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
        $model = nhanvien::findOne($id);
        if ($model->username!=null && $model->username = Yii::$app->user->identity->username)
        {
             \Yii::$app->session->addFlash('danger', 'Không thể xóa chính mình');
            return $this->redirect(['index']);
        }
        $this->findModel($id)->delete();
        \Yii::$app->session->addFlash('success', 'Xóa cán bộ thành công');
        return $this->redirect(['index']);
    }

     public function actionDeleteaccount($id)
    {
       $member = $this->findModel($id);
       $model =nhanvien::findOne($id);
       $model->username = NULL;
       $model->password_hash = NULL;
       $model->roles = NULL;
       $model->auth_key = NULL;
       $model->password_reset_token = NULL;
       $model->status = NULL;
       $model->created_at = NULL;
       $model->updated_at = NULL;
       $model->update(false);
        return $this->redirect(['member']);
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
        if (Yii::$app->user->identity->roles != 'admin')
        {
            \Yii::$app->session->addFlash('warning', 'Bạn không có quyền sử dụng chức năng import');
            return $this->redirect(['index']);
        }
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
    private function convert_english($data)
    {
        if (isset($data))
        {
            $unicode = array(
            'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
            'd'=>'đ',
            'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
            'i'=>'í|ì|ỉ|ĩ|ị',
            'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
            'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
            'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
            'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
            'D'=>'Đ',
            'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
            'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
            'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
            'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
            'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
            );
            foreach($unicode as $nonUnicode=>$uni){
            $data = preg_replace("/($uni)/i", $nonUnicode, $data);
            }
            return $data;
        }
        return Null;
    }
    private function convert_username($data)
    {
       if (isset($data)&& !is_null($data))
       {
        $data = $this->convert_english($data);
        $name = explode(' ',$data);
        $lastname = end($name);
        array_pop($name);
        $username = '';
        foreach($name as $n)
        {
            $username.=substr($n,0,1);
        }
        $username =(strtolower($lastname.$username));
        return $username;
       }
    }
    public function actionAccount($id)
    {

        $model = $this->findModel($id);
        if (!is_null($model->roles)||Yii::$app->user->identity->roles == 'user')
        {
            \Yii::$app->session->addFlash('danger', 'Cấp quyền không hợp lệ');
            return $this->redirect(['index']);
        }
        if ($model->load(Yii::$app->request->post())) {
            if ((is_null(Nhanvien::findOne(['roles'=>Yii::$app->request->post('Nhanvien')['roles'],'donvi_id'=>$model->donvi_id])))||Yii::$app->request->post('Nhanvien')['roles'] == 'user')//xét trường hợp chỉ có 1 admin cho 1 khoa-đơn vị
            {
                $model = Nhanvien::findOne($id);
                $model->username = $this->convert_username($model->ten);
                $model->password_hash = Yii::$app->security->generatePasswordHash($this->convert_username($model->ten));
                $model->auth_key = Yii::$app->security->generateRandomString();
                $model->status = 10;
                $model->created_at = time();
                $model->updated_at = time();
                $model->roles = Yii::$app->request->post('Nhanvien')['roles'];
                $model->update(false);
                \Yii::$app->session->addFlash('success', 'Cấp quyền '.$model->roles .' cho cán bộ '.$model->ten.' thành công');
            }else
            {
                \Yii::$app->session->addFlash('warning', 'Quyền quản trị đã tồn tại không thể cấp thêm');
                return $this->redirect(['index']);
            }
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('signup', [
                'model' => $model,
            ]);
        }
    }

    public function actionChangepassword()
    {
        $model = new nhanvien();
        if ($model->load(Yii::$app->request->post())) {
            $model = Nhanvien::findOne(Yii::$app->user->identity->id);
            $model->password_hash = Yii::$app->security->generatePasswordHash($this->convert_username(Yii::$app->request->post('Nhanvien')['password']));
            if ($model->update(false))
                Yii::$app->user->logout();
            return $this->goHome();
        }
        return $this->render('resetpassword', [
            'model' => $model,
        ]);
    }
    public function actionResetpassword($id)
    {
        $model = new nhanvien();
        if (Nhanvien::findOne($id)!=null) {
            $model = Nhanvien::findOne($id);
            $model->password_hash = Yii::$app->security->generatePasswordHash($this->convert_username($model->ten));
            if ($model->update(false))
            \Yii::$app->session->addFlash('success', 'Khôi phục mật khẩu cho cán bộ '.$model->ten.' thành công');
            return $this->redirect(['member']);
        }
    }
}

