class SightingSerializer
  include FastJsonapi::ObjectSerializer
  # by adding :bird and :location the attributes for those models can be displayed in sightings,
  # however this doesn't give us control over the attributes for those models.  It includes them all
  # attributes :created_at, :bird, :location

  # Establishes the relationship between Sighting and Bird and Location.
  attributes :created_at
  belongs_to :bird
  belongs_to :location
end
