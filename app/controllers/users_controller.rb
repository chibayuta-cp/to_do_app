class UsersController < ApplicationController
  def show
    @things = current_user.things
  end
end
