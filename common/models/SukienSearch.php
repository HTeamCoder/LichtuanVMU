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
            [['id', 'lichtuan_id'], 'integer'],
            [['thu', 'ngay', 'thoigian', 'noidung'], 'safe'],
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
            'ngay' => $this->ngay,
            'lichtuan_id' => $this->lichtuan_id,
        ]);

        $query->andFilterWhere(['like', 'thu', $this->thu])
            ->andFilterWhere(['like', 'thoigian', $this->thoigian])
            ->andFilterWhere(['like', 'noidung', $this->noidung]);

        return $dataProvider;
    }
}
