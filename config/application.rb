require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

$: << ::File.expand_path("../../lib", __FILE__)
require "recommendify"
require "redis"

class MyRecommender < Recommendify::Base

  # store only the top fifty neighbors per item
  max_neighbors 50
  # define an input data set "order_items". we'll add "order_id->product_id"
  # pairs to this input and use the jaccard coefficient to retrieve a
  # "customers that ordered item i1 also ordered item i2" statement and apply
  # the result to the item<->item similarity matrix with a weight of 5.0
  input_matrix :user_trip_recommends,
               # :native => true,
               :similarity_func => :jaccard,
               :weight => 5.0
end

module Hitchhike
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    Recommendify.redis = Redis.new
    recommender = MyRecommender.new
    $recommender = recommender
    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true
    config.assets.paths << Rails.root.join('app', 'assets', 'fonts')
  end
end
