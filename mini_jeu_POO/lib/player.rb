require 'pry'

class Player
  attr_accessor :name, :life_points #On crée les attributs de la classe, attention l'un est un string l'autre un integer

  def initialize(player_name)
    @name = player_name
    @life_points = 10
  end

  def show_state
    puts "Vitalité de #{@name}: #{@life_points}"
  end

  def gets_damage(damage_point)
    #on soustrait un point de vie à un joueur
    @life_points = @life_points - damage_point

    if life_points <= 0
      puts "Le joueur #{@name} s'est fait fracasser"
      puts "..."
      puts "Il est MORT"
    end
  end
    #attacks
    def attacks (player_attacked)
      puts "#{@name} attaque #{player_attackoled.name}"
      dmg = compute_damage
      puts "BIM #{player_attacked.name} a perdu #{dmg} points de vie"
      player_attacked.gets_damage(dmg)
    end

    def compute_damage
        return rand(1..6)
    end
end

class HumanPlayer < Player
    attr_accessor :weapon_level

  def initialize(player_name)
    @name = player_name
    @life_points = 100
    @weapon_level = 1
  end

  def show_state
    super
  end

  #Le multiplicateur de dégat
  def compute_damage
    rand(1..6) * @weapon_level
  end

  def roll_dice
    return rand(6)+1
  end

  def search_weapon(weapon_level)
    weapon_level = rand(1..6)
    puts "Tu as trouvé une arme de niveau #{new_weapon_level}"
    if @weapon_level < new_weapon_level
      @weapon_level == new_weapon_level
    end

    if @weapon_level >= new_weapon_level
      puts  "M@*#$... elle n'est pas mieux que ton arme actuelle..."
    end
  end
