class Dragon

  def initialize name
    @name = name
    @asleep = false
    @stuff_in_belly = 10 # He's full.
    @stuff_in_intestine = 0
    
    puts "#{@name} is born."
  end

  def feed 
    puts "You feed #{@name}."
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts "You walk #{@name}."
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts "You put #{@name} to bed."
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
    end
    if @asleep
      puts "#{@name} snores, filling the room with smoke."
    end
    if @asleep
      @asleep = false
      puts "#{@name} wakes up slowly."
    end
  end
  
  def toss
    puts "You toss #{@name} up into the air."
    puts "He giggles, which singes your eyebrows."
    passage_of_time
  end

  def rock
    puts "You rock #{@name} gently."
    @asleep = true
    puts 'He briefly dozes off...'
    passage_of_time
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  def kill
    puts 'You pull out your sword and slay your baby dragon.'
    puts "Your blood freezes as you hear #{@name}'s death cry."
    puts 'Simulation over...'
    exit
  end

  private
  # "private" means that the methods that are defines here are
  # methods internal to the object. (You can feed your dragon
  # but you cannot ask him whether he is hungry.)
  
  def hungry?
    # Method name can end with "?".
    # Usually, we do this only if the method
    # returns true or false, like this:
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      # Move food from belly to intestine.
      @stuff_in_belly     = @stuff_in_belly     - 1
      @stuff_in_intestine = @stuff_in_intestine + 1
    else
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} is starving! In desperation, he ate YOU!"
      exit # This quits the program.
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts "Whoops! #{@name} had an accident..."
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts "#{@name} does the potty dance..."
    end
  end

end

def start
  puts '--------Interactive Pet Dragon v1.0--------'
  puts
  puts 'What do you want to name your dragon?'
  print ':> '
  name = gets.chomp
  pet = Dragon.new name
  puts
  puts "#{name}'s actions."
  puts '- feed'
  puts '- walk'
  puts '- sleep'
  puts '- toss'
  puts '- rock'
  puts '- kill'
  puts
  puts 'Type an action.'
  print ':> '
  action = gets.chomp
  while true
    if action.downcase == 'feed'
      pet.feed
      print ':> '
      action = gets.chomp
    elsif action.downcase == 'walk'
      pet.walk
      print ':> '
      action = gets.chomp
    elsif action.downcase == 'sleep'
      pet.put_to_bed
      print ':> '
      action = gets.chomp
    elsif action.downcase == 'toss'
      pet.toss
      print ':> '
      action = gets.chomp
    elsif action.downcase == 'rock'
      pet.rock
      print ':> '
      action = gets.chomp
    elsif action.downcase == 'kill'
      pet.kill
      print ':> '
      action = gets.chomp
    else
      puts 'NOT A VALID OPTION'
      print ':> '
      action = gets.chomp
    end
  end
end

start

