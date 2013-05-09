class QueriesController < ApplicationController
  active_scaffold :queries do |config|
    config.columns[:querystring].form_ui = :textarea
  end


end