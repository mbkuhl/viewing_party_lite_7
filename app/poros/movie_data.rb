class MovieData
  attr_reader :id,
              :title,
              :runtime,
              :vote_average,
              :genre,
              :summary,
              :credits,
              :reviews,
              :review_count,
              :image_api_call
  def initialize(data)
    @id = data[:details][:id]
    @title = data[:details][:title]
    @runtime = data[:details][:runtime]
    @vote_average = data[:details][:vote_average]
    @genre = genres(data[:details])
    @summary = data[:details][:overview]
    @credits = credits_maker(data[:credits])
    @reviews = reviews_maker(data[:reviews])
    @review_count = @reviews.count
    @image_api_call = MovieService.image_api_call(data[:details][:id])
  end

  def genres(details_data)
    details_data[:genres].map do |genre| 
      genre[:name] 
    end.join(', ')
  end

  def credits_maker(credits_data)
    count = 0
    cast = Hash.new
    until count == 10
      cast[credits_data[count][:name]] = credits_data[count][:character]
      count += 1
    end
    cast
  end

  def reviews_maker(reviews_data)
    reviews_data.map do |review|
      [review[:author], review[:content]]
    end
  end

  def hrmin
    hr = runtime / 60
    min = runtime % 60
    "#{hr}hr #{min}min"
  end
end