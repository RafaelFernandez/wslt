Website.destroy_all
Element.destroy_all
Section.destroy_all
Theme.destroy_all
User.destroy_all



user = User.create(first_name: 'John', last_name: 'Doe', email: 'j@gmail.com', password: 'password')
theme = Theme.create(name: 'default')
Theme.create(name: 'dudu')

# Website 
website = Website.create(user: user, theme: theme, name: 'My web', domain: 'englishlanguageteacher.com')
# HERO SECTION
hero = Section.create( name: 'hero', order: 1, website: website)
Element.create(name: 'Title', value: 'This is the h1', category: :h1, section: hero)
Element.create(name: 'Subtitle', value: 'This is the paragraph', category: :p, section: hero)
Element.create(name: 'Background', value: '', category: :img, section: hero)

# CATCHY INFO SECTION
catchy_info = Section.create name: 'catchy_info', order: 3, website: website
Element.create category: 'list', name: 'One', value: "Teacher for 10+ years", section: catchy_info
Element.create category: 'list', name: 'Two', value: "Native English speaker", section: catchy_info
Element.create category: 'list', name: 'Three', value: "British accent", section: catchy_info
Element.create category: 'list', name: 'Four', value: "CELTA Oxford qualified", section: catchy_info
Element.create category: 'list', name: 'Five', value: "Barcelona based", section: catchy_info
Element.create category: 'h2', name: 'Subtitle', value: "Watch my video!", section: catchy_info
Element.create category: 'video', name: 'Profile Video', value: 'https://www.youtube.com/watch?v=TTemFSm_KIU', section: catchy_info

# BIO SECTION
bio = Section.create(name: 'bio', order: 2, website: website)
bio_greeting = Element.create(category: 'h2', name: 'Greeting', value: 'Hi! Im Rachel', section: bio)
bio_tell_us_about_yourself = Element.create(category: 'p', name: "Tell us about yourself, sell why you are a great teacher and help your student's achieve their goals", value: 'I have been teaching for 10 years and guide students to achieve their own goals', section: bio)
bio_upload_a_profile_picture = Element.create(category: 'img', name: 'Upload a profile picture', value: 'https://avatars3.githubusercontent.com/u/4753571?v=4', section: bio)

# PRICING SECTION
price_info = Section.create( name: 'pricing', order: 4, website: website)
Element.create category: "h1", name: "Title", value: "Pricing", section: price_info
Element.create category: "h2", name: "teaser", value: "Book 10+ hours and get 5% off", section: price_info
Element.create category: "p", name: "policy", value: "Group classes are for a max of 2 students ", section: price_info
Element.create category: "product", name: "Product", value: "{type: 'one 2 one', offline_price: '20 Eur', online_price: '10 Eur' }", section: price_info
Element.create category: "product", name: "Product", value: "{type: 'group', offline_price: '20 Eur', online_price: '10 Eur' }", section: price_info
Element.create category: "product", name: "Product", value: "{type: 'Business', offline_price: '30 Eur', online_price: '20 Eur' }", section: price_info

# CALENDAR SECTION
calendar = Section.create( name: 'calendar', order: 5, website: website)
Element.create category: "p", name: "headline", value: "LET'S TALK!", section: calendar
Element.create category: "p", name: "sub-headline", value: "I speak English, Spanish and French", section: calendar
Element.create category: "p", name: "key-points", value: "Book a time for us to talk, -Assess your level of English, -Set your learning goals", section: calendar
Element.create category: "p", name: "button-text", value: "View my calendar", section: calendar
Element.create category: 'link', name: 'calendly-link', value: 'https://calendly.com/popjen/15min', section: calendar

puts "done"

