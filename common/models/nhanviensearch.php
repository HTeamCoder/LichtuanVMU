<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\nhanvien;

/**
 * nhanviensearch represents the model behind the search form about `common\models\nhanvien`.
 */
class nhanviensearch extends nhanvien
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'gioitinh', 'status', 'created_at', 'updated_at', 'donvi_id', 'trinhdochuyenmon_id'], 'integer'],
            [['ten', 'ngaysinh', 'username', 'password_hash', 'password_reset_token', 'auth_key'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = nhanvien::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'gioitinh' => $this->gioitinh,
            'status' => $this->status,
            'created_at' => $this->created_at,
            'updated_at' => $this->updated_at,
            'donvi_id' => $this->donvi_id,
            'trinhdochuyenmon_id' => $this->trinhdochuyenmon_id,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'ngaysinh', $this->ngaysinh])
            ->andFilterWhere(['like', 'username', $this->username])
            ->andFilterWhere(['like', 'password_hash', $this->password_hash])
            ->andFilterWhere(['like', 'password_reset_token', $this->password_reset_token])
            ->andFilterWhere(['like', 'auth_key', $this->auth_key]);

        return $dataProvider;
    }
}
