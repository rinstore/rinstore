# frozen_string_literal: true

module ItemsHelper
  def pager(page = 1)
    Pager.new_items_pager(page)
  end
end
