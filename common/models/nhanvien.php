<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "nhanvien".
 *
 * @property integer $id
 * @property string $ten
 * @property string $ngaysinh
 * @property integer $gioitinh
 * @property string $username
 * @property string $password_hash
 * @property string $password_reset_token
 * @property string $auth_key
 * @property integer $status
 * @property integer $created_at
 * @property integer $updated_at
 * @property integer $donvi_id
 * @property integer $trinhdochuyenmon_id
 *
 * @property Donvi $donvi
 * @property Trinhdochuyenmon $trinhdochuyenmon
 */
class nhanvien extends \yii\db\ActiveRecord
{
    public $file;
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'nhanvien';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['ten', 'donvi_id', 'trinhdochuyenmon_id'], 'required'],
            [['gioitinh', 'status', 'created_at', 'updated_at', 'donvi_id', 'trinhdochuyenmon_id'], 'integer'],
            [['ten', 'ngaysinh', 'username', 'password_hash', 'password_reset_token', 'auth_key'], 'string', 'max' => 100],
            [['file'],'file','extensions'=>'xls,xlsx','maxSize'=>1024*1024],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'ten' => 'Tên',
            'ngaysinh' => 'Ngày sinh',
            'gioitinh' => 'Giới tính',
            'username' => 'Username',
            'password_hash' => 'Password',
            'password_reset_token' => 'Password Reset Token',
            'auth_key' => 'Auth Key',
            'status' => 'Status',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'donvi_id' => 'Đơn vị',
            'trinhdochuyenmon_id' => 'Trình độ chuyên môn',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getDonvi()
    {
        return $this->hasOne(Donvi::className(), ['id' => 'donvi_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTrinhdochuyenmon()
    {
        return $this->hasOne(Trinhdochuyenmon::className(), ['id' => 'trinhdochuyenmon_id']);
    }

    /**
     * @inheritdoc
     * @return NhanvienQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new NhanvienQuery(get_called_class());
    }
}
