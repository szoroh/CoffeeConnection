require 'faker'

FactoryBot.define do
  factory :recipe do
    association :coffee_profile, factory: :coffee_profile
    coffee { "hdasbdhada" }
    quantity { 19.0 }
    brew_method { "dasda" }
    water_temperature { 92 }  
    water_amount { 230 }
    grind { "dasda" }
    aroma { "dasda" }
    aroma_points { "23" }
    taste { "dasda" }
    taste_points { "22" }
    body { "dsada" }
    body_points { "25" }
    astringency { "hda" }
    astringency_points { "21" }
    brew_time { 220 }
  end 

  factory :coffee_profile do
    name { "dzien dobry halko" }
    roasters { "audun" }
    mark { 4 }
    description { "nice" }
    beans_origin_country { "Kenya" }
    region { "dupa" }
    farm { "dupa" }
    treatment_method { "dupa" }
    variety { "dupa" }
    cultivation_altitude { "1111" }
    arabica { 100 }
    robusta { 0 }
    roast { "dark" }
    grain_size { "samll" }
    package_quantity { 250 }
  end   
end 
