require_relative('../models/precious_thing.rb')
require_relative('../models/source.rb')
require('pry')

PreciousThing.delete_all

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


# precious_thing1.delete()
# PreciousThing.all()
# precious_thing1.name = ("map")
# precious_thing1.update()

binding.pry
nil
