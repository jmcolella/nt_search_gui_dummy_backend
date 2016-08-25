class FoldersController < ApplicationController

  def show
    @folder = Folder.find_by(id: params[:id])

    render json: { sub_folders: @folder.sub_folders, documents: @folder.documents }

  end

end
