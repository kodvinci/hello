class DocumentsController < ApplicationController
  def index
    @categories = Category.includes(:documents)
  end

  def show
    document = Document.find params[:id]
    redirect_to document.doc_file.expiring_url(10)
  end
end
