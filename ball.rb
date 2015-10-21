require 'yaml'
class Ball
  ANSWERS = YAML::load_file('./answers.yml')
  COLORS = {blue: 34, green: 32, yellow: 33, red: 31}

  def shake
    a = ANSWERS.sample
    puts "\e[#{colorize(ANSWERS.index(a))}m#{a}\e[0m"
  end

  private
  def colorize(index)
    case index
    when 0..4
      COLORS[:red]
    when 5..9
      COLORS[:green]
    when 10..14
      COLORS[:yellow]
    when 15..19
      COLORS[:blue]
    end
  end
end
