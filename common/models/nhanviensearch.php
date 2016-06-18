<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\nhanvien;

/**
 * NhanvienSearch represents the model behind the search form about `common\models\nhanvien`.
 */
class NhanvienSearch extends Nhanvien
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id','donvi_id', 'trinhdo_id'], 'integer'],
            [['ten', 'ngaysinh', 'gioitinh', 'ngach', 'hesoluong', 'ghichu','roles','username'], 'safe'],
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
         if(Yii::$app->user->identity->roles == 'admin') {
            $query = nhanvien::find()->where('hesoluong > :hsl', [':hsl' => 0]);
        }
        else{
            $query = nhanvien::find()->where(['donvi_id'=>Yii::$app->user->identity->donvi_id])->andWhere('hesoluong > :hsl', [':hsl' => 0]);
        }


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
            'ngaysinh' => $this->ngaysinh,
            'donvi_id' => $this->donvi_id,
            'trinhdo_id' => $this->trinhdo_id,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'gioitinh', $this->gioitinh])
            ->andFilterWhere(['like', 'ngach', $this->ngach])
            ->andFilterWhere(['like', 'hesoluong', $this->hesoluong])
            ->andFilterWhere(['like', 'ghichu', $this->ghichu]);

        return $dataProvider;
    }
    public function search_user($params)
    {
       $query = (Yii::$app->user->identity->roles == 'admin')?nhanvien::find()->where(['not', ['username' => NULL]]):nhanvien::find()->where(['not', ['username' => NULL,'username'=>'admin']])->andWhere(['donvi_id'=>Yii::$app->user->identity->donvi_id]);
        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'roles' => $this->roles,
            'donvi_id' => $this->donvi_id,
            'trinhdo_id' => $this->trinhdo_id,
        ]);

        $query->andFilterWhere(['like', 'ten', $this->ten])
            ->andFilterWhere(['like', 'username', $this->username]);

        return $dataProvider;
    }
}
