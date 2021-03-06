require 'clarify'
require 'pp'

clarify = Clarify::Client.new(api_key: 'docs-api-key')

bundles = clarify.bundles.fetch

bundles.each do |url|
  bundle = clarify.get(url)
  puts " - Bundle Name: #{bundle.name}"
end
