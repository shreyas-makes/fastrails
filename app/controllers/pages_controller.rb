class PagesController < ApplicationController
  def welcome
    render inertia: 'Pages/Welcome'
  end
end
