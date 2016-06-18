<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\tuan;

/**
 * TuanSearch represents the model behind the search form about `common\models\tuan`.
 */
class TuanSearch extends tuan
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id'], 'integer'],
            [['tuannam', 'tuannamhoc', 'tungay', 'denngay'], 'safe'],
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
        $query = tuan::find();

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
             'pagination' => [
                'pageSize' => 5,
            ],
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
        ]);

        $query->andFilterWhere(['like', 'tuannam', $this->tuannam])
            ->andFilterWhere(['like', 'tuannamhoc', $this->tuannamhoc])
            ->andFilterWhere(['like', 'tungay', $this->tungay])
            ->andFilterWhere(['like', 'denngay', $this->denngay]);

        return $dataProvider;
    }
}
