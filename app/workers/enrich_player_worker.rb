class EnrichPlayerWorker
  include Sidekiq::Worker

  def perform(user_id)
    @player = Player.find(user_id)
    puts "Enrich #{@player.email}"
    result = Clearbit::Enrichment.find(email: @player.email, stream: true)
    @player.first_name = result['person']['name']['givenName']
    @player.last_name = result['person']['name']['familyName']
    @player.location = result['person']['location']
    @player.save
  end
end
