class Controller
  
  def initialize
    @view = View.new
  end

  def create_gossip 
    params = @view.create_gossip
    gossip = Gossip.new(params.values[0], params.values[1])#pour le moment, le contenu de ce gossip est inscrit "en dur" dans le code. L'utilisateur ne peut pas le changer.
    gossip.save 
  end
  
  def gossip_index
  gossips = Gossip.all 
  @view.gossip_index(gossips)
  end  

  def delete_potin
    all_gossips = Gossip.all
    Gossip.delete
    params  = @view.delete_gossips(all_gossips)
    params.each do |param|
        param.save
    end
  end
end 



