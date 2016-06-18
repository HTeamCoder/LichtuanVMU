<?php

namespace common\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\slide;

/**
 * slidesearch represents the model behind the search form about `common\models\slide`.
 */
class slidesearch extends slide
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['id', 'donvi_id'], 'integer'],
            [['tieude','active'], 'safe'],
            [['thoigianhienthi'], 'number'],
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
            $query = slide::find();
        }
        else{
            $query = slide::find()->where(['donvi_id'=>Yii::$app->user->identity->donvi_id])->orderBy('id DESC');
        }

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            return $dataProvider;
        }

        $query->andFilterWhere([
            'id' => $this->id,
            'donvi_id' => $this->donvi_id,
            'thoigianhienthi' => $this->thoigianhienthi,
            'active' => $this->active,
        ]);

        $query->andFilterWhere(['like', 'tieude', $this->tieude]);

        return $dataProvider;
    }
}
