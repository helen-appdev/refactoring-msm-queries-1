# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def title_with_year
    return "#{self.title} (#{self.year})"
  end

  def characters 
    my_id = self.id
    my_characters = Character.where({ :movie_id => my_id})
    return my_characters
  end
  
  def director
    d_id = self.director_id
    the_director = Director.where({:id => d_id}).at(0)
    return the_director
  end

  # def cast
  #   my_characters = self.characters
      
  #   actor_ids = Array.new
    
  #   my_characters.each do |char|
            
  #     actor_ids.push(a_id)
  #   end

  #   my_actors = Actor.where({ :id => actor_ids]})

  #     return my_actors
  # end
end

