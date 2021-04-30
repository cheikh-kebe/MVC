class Router

  def initialize
    @controller = Controller.new
  end

  def perform
    system 'clear'
    puts "Bienvenue dans The Gossip Project".red

    while true 

      puts "Que veux tu faire l'ami?".yellow.bold
      puts "1. Je veux creer un gossip".green
      puts "2. Afficher les POTINS".green
      puts "3. Je veux delete un gossip!".green
      puts "4. Je veux quitter l'app".green
      params = gets.chomp.to_i#variable input

      case params #case en fonction du choix
      when 1
        puts "Tu as choisi de creer un gossip"
        @controller.create_gossip

      when 2 
        puts "Tu veux voir ce qu'il se dit dans la zone!!!"
        @controller.gossip_index

      when 3 
        puts "On va delete ça vite fait bien fait !"
        @controller.delete_potin

      when 4
        puts "HASTA LA VISTA BABY!!!".blue
        break
        
      else 
        puts "Ce choix n'existe pas, merci de réessayer."
      end
    end
  end
end