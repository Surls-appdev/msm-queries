class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all

    render({ :template => "actor_templates/index_actors.html.erb"})
  end

  def actor_details
    my_id = params.fetch("actor_id")
    
    @the_actor = Actor.where({ :id => my_id}).at(0)
    @the_list_of_characters = Character.where({ :actor_id => my_id})
   # @filmography = Actor.where({ :actor_id => @the_actor.id })
    render({ :template => "actor_templates/details.html.erb"})
  end

end
