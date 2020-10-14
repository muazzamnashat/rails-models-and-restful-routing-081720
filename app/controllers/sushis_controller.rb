class SushisController < ApplicationController
    before_action :set_sushi, only: [:show]
def index
    @sushis =Sushi.all
end

def show
    if !@sushi
        redirect_to sushi_path
    end
end

def new
    @sushi=Sushi.new
end

def create
    
end

private 

def set_sushi
    @sushi= Sushi.find_by_id(id: params[:id])
end


end
