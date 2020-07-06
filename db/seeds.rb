Project.destroy_all

#
#   Mailo Media
#

mailo_media = Project.create(
  title: 'Digital Agency Website',
  company_name: 'Mailo Media',
  country: 'France',
  start_date: '01/06/2019',
  end_date: '01/10/2019',
  description: 'A Static React development project.',
  url: 'mailomedia.com',
  status: 'Live'
)

img = File.open(File.join('tmp/images', 'mailo_media.png'))
mailo_media.tag_list.add('React', 'Styled-Components', 'Webpack', 'Netlify')
mailo_media.card_cover.attach(io: img, filename: File.basename(img))
mailo_media.save

#
#   Coloc Housing
#

coloc = Project.create(
  title: 'Coliving Platform',
  company_name: 'Coloc Housing',
  country: 'Belgium',
  start_date: '01/10/2019',
  end_date: '01/09/2020',
  description: 'A Fullstack Development and Design Project',
  url: 'colochousing.com',
  status: 'Live'
)

img = File.open(File.join('tmp/images', 'coloc.png'))
coloc.tag_list.add('Rails', 'StimulusJS', 'CI', 'Figma', 'Puppeteer', 'MixPanel', 'AWS', 'S3', 'Webpack')
coloc.card_cover.attach(io: img, filename: File.basename(img))
coloc.save

#
#   Koti
#

koti = Project.create(
  title: 'Scandinavian Furniture Marketplace',
  company_name: 'Koti',
  country: 'Liechtenstein',
  start_date: '01/10/2019',
  end_date: '01/09/2020',
  description: '',
  status: 'Down'
)

img = File.open(File.join('tmp/images', 'koti.png'))
coloc.tag_list.add('Rails', 'React', 'Webpack', 'Heroku', 'Redux')
koti.card_cover.attach(io: img, filename: File.basename(img))
koti.save

#
#   Pax
#

pax = Project.create(
  title: 'Wealth Management SAS',
  company_name: 'PaxFamilia',
  country: 'Belgium',
  start_date: '01/10/2019',
  end_date: '01/09/2020',
  description: 'A brief collaboration to lead the migration of the existing client into an SPA.',
  status: 'Live'
)

img = File.open(File.join('tmp/images', 'pax.png'))
coloc.tag_list.add('VueJS', 'Rails', 'Webpack', 'Vuex', 'SASS')
pax.card_cover.attach(io: img, filename: File.basename(img))
pax.save

#
#   Chatbot
#

chatbot = Project.create(
  title: 'Hostel Reception Chatbot',
  company_name: 'Clerkbot',
  country: 'Portugal',
  start_date: '01/01/2017',
  end_date: '01/05/2017',
  description: 'A non-conversational chatbot built in ruby that answers any hostel customer\'s demands.',
  status: 'Down'
)

img = File.open(File.join('tmp/images', 'messenger.png'))
coloc.tag_list.add('Ruby', 'Facebook Messenger API')
chatbot.card_cover.attach(io: img, filename: File.basename(img))
chatbot.save
