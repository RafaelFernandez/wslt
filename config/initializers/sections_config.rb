SECTION_CONFIG = {
  hero: {
    elements:[
      {name: 'title', category: :h1, label: "Your name"},
      {name: 'subtitle', category: :p, label: "A catchy subtitle"},
      {name: 'text', category: :text, label: "Tell us what is your teaching niche"}
    ],
    default:{
      title: "YOUR NAME",
      subtitle: "Qualified English language teacher",
      text: "Helping young learners reach fluency through intuative learning and games"
    }
  },

  bio: {
    elements: [
      {name: 'greeting', category: :h2, label: "Say hello"},
      {name: "intro", category: :p, label: "Introduction text"},
      {name: 'picture', category: :img, label: "Upload a profile picture"}
    ],
    default: {
      greeting: "Hi, I'm [your name]",
      intro: "This is the space to sell yourself as a teacher! Tell your potential students all about yourself and most importantly, how you help them to achieve their language goals. If you have a niche market or specialism make sure you mention it as well as any qualifications you have, what languages you speak and why you love helping language learners.",
      picture: "https://cdn.pixabay.com/photo/2017/06/09/05/19/smiling-2385790_1280.jpg"
    }
  },

  catchy: {
    elements: [
      {name: 'interesting', category: :list, label: "Tell us 5 interesting things about you"},
      {name: 'video', category: :video, label: "Upload an intro video"}
    ],
    default: {
      interesting: "Teacher for 10+ years \n Native English speaker \n British accent",
      video: ""
    }
  },

  pricing: {
    elements: [
      {name: 'teaser', category: :h2, label: "Do you offer a discount?"},
      {name: 'policy', category: :p, label: "Is your price per student per hour?"},
      {name: 'productone', category: :product, label: "One-to-one classes"},
      {name: 'producttwo', category: :product, label: "Group classes"},
    ],
    default: {
      teaser: "Book 10+ hours and get 5% off",
      policy: "Group classes are for a max of 2 students online and 6 people in person",
      productone: "General English classes",
      producttwo: "Business English classes"
    }
  },

  calendar: {
    elements: [
      {name: 'headline', category: :p, label: "Your headline text"},
      {name: 'subheadline', category: :p, label: "What languages do you speak"},
      {name: 'keypoints', category: :list, label: "Some key points why students should get in touch. One per line"},
      {name: 'calendlylink', category: :link, label: "Your Calendly link"},
    ],
    default: {
      headline: "Let's talk!",
      subheadline: "I speak English, Spanish and French",
      keypoints: "Book a time for us to talk \n Assess your level of English \n Set your learning goals",
      calendlylink: "Create and account with calendly.com"
    }
  },

  contact: {
    elements: [
      {name: 'email', category: :email, label: "Your email"},
      {name: "phone", category: :phone_number, label: "Your phone number"},
      {name: "facebook", category: :link, label: "Facebook"},
      {name: "instagram", category: :link, label: "Instagram"},
      {name: "twitter", category: :link, label: "Twitter"},
      {name: "linkedin", category: :link, label: "LinkedIn"},
      {name: "whatsapp", category: :phone_number, label: "WhatsApp"}, 
    ],
    default: {
      email:"Your email",
      phone: "Your phone number",
      facebook: "Facebook",
      instagram: "Instagram",
      twitter: "Twitter",
      linkedin: "LinkedIn",
      whatsapp: "WhatsApp"
    }
  }
}
  


