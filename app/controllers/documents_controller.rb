class DocumentsController < ApplicationController
    before_action :authenticate_user! , only: [:create, :edit, :update, :new]

    def index
      @documents = Document.all
    end

    def user_index
      @documents = Document.where(:user_id => current_user.id)
    end

    def new
      @document = Document.new
    end

    def create
      @user = current_user
      @document = Document.new(document_params)
      @document.user_id = @user.id
      if @document.save
        flash[:notice]='文档发布成功！'
        redirect_to user_index_documents_path
      else
        render :new
      end
    end

    def edit
      @document = Document.find(params[:id])
    end

    def update
      @document = Document.find(params[:id])
      if @document.update(document_params)
        flash[:notice]='文档编辑成功！'
        redirect_to user_index_documents_path
      else
        render :edit
      end
    end

    def destroy
      @document = Document.find(params[:id])
      if @document.destroy
        flash[:notice]='文档删除成功！'
        redirect_to user_index_documents_path
      end
    end

    private

    def document_params
      params.require(:document).permit(:file_name, :file_type, :file)
    end
end
