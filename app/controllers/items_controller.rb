# frozen_string_literal: true

class ItemsController < ApplicationController
  include Import['operations.create_user', 'operations.show_items']

  def index
    page_to_show = request.params[:page]&.to_i || 1
    @pager = show_items.show(page_to_show)
  end
end

