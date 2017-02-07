class TradesController < ApplicationController
  before_action :authenticate_user!
  layout 'trade'

  def index
  end
end
