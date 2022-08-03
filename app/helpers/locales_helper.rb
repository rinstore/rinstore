# frozen_string_literal: true

module LocalesHelper
  def show_locale_image(height = 30)
    image_tag "/img/#{I18n.locale}.png", height: height
  end
end
