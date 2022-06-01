class LocalesController < ApplicationController
  
  def switch

    case session[:locale].to_sym
      in :ru
        session[:locale] = :en
      in :en
        session[:locale] = :ru
    end
    redirect_to "/"
  end
end
