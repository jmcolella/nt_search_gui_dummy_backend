class PartitionsController < ApplicationController

  def index
    @partitions = Partition.all

    render json: { partitions: @partitions }

  end

  def show
    @partition = Partition.find_by(id: params[:id])

    render json: { partition: @partition, folders: @partition.folders }

  end

end
