class ThingsController < ApplicationController

  before_action :authenticate_user!, except: :index



  before_action :set_thing, only: %i[edit update destroy]



  def index

    @things = Thing.all

  end



  def new

    @thing = Thing.new

  end



  def create

    thing = current_user.things.create!(thing_params)



    redirect_to users_path

  end



  def update

    if @thing.update!(thing_params)

      redirect_to users_path, notice: "編集しました"

    else

      render "edit_thing_path"

    end

  end



  def edit

    @thing = Thing.find(params[:id])

  end



  def destroy

    @thing.destroy!



    redirect_to users_path, notice: "削除しました"

  end



  def show

  end



  private



  def thing_params

    params.require(:thing).permit(:content, :start_time)

  end



  def set_thing

    @thing = current_user.things.find(params[:id])

  end

end

