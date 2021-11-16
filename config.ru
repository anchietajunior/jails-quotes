# frozen_string_literal: true

require_relative 'config/app'
$LOAD_PATH << "#{__dir__}/app"

run Quotes::App.new
