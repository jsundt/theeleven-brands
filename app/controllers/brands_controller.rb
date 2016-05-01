class BrandsController < ApplicationController

  def show
    @company = params[:company] if params[:company]

    respond_to do |format|
      format.js
      format.html { render :template => "welcome/home" }
    end
  end
end
