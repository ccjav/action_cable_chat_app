class VisitsController < ApplicationController
  def create
    ActionCable.server.broadcast 'room_channel',
                                   content:  current_visit.visit_token,
                                   username: current_visit.visitor_token
    head :ok
  end
end
