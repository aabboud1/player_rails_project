class SportsplayersController < ApplicationController

    def index
        @sportsplayers = Sportsplayer.all
        render "index"
    end

    def show
        @sportsplayer = Sportsplayer.find(params[:id])
        render "show"
    end

    def new
        @sportsplayer = Sportsplayer.new
        render "new"
    end

    def create
        @sportsplayer = Sportsplayer.find_or_create_by(approved_params(:name, :number, :position, :string, :sport))
        @sportsplayer.save
        redirect_to sportsplayer_path(@sportsplayer)
    end

    def edit
        @sportsplayer = Sportsplayer.find(params[:id])
        render "edit"
    end

    def update
        @sportsplayer = Sportsplayer.find(params[:id])
        @sportsplayer.update(approved_params(:number, :position, :string, :sport))
        redirect_to sportsplayer_path(@sportsplayer)
    end

    def destroy
        Sportsplayer.destroy(params[:id])
        redirect_to sportsplayers_path
    end

    def approved_params(*args)
        params.require(:sportsplayer).permit(*args)
    end

    def delete_all
        Sportsplayer.destroy_all
        redirect_to sportsplayers_path
    end

end
