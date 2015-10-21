class Cat
  MAX_FEED_LEVEL = 100
  MIN_FEED_LEVEL = 0
  HUNGRY_FEED_LEVEL = 49
  ACTIVITIES = ['litreball', 'football', 'basketball', 'voleyball']

  def initialize(name)
    @name = name
    @current_feed = 50
    @sleep_status = false
    @alive = true
  end

  def sleep
    if sleep_status
      puts "#{name} is already sleep"
    else
      sleep_status = true
      puts "#{name}: Z-z-z-z-z-z...."
    end
  end

  def sleep?
    sleep_status
  end

  def feed
    if alive
      current_feed += 5
      puts "#{name} is eating"
      if current_feed > 100 && current_feed < 150
        vomit
      elsif current_feed > 150
        die
      end
    else
      puts "#{name} is dead"
    end
  end


  def hungry?
    current_feed < HUNGRY_FEED_LEVEL
  end

  def play
    puts "#{name} is playing #{ACTIVITIES.sample}"
    current_feed -= 20
  end

  def wake_up
    if sleep_status
      sleep_status = false
      puts "#{name} wake up!"
    end
  end

  def fuck
    puts 'name of the bitch: '
    bitch_name = gets
    puts "#{name} is fucking #{bitch_name}"
  end

  private

  attr_accessor :name, :current_feed, :sleep_status

  def die
    @alive? = false
    puts "#{name} is dead!!!!!"
  end

  def vomit
    puts "#{name} is vomiting"
  end
end
