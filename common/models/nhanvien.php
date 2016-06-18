<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "{{%nhanvien}}".
 *
 * @property integer $id
 * @property string $ten
 * @property string $ngaysinh
 * @property string $gioitinh
 * @property string $ngach
 * @property string $hesoluong
 * @property string $ghichu
 * @property string $username
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $auth_key
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $donvi_id
 * @property integer $trinhdo_id
 *
 * @property Donvi $donvi
 * @property Trinhdo $trinhdo
 */
class Nhanvien extends \yii\db\ActiveRecord
{
    public $file;
    public $password_hash_confirm;
    public $password;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%nhanvien}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ngaysinh'], 'safe'],
            [['gioitinh'], 'string'],
            [['donvi_id', 'trinhdo_id'], 'integer'],
            [['roles'],'required'],
            [['donvi_id', 'trinhdo_id'], 'required'],
            [['ten'], 'string', 'max' => 100],
            [['ngach', 'hesoluong', 'ghichu'], 'string', 'max' => 45],
            [['file'],'file'],
            [['password_hash_confirm'],'compare', 'compareAttribute' => 'password'],
            [['password','password_hash_confirm'],'required'],
            [['password','password_hash_confirm'],'string','min'=>6]
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'ten' => Yii::t('app', 'Họ và tên'),
            'ngaysinh' => Yii::t('app', 'Ngày sinh'),
            'gioitinh' => Yii::t('app', 'Giới tính'),
            'ngach' => Yii::t('app', 'Ngạch'),
            'hesoluong' => Yii::t('app', 'Hệ số lương'),
            'ghichu' => Yii::t('app', 'Ghi chú'),
            'donvi_id' => Yii::t('app', 'Đơn vị'),
            'trinhdo_id' => Yii::t('app', 'Trình độ'),
            'password'=>Yii::t('app', 'Mật khẩu mới'),
            'password_hash_confirm'=>Yii::t('app', 'Nhập lại mật khẩu mới'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDonvi()
    {
        return $this->hasOne(donvi::className(), ['id' => 'donvi_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTrinhdo()
    {
        return $this->hasOne(trinhdo::className(), ['id' => 'trinhdo_id']);
    }

    /**
     * @inheritdoc
     * @return NhanvienQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new NhanvienQuery(get_called_class());
    }

    public function beforeSave($insert)
    {
        $this->ngaysinh = date('Y-m-d',strtotime($this->ngaysinh));
        return parent::beforeSave($insert);
    }
}
