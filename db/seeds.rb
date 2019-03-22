require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
require('pry')

Source.delete_all()
PreciousThing.delete_all()

precious_thing1 = PreciousThing.new({
  "name" => "snow globe",
  "description" => "Tiny glass ball on a base, filled with water and white bits, containing miniature London landmarks.",
  "stock_quantity" => 2,
  "buying_cost" => 50,
  "selling_price" => 100
})

precious_thing2 = PreciousThing.new({
  "name" => "hand of glory",
  "description" => "A locally sourced severed human hand, gripping an oil lamp. Shows light only to the person holding the arm.",
  "stock_quantity" => 1,
  "buying_cost" => 1,
  "selling_price" => 30
})

precious_thing3 = PreciousThing.new({
  "name" => "watch",
  "description" => "A metal wristwatch, mens, slightly bloody. Operational.",
  "stock_quantity" => 3,
  "buying_cost" => 2,
  "selling_price" => 5
})

precious_thing1.save()
precious_thing2.save()
precious_thing3.save()


source1 = Source.new({
  "name" => "Non-local corpse",
  "description" => "We didn't burn him!"
  })

source2 = Source.new({
  "name" => "The attic",
  "description" => "David is such a creative boy, but be careful not to suffocate like the first three wives!"
  })

source3 = Source.new({
  "name" => "Royston Vasey new road dig site",
  "description" => "Such precious things under all that dirt!"
  })

source1.save()
source2.save()
source3.save()

# precious_thing1.delete()
# PreciousThing.all()
# precious_thing1.name = ("map")
# # precious_thing1.update()
# PreciousThing.find(2)

# source1.delete()
# Source.all()
# source1.name = ("not local")
# source1.update()
# Source.find(19)

binding.pry
nil
