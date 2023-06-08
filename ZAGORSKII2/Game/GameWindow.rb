require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super(800, 600)
    self.caption = "Шутер"

    @player = Player.new(self)
    @enemies = []
    @bullets = []
    @font = Gosu::Font.new(20)
  end

  def update
    @player.update

    if rand < 0.01
      @enemies << Enemy.new(self)
    end

    @enemies.each(&:update)
    @bullets.each(&:update)

    @enemies.each do |enemy|
      if enemy.collides_with?(@player)
        close
      end

      @bullets.each do |bullet|
        if bullet.collides_with?(enemy)
          @enemies.delete(enemy)
          @bullets.delete(bullet)
          break
        end
      end
    end
  end

  def draw
    @player.draw
    @enemies.each(&:draw)
    @bullets.each(&:draw)

    @font.draw("Убито монстров: #{@player.kills}", 10, 10, 1)
  end

  def button_down(id)
    if id == Gosu::KB_SPACE
      @bullets << Bullet.new(self, @player.x, @player.y)
    end
  end
end

class Player
  attr_reader :x, :y, :kills

  def initialize(window)
    @window = window
    @x = 400
    @y = 500
    @kills = 0
    @image = Gosu::Image.new('X://ГРУППЫ//ПРОГРАММИСТЫ//Попова//ИП22//Zagorskii//Картинки//pngegg.png')
  end

  def update
    if @window.button_down?(Gosu::KB_LEFT)
      @x -= 5
    end

    if @window.button_down?(Gosu::KB_RIGHT)
      @x += 5
    end

    if @window.button_down?(Gosu::KB_UP)
      @y -= 5
    end

    if @window.button_down?(Gosu::KB_DOWN)
      @y += 5
    end
  end

  def draw
    @image.draw(@x, @y, 1)
  end
end

class Enemy
  attr_reader :x, :y

  def initialize(window)
    @window = window
    @x = rand(window.width - 50)
    @y = 0
    @image = Gosu::Image.new('X://ГРУППЫ//ПРОГРАММИСТЫ//Попова//ИП22//Zagorskii//Картинки//monstr.png')
  end

  def update
    @y += 3
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def collides_with?(object)
    Gosu.distance(@x, @y, object.x, object.y) < 50
  end
end

class Bullet
  attr_reader :x, :y

  def initialize(window, x, y)
    @window = window
    @x = x
    @y = y
    @image = Gosu::Image.new('X://ГРУППЫ//ПРОГРАММИСТЫ//Попова//ИП22//Zagorskii//Картинки//monstr.png')
  end

  def update
    @y -= 10

    if @y < 0
      @window.bullets.delete(self)
    end
  end

  def draw
    @image.draw(@x, @y, 1)
  end

  def collides_with?(object)
    Gosu.distance(@x, @y, object.x, object.y) < 50
  end
end

window = GameWindow.new
window.show
