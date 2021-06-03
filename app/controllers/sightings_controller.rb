class SightingsController < ApplicationController
  def show
    sighting = Sighting.find(params[:id])
    # render json: sighting.to_json(:include => {:bird => {:only =>[:name, :species]}, :location => {:only =>[:latitude, :longitude]}}, :except => [:updated_at])
    # render json: SightingSerializer.new(sighting)

    #With realtionships established in sighting serializer, we can add a second parameter to serializer
    options = {
      include: [:bird, :location]
    }
    render json: SightingSerializer.new(sighting, options)
  end
end
