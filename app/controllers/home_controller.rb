# frozen_string_literal: true

class HomeController < ApplicationController
  def index; end

  def bug
    render json: 500 / 0
  end
end
