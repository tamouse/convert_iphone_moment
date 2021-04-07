# frozen_string_literal: true

require "date"
require_relative "convert_iphone_moment/version"

module ConvertIphoneMoment
  class Error < StandardError
    attr_accessor :prior_exception
  end

  def self.extract_date(string)
    string.split.reverse.first(3).reverse.join(" ")
  end

  def self.parse_date(string)
    date = Date.parse(string)
    date.iso8601
  rescue Date::Error => ex
    error = Error.new("Could not parse date: #{string.inspect}")
    error.prior_exception = ex
    raise error
  end
end
