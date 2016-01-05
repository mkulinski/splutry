require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
  test "unique_tag" do 
    quote = Quote.create(:author => 'Hunter S. Thompson', :saying => 'A word to the wise is infuriating.')
    expected = 'HST#' + quote.id.to_s
    actual = quote.unique_tag
    assert_equal expected, actual
  end
end
