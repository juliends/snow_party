class EnrichPlayerWorker
  include Sidekiq::Worker

  def perform(user_id)
    @player = Player.find(user_id)
    puts "Enrich #{@player.email}"
  end
end
