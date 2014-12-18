class WeightSerializer < ActiveModel::Serializer
  attributes :value, :measured_at

  def value
    object.value.to_f
  end
end
