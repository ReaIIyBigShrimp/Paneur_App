elites = Elite.all

elites.all.each do |e|
    e.Name = "Additional Elite Group"
    e.save!
end