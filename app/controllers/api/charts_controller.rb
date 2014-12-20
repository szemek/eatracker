class Api::ChartsController < Api::BaseController
  def weight
    records = Weight.order(Weight[:measured_at].asc).limit(14)

    labels = records.map(&:measured_at).map { |date| date.strftime("%Y-%m-%d") }
    series = records.map(&:value).map(&:to_f)

    minimum = series.min
    maximum = series.max
    range = maximum - minimum
    low = (minimum - 0.33 * range).floor

    render json: {chart: {labels: labels, series: [series]}, options: {low: low}}
  end
end
