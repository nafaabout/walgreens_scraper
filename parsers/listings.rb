nokogiri = Nokogiri.HTML(content)

listings = nokogiri.css('.wag-product-card-details')

listings.each do |listing|
  product = {}

  product['title'] = listing.at_css('[name=product-title]').attr('title')
  product['path']  = listing.at_css('a').attr('href')
  product['price'] = listing.at_css('[name=regular-price] .product__price').text
  product['rating']= listing.at_css('[name=wagproductreview] img').attr('title').to_f
  product['price'].insert(-3, '.')

  product['_collection'] = 'listings'

  outputs << product
end
