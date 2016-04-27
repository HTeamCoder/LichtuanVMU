<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\sukien;

/**
 * SukienSearch represents the model behind the search form about `common\models\sukien`.
 */
class SukienSearch extends sukien
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['thoigian', 'diadiem_congviec','tuan_id','ghichu','thoidiem'], 'safe'],
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
        $query = sukien::find();

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
            'thoigian' => $this->thoigian,
            'tuan_id'=>$this->tuan_id,
        ]);

        $query->andFilterWhere(['like', 'diadiem_congviec', $this->diadiem_congviec])
            ->andFilterWhere(['like', 'thoidiem', $this->thoidiem]);

        return $dataProvider;
    }
}
