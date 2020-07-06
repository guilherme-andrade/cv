class Api::V1::MeController < Api::V1::BaseController
  def show
    render json: {
      "full_name": "Guilherme Andrade",
      "age": 28,
      "nationalities": ["Portuguese", "Angolan"],
      "languages": ["Portuguese", "English"],
      "city": "Brussels, Belgium"
    }
  end
end
