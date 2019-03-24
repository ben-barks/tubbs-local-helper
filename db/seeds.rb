# require_relative('../models/combined.rb')
require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
require('pry')

# Combined.delete_all()
Source.delete_all()
PreciousThing.delete_all()


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


precious_thing1 = PreciousThing.new({
  "name" => "snow globe",
  "description" => "Tiny glass ball on a base, filled with water and white bits, containing miniature London landmarks.",
  "stock_quantity" => 2,
  "buying_cost" => 50,
  "selling_price" => 100,
  "source_id" => source3.id
})

precious_thing2 = PreciousThing.new({
  "name" => "hand of glory",
  "description" => "A locally sourced severed human hand, gripping an oil lamp. Shows light only to the person holding the arm.",
  "stock_quantity" => 1,
  "buying_cost" => 1,
  "selling_price" => 30,
  "source_id" => source2.id
})

precious_thing3 = PreciousThing.new({
  "name" => "watch",
  "description" => "A metal wristwatch, mens, slightly bloody. Operational.",
  "stock_quantity" => 3,
  "buying_cost" => 2,
  "selling_price" => 5,
  "source_id" => source1.id
})

precious_thing4 = PreciousThing.new({
  "name" => "hard hat",
  "description" => "Muddy construction workers' safety helmet. Slightly dented.",
  "stock_quantity" => 0,
  "buying_cost" => 1,
  "selling_price" => 3,
  "source_id" => source3.id
})

precious_thing5 = PreciousThing.new({
  "name" => "finger abacus",
  "description" => "A simple abacus, using human fingers as beads for counting.",
  "stock_quantity" => 5,
  "buying_cost" => 13,
  "selling_price" => 85,
  "source_id" => source2.id
})

precious_thing6 = PreciousThing.new({
  "name" => "wedding dress",
  "description" => "Stained, off-white rags with faded blood stains. Stitched in to one of the rags is the name Tubbs Tattsyrup.",
  "stock_quantity" => 1,
  "buying_cost" => 5,
  "selling_price" => 395,
  "source_id" => source2.id
})

precious_thing7 = PreciousThing.new({
  "name" => "mobile phone",
  "description" => "Handheld cellular device, locked, out of battery charge. Encased in dry mud.",
  "stock_quantity" => 25,
  "buying_cost" => 25,
  "selling_price" => 40,
  "source_id" => source1.id
})

precious_thing8 = PreciousThing.new({
  "name" => "shovel",
  "description" => "Wooden handle, metal base. Standard size.",
  "stock_quantity" => 7,
  "buying_cost" => 0,
  "selling_price" => 5,
  "source_id" => source3.id
})

precious_thing9 = PreciousThing.new({
  "name" => "coat-of-arms",
  "description" => "Bronze pin depicting the kissing forms of man and pig. Inscription says Tattsyrup quia locus 1542.",
  "stock_quantity" => 1,
  "buying_cost" => 45,
  "selling_price" => 30000,
  "source_id" => source2.id
})

precious_thing10 = PreciousThing.new({
  "name" => "London A-Z guide book",
  "description" => "Paperback book detailing London's locations and attractions. Tattered, with discoloured stains.",
  "stock_quantity" => 4,
  "buying_cost" => 8,
  "selling_price" => 58,
  "source_id" => source1.id
})

precious_thing1.save()
precious_thing2.save()
precious_thing3.save()
precious_thing4.save()
precious_thing5.save()
precious_thing6.save()
precious_thing7.save()
precious_thing8.save()
precious_thing9.save()
precious_thing10.save()

# PreciousThing.main_index()




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
