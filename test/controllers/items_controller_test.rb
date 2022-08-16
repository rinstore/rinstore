# frozen_string_literal: true

require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @items = items(:two)
  end

  test 'the index' do
    get '/'
    assert_response :success
  end
end
