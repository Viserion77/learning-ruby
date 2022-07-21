
def caputura_servico(i = 1)
  puts 'Implementar ação'
  return if i > 7
  caputura_servico i + 1
end

require 'active_support/all'
require 'httparty'

def capture_service(page)
  uri = URI("https://www.google.com/search?q=site:www.google.com+#{page}")
  request = Net::HTTP.get_response(uri)

  if request.code == '200'
    puts request.body
    caputura_servico page + 1
  else
    puts 'Erro'
  end
end

capture_service
