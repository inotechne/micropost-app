require_relative 'string_randomizer'

class User
  include StringRandomizer

  def random_password(len = 8)
    randomize(len)
  end

end

3.times do
  p User.new.random_password
end