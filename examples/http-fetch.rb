urls = %w[
  http://example.com/
  http://example.net/
  http://example.org/
]

urls.async.map do |url|
  fetch(url)
end.map do |html|
  parse(html)
end.first do |page|
  page.css('#x')
end
