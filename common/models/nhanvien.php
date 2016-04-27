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
class nhanvien extends \yii\db\ActiveRecord
{
    public $file;
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
            [['status', 'created_at', 'updated_at', 'donvi_id', 'trinhdo_id'], 'integer'],
            [['donvi_id', 'trinhdo_id'], 'required'],
            [['ten', 'username', 'password_hash', 'password_reset_token', 'auth_key'], 'string', 'max' => 100],
            [['ngach', 'hesoluong', 'ghichu'], 'string', 'max' => 45],
            [['file'],'file']
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
            'username' => Yii::t('app', 'Username'),
            'password_hash' => Yii::t('app', 'Password Hash'),
            'password_reset_token' => Yii::t('app', 'Password Reset Token'),
            'auth_key' => Yii::t('app', 'Auth Key'),
            'status' => Yii::t('app', 'Status'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
            'donvi_id' => Yii::t('app', 'Donvi ID'),
            'trinhdo_id' => Yii::t('app', 'Trinhdo ID'),
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
    public function getTrinhdo()
    {
        return $this->hasOne(Trinhdo::className(), ['id' => 'trinhdo_id']);
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
