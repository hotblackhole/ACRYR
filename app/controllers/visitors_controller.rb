class VisitorsController < ApplicationController
  def index
    @claims = Claim.all
  end
end
