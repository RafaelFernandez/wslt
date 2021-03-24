Website.destroy_all
Element.destroy_all
Section.destroy_all
Website.destroy_all
Theme.destroy_all
User.destroy_all

user = User.create(first_name: 'John', last_name: 'Doe', email: 'j@gmail.com', password: 'password')

Theme.create(name: 'dudu')
Theme.create(name: 'default')
kids = Theme.create(name: 'kids')

poppy = User.create!(email: "poppy@poppyworld.com", password: "password", first_name: "Poppy", last_name: "World")

poppysworld = Website.create!(
  name: "Poppy's World",
  domain: "englishlanguageteacher.com",
  user: poppy, theme: kids
)

# Website
website = Website.create(user: user, theme: kids, name: 'My web', domain: 'englishlanguageteacher.com')
# HERO SECTION
hero = Section.create( name: 'hero', order: 1, website: poppysworld)
Element.create(name: 'title', value: 'RACHEL POTTER', category: :h1, section: hero)
Element.create(name: 'subtitle', value: 'Qualified English language teacher', category: :p, section: hero)
Element.create(name: 'text', value: 'Helping young learners reach fluency through intuative learning and games', category: :p, section: hero)

# CATCHY INFO SECTION
catchy = Section.create name: 'catchy', order: 3, website: website
Element.create category: 'list', name: 'interesting', value: "Teacher for 10+ years", section: catchy
Element.create category: 'video', name: 'video', value: 'https://www.youtube.com/watch?v=TTemFSm_KIU', section: catchy

# BIO SECTION
bio = Section.create(name: 'bio', order: 2, website: website)
Element.create(category: 'h2', name: 'greeting', value: 'Hi! Im Rachel', section: bio)
Element.create(category: 'p', name: "intro", value: 'I have been teaching for 10 years and guide students to achieve their own goals', section: bio)
Element.create(category: 'img', name: 'picture', value: 'https://avatars3.githubusercontent.com/u/4753571?v=4', section: bio)

# PRICING SECTION
price_info = Section.create( name: 'pricing', order: 4, website: website)
Element.create category: "h2", name: "teaser", value: "Book 10+ hours and get 5% off", section: price_info
Element.create category: "p", name: "policy", value: "Group classes are for a max of 2 students ", section: price_info
Element.create category: "product", name: "product1", value: "{type: 'one 2 one', offline_price: '20 Eur', online_price: '10 Eur' }", section: price_info
Element.create category: "product", name: "product2", value: "{type: 'group', offline_price: '20 Eur', online_price: '10 Eur' }", section: price_info

# CALENDAR SECTION
calendar = Section.create( name: 'calendar', order: 5, website: website)
Element.create category: "p", name: "headline", value: "Let's talk!", section: calendar
Element.create category: "p", name: "subheadline", value: "I speak English, Spanish and French", section: calendar
Element.create category: "p", name: "keypoints", value: "Book a time for us to talk, -Assess your level of English, -Set your learning goals", section: calendar
Element.create category: "p", name: "buttontext", value: "View my calendar", section: calendar
Element.create category: 'link', name: 'calendlylink', value: 'https://calendly.com/popjen/15min', section: calendar


#CONTACT SECTION
contact = Section.create( name: 'contact', order: 6, website: website)
Element.create category: "email", name: "Email", value: "rachel@gmail.com", section: contact
Element.create category: "phone_number", name: "Phone Number", value: "+34-123-123456", section: contact
Element.create category: "link", name: "Facebook", value: "https://www.facebook.com/truonganxinh", section: contact
Element.create category: "link", name: "Instagram", value: "https://instagram.com/mirandakerr?igshid=i8lvpcvwmmmi", section: contact
Element.create category: "link", name: "Twitter", value: "https://instagram.com/mirandakerr?igshid=i8lvpcvwmmmi", section: contact
Element.create category: "link", name: "Linkedin", value: "https://www.linkedin.com/in/lutfur84/", section: contact
Element.create category: "phone_number", name: "Whatsapp", value: "+34-123-123456", section: contact

puts "done"

# WebsiteSection.create!(
#   website: poppysworld, section: hero
# )

# WebsiteSection.create!(
#   website: poppysworld, section: bio
# )

# WebsiteSection.create!(
#   website: poppysworld, section: catchy
# )

# WebsiteSection.create!(
#   website: poppysworld, section: price_info
# )
