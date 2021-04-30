class View

  def create_gossip
    puts "Salut, quel est ton prénom ou alias?".yellow
    print">"
    content = gets.chomp
    puts " Qu'as-tu a dire Poucave?".yellow
    author = gets.chomp
    puts"-------------------Ton potin est pret-----------------".upcase.blue
    puts""
    sleep 1
    return params = { content: content, author: author}
  end

  def gossip_index(all_gossips)
    puts "Et voila!"
    all_gossips.each do |i|
      puts"" 
      print" #{i.author}:".red
      print"Content: #{i.content}".green
      puts""
    end
  end

  def delete_gossips(gossips)
    i = 0

    puts ""
    puts "------------- "
    puts ""

    gossips.each do |gossip|
        i += 1
        puts "#gossip #{i} >> " + gossip.author + " : " + gossip.content 
        puts ""
    end

    puts ""
    puts "------------- "
    puts ""

    puts "Donne-moi le numéro du gossip à supprimer"
    puts ""
    print "> "

    num = gets.chomp.to_i 
    num -= 1
    gossips.delete_at(num)
    return gossips
  end
end