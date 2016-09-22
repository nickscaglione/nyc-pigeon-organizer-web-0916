require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |category, trait_hash|
    trait_hash.each do |trait, names_array|
      names_array.each do |name|
        if pigeon_list[name] != nil
          pigeon_list[name][category] << trait.to_s
        else
          pigeon_list[name] = {
            :color => [],
            :gender => [],
            :lives => []
          }
          pigeon_list[name][category] << trait.to_s
        end
      end
    end
  end
  pigeon_list
end
