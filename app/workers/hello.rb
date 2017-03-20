class Hello
  @queue = :resque_timebox # Woeker起動時に指定するQUEUE名

  def self.perform(message)
    sleep 5
    MessageMailer.hello("aaaa").deliver
    logger = Logger.new(File.join(Rails.root, 'log', 'resque.log'))
    logger.info "Hello #{message}"
  end
end