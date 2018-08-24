# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Article.create(title: 'Can I pay with any currency?', content: 'Yes you can use any currency for lenga as long as you are happy')
Article.create(title: 'What is the LENGA cancellation policy?', content: 'when you cancell it, I will be so sad.')

Language.delete_all
User.languages.each do |name, id|
  Language.create(id: id, name: name)
end
