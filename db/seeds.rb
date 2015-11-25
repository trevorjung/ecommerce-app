Image.create!([
  {image_1: "http://i24.photobucket.com/albums/c22/houmanak/IMG_2962_zpsa82577a2.jpg", image_2: "http://i.ebayimg.com/00/s/MTA2NlgxNjAw/z/kZgAAOSwRLZUCPeO/$_3.jpg", image_3: "http://i24.photobucket.com/albums/c22/houmanak/IMG_2964_zps483e829a.jpg", product_id: 5},
  {image_1: "https://cdnc.lystit.com/photos/2013/09/03/aldo-cognac-timo-product-1-13236975-305159411.jpeg", image_2: "http://cdnc.lystit.com/photos/2013/09/03/aldo-cognac-timo-product-2-13236975-306663434_large_flex.jpeg", image_3: "https://cdnb.lystit.com/photos/2013/09/03/aldo-cognac-timo-product-3-13236975-308934132_large_flex.jpeg", product_id: 3},
  {image_1: "http://4.bp.blogspot.com/-Y3nI148mqsk/VdZCEzve1GI/AAAAAAAAOWM/g_eVKn7BANY/s1600/image_1.jpg", image_2: "http://unlocked-wordpress.s3.amazonaws.com/uploads/2015/08/Foot-Locker-Nike-Kyrie-1-Australia-2-800x450.jpg", image_3: "http://cdn.nikeblog.com/wp-content/uploads/2015/08/Nike-Kyrie-1-Australia-1-622x338.jpg", product_id: 4},
  {image_1: "http://s7d9.scene7.com/is/image//LordandTaylor//889203390336_main?$THUMBLARGE$", image_2: "https://s-media-cache-ak0.pinimg.com/236x/9a/d8/15/9ad815de562a40ed23399513059803b6.jpg", image_3: "http://g03.a.alicdn.com/kf/HTB1O3ZBJXXXXXXoaXXXq6xXFXXXq.jpg", product_id: 2},
  {image_1: "http://cdn.sneakernews.com/wp-content/uploads/2015/06/air-jordan-1-retro-high-los-angeles-07.jpg", image_2: "http://photon.101medialablimit.netdna-cdn.com/hypebeast.com/image/2015/11/nike-air-jordan-1-high-la-2.jpg?w=1024", image_3: "http://sneakernews.com/wp-content/uploads/2015/11/air-jordan-1-la-santa-monica.jpg", product_id: 1}
])
Order.create!([
  {user_id: 1, product_id: 1, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 1, quantity: 3, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 4, quantity: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 4, quantity: 5, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 2, quantity: 5, subtotal: "2250.0", tax: "202.5", total: "2452.5"}
])
Product.create!([
  {name: "Air Jordan 1s LA Edition", price: "200.0", image: "http://sneakernews.com/wp-content/uploads/2015/11/air-jordan-1-la-santa-monica.jpg", description: "Limited Edition Los Angeles all white Jordan 1s", supplier_id: 1, user_id: nil},
  {name: "Classic Dress", price: "450.0", image: "http://www.mensdesignershoe.com/avactis-images/michael-toschi-shoes-gala-patent-leather-formal-shoes_0.jpg", description: "Black Patented Leather", supplier_id: 3, user_id: nil},
  {name: "Brown Rustic Boots", price: "250.0", image: "https://cdnc.lystit.com/photos/2013/09/03/aldo-cognac-timo-product-1-13236975-305159411.jpeg", description: "Men's Tall Brown Leather Boots", supplier_id: 2, user_id: nil},
  {name: "Nike Kyrie II", price: "110.0", image: "http://unlocked-wordpress.s3.amazonaws.com/uploads/2015/08/Foot-Locker-Nike-Kyrie-1-Australia-2-800x450.jpg", description: "Exclusive released second generation Kyrie's in lime green, teal blue with gold heel. ", supplier_id: 1, user_id: nil},
  {name: "Grey Combat", price: "425.0", image: "http://i24.photobucket.com/albums/c22/houmanak/IMG_2962_zpsa82577a2.jpg", description: "Men's Faded Grey Combat Boots\n", supplier_id: 2, user_id: nil}
])
Supplier.create!([
  {name: "Nike", email: "Jim@nikeshoes.com", phone: 5550123},
  {name: "Aldo", email: "Tina@aldo.com", phone: 9992345},
  {name: "Cole Haan", email: "Roger@ColeHaan.com", phone: 6663948}
])
