# frozen_string_literal: true

class ItemsController < ApplicationController
  include Import['operations.create_user', 'operations.show_items']

  def index
    @pager = helpers.pager
  end
end
