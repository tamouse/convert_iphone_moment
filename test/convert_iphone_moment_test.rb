# frozen_string_literal: true

require "test_helper"

class ConvertIphoneMomentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ConvertIphoneMoment::VERSION
  end

  def test_extracting_moment_with_name
    folder_name = "Mendota Heights, January 23, 2020"
    assert_equal "January 23, 2020", ::ConvertIphoneMoment.extract_date(folder_name)
  end

  def test_extracting_moment_without_name
    folder_name = "January 23, 2020"
    assert_equal "January 23, 2020", ::ConvertIphoneMoment.extract_date(folder_name)
  end

  def test_parsing_date
    date = "January 23, 2020"
    assert_equal "2020-01-23", ::ConvertIphoneMoment.parse_date(date)
  end

  def test_parse_bad_date
    date = "I am not a date, waah waah"
    assert_raises ::ConvertIphoneMoment::Error do
      ::ConvertIphoneMoment.parse_date(date)
    end
  end
end
