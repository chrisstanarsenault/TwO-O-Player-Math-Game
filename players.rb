class Players

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def name
    @name
  end

  def status
    "#{name}: #{@lives}"
  end

  def right_answer
    puts "Ding ding ding!  Nailed it!"
  end

  def wrong_answer
    @lives -= 1
    puts "Come on dumb dumb, you can do better than that!"
  end

  def out_of_lives?
    @lives <= 0
  end

  def the_winner?
    @lives > 0
  end

end






