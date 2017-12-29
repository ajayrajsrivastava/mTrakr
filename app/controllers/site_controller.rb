class SiteController < ApplicationController
  before_action :authenticate_user!
  
  def categories; end
  def transactions; end
  def overviews; end
end
