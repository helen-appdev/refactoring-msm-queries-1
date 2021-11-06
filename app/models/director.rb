# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography
    # shoudl return Movie::ActiveRecord_relation
    my_id = self.id #get foreign key
    my_movies = Movie.where({:director_id => my_id}) #go to other table to fetch
    return my_movies
  end


  
end
