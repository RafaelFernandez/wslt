# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Element.destroy_all
Section.destroy_all

# HERO SECTION
hero = Section.create( name: 'hero', order: 1)
hero_title = Element.new(name: 'Title', value: 'This is the h1', category: :h1)
hero_title.section = hero
hero_title.save!

hero_subtitle = Element.new(name: 'Subtitle', value: 'This is the paragraph', category: :p)
hero_subtitle.section = hero
hero_subtitle.save!

hero_background = Element.new(name: 'Background', value: 'https://images.unsplash.com/photo-1500930423932-1c83c3a1fd0c', category: :img)
hero_background.section = hero
hero_background.save!

# CATCHY INFO SECTION
catchy_info = Section.create name: 'catchy_info', order: 3
# info-one
Element.create category: 'list', name: 'One', value: "Teacher for 10+ years", section: catchy_info
# info-two
Element.create category: 'list', name: 'Two', value: "Native English speaker", section: catchy_info
# info-three
Element.create category: 'list', name: 'Three', value: "British accent", section: catchy_info
# info-four
Element.create category: 'list', name: 'Four', value: "CELTA Oxford qualified", section: catchy_info
# info-five                 
Element.create category: 'list', name: 'Five', value: "Barcelona based", section: catchy_info
# subtitle
Element.create category: 'h2', name: 'Subtitle', value: "Watch my video!", section: catchy_info
# video upload
Element.create category: 'video', name: 'Profile Video', value: 'https://www.youtube.com/watch?v=TTemFSm_KIU', section: catchy_info


price_info = Section.create( name: 'pricing', order: 4)
Element.create category: "h1", name: "Title", value: "Pricing", section: price_info
Element.create category: "h2", name: "teaser", value: "Book 10+ hours and get 5% off", section: price_info
Element.create category: "p", name: "policy", value: "Group classes are for a max of 2 students ", section: price_info
Element.create category: "product", name: "Product", value: "{type: 'one 2 one', offline_price: '20 Eur', online_price: '10 Eur' }", section: price_info
Element.create category: "product", name: "Product", value: "{type: 'group', offline_price: '20 Eur', online_price: '10 Eur' }", section: price_info
Element.create category: "product", name: "Product", value: "{type: 'Business', offline_price: '30 Eur', online_price: '20 Eur' }", section: price_info


puts "done"