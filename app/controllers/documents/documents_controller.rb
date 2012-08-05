module Documents
  class DocumentsController < Documents::ApplicationController
    respond_to :html, :json

    def index
      if params[:tag]
        @documents = Documents::Document.tagged_with(params[:tag])
      else
        @documents = Documents::Document.scoped
      end
      respond_with @documents
    end

    def new
      @document = Documents::Document.new
    end

    def create
      @document = Documents::Document.new(params[:document])
      @document.save
      respond_with @document
    end

    def show
      @document = Documents::Document.find(params[:id])
    end

    def edit
      @document = Documents::Document.find(params[:id])
    end

    def update
      @document = Documents::Document.find(params[:id])
      @document.update_attributes(params[:document])
      respond_with @document
    end

    def destroy
      @document = Documents::Document.find(params[:id])
      @document.destroy
      respond_with @document
    end

    def search
      @documents = Documents::Document.where("description like ?", "%#{params[:q]}%")
      render :index
    end

    def bulk
    end

  end
end
