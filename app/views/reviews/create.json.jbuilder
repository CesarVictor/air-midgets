if @review.persisted?
  json.form json.partial!("reviews/form.html.erb", midget: @midget, review: Review.new)
  json.inserted_item json.partial!("midgets/review.html.erb", review: @review)
else
  json.form json.partial!("reviews/form.html.erb", midget: @midget, review: @review)
end
