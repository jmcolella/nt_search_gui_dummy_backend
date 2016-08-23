class PartitionsController < ApplicationController

  def index
    @partitions = Partition.all

    if request.xhr?
      render json: { partitions: @partitions }
    end
  end

  def show
    @partition = Partition.find_by(id: params[:id])

    if request.xhr?
      render json: { partition: @partition, folders: @partition.folders }
    end
  end

end
