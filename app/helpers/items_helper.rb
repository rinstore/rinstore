# frozen_string_literal: true

module ItemsHelper
  def cover(item)
    item.item_images.where(cover: true)
  end
end
