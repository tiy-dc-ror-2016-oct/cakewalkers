# This file should contain all the record creation needed to seed the database with its default values.# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create our 3 roles
Role.create(
  name: "admin"
)
Role.create(
  name: "client"
)
Role.create(
  name: "cakewalker"
)

# Create 1 Admin
new_admin = User.create(
  full_name: "Pamela Duke",
  email: "pduke@gmail.com",
  password: "password",
  password_confirmation: "password"
)

# Create 1 CakeWalker
cakewalker = User.create(
  full_name: "Ziggy Cakedust",
  email: "cakedust@cakewalker.com",
  password: "password",
  password_confirmation: "password"
)

#Create 1 regular Client
client = User.create(
  full_name: "Harry Potter",
  email: "hpotter@hogwarts.com",
  password: "password",
  password_confirmation: "password"
)

new_admin.roles << Role.find_by(name: "admin")
cakewalker.roles << Role.find_by(name: "cakewalker")
client.roles << Role.find_by(name: "client")
# Create all prducts
products = HTTParty.get(Cakewalkers::URL + "products")

products.each do |product|
  if product["name"] == "Muffin"
    product = product.merge!({
    "unit_price_in_cents" => 300,
    "for_sale" => true,
    "image_url" => "Muffin.jpg"
    })
  elsif product["name"] == "Pullman loaf"
    product = product.merge!({
    "unit_price_in_cents" => 800,
    "for_sale" => true,
    "image_url" => "PullmanLoaf.jpg",
    "featured" => true
    })
  elsif product["name"] == "Avocado cake"
    product = product.merge!({
    "unit_price_in_cents" => 3800,
    "for_sale" => true,
    "image_url" => "AvacodoCake.jpg"
    })
  elsif product["name"] == "Spice cake"
    product = product.merge!({
    "unit_price_in_cents" => 2200,
    "for_sale" => true,
    "image_url" => "Spice-Cake_8517.jpg"
    })
  elsif product["name"] == "Whoopie pies"
    product = product.merge!({
    "unit_price_in_cents" => 300,
    "for_sale" => true,
    "image_url" => "WhoopiePir.jpg"
    })
  end
end

products.each do |product|
  Product.create(
    api_id: product["code"],
    name: product["name"],
    time_to_bake_in_seconds: product["time_to_bake_in_seconds"],
    featured: product[:featured],
    unit_price_in_cents: product[:unit_price_in_cents],
    for_sale: product[:for_sale],
    image_url: product[:image_url]
  )
end

Product.where("name = 'Muffin'").last.update(unit_price_in_cents: nil, for_sale: nil, image_url: nil )


new_cart = Cart.create()
address = Address.create(
  contact_phone: "3013325555",
  street: "1515 k street",
  city: "Washington",
  state: "DC",
  zip_code: "20202"
)
# Create New Order
new_order_ready_status = Order.create(
  client_id: client.id,
  status: "Ready for delivery",
  delivery_address: address,
  billing_address: address,
  full_name: client.full_name,
  email: client.email,
  cart_id: new_cart.id
)

new_line_item = LineItem.create(
  order: new_order_ready_status,
  product: Product.find_by(name: "Spice Cake"),
  quantity: 2,
  total_sale_price_in_cents: 4400,
  estimated_bake_time_in_seconds: 1800
)

another_line_item = LineItem.create(
  order: new_order_ready_status,
  product: Product.find_by(name: "Pullman loaf"),
  quantity: 4,
  total_sale_price_in_cents: 3200,
  estimated_bake_time_in_seconds: 1800
)
