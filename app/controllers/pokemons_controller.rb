class PokemonsController < ApplicationController
    
    def capture 
        pokemon_id = params[:id]
        Pokemon.find(pokemon_id).update(trainer: current_trainer)
        redirect_to '/'
    end
    
    def damage
        pokemon_id = params[:id]
        pokemon = Pokemon.find(pokemon_id)
        damaged_health = pokemon.health - 10
        
        if damaged_health <= 0
            Pokemon.destroy(pokemon)
        else
            pokemon.update(health: damaged_health)
        end
        
        redirect_to trainer_path(current_trainer)
    end
    
    def new
        @pokemon = Pokemon.new
    end
    
    def create
        pokemon = Pokemon.create(name: params[:pokemon][:name], health: 100, level: 1, trainer: current_trainer)
        if pokemon.valid?
            redirect_to trainer_path(current_trainer)
        else
            flash[:error] = pokemon.errors.full_messages.to_sentence
            redirect_to new_pokemon_path
        end
        
    end
    
    
    
end
