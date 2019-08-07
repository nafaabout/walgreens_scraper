nokogiri = Nokogiri.HTML(content)

product_attributes = nokogiri.css('.page__wrap .price__contain + ul > li').map(&:text)

outputs << {
  _collection: 'products',
  title: page['vars']['title'],
  price: page['vars']['price'],
  rating: page['vars']['rating'],
  attributes: product_attributes
}
