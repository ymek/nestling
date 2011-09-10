module Nestling
  class Collection < Array
    attr_accessor :results, :start, :session_id

    def initialize(options = {}, *args)
      options = Nestling::Hash.new(options) # symbolize_keys!
      @results    = options[:results] || options[:total]
      @start      = options[:start]
      @session_id = options[:session_id]
      super *args
    end
  end
end

