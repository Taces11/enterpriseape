class Invoices::PurchacesController < ApplicationController

  # GET /purchaces
  # GET /purchaces.json
  def index
    @purchaces = Purchace.all
  end

  # GET /purchaces/1
  # GET /purchaces/1.json
  def show
  end

  # GET /purchaces/new
  def new
    @invoice = Invoice.find(params[:invoice_id])
    @purchace = Purchace.new
  end

  # GET /purchaces/1/edit
  def edit
  end

  # POST /purchaces
  # POST /purchaces.json
  def create
    @invoice = Invoice.find(params[:invoice_id])
    @purchace = Purchace.new(purchace_params)
    @purchace.invoice = @invoice

    respond_to do |format|
      if @purchace.save
        format.html { redirect_to @invoice, notice: 'Purchace was successfully created.' }
        format.json { render :show, status: :created, location: @invoice }
      else
        format.html { render :new }
        format.json { render json: @invoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchaces/1
  # PATCH/PUT /purchaces/1.json
  def update
    respond_to do |format|
      if @purchace.update(purchace_params)
        format.html { redirect_to @purchace, notice: 'Purchace was successfully updated.' }
        format.json { render :show, status: :ok, location: @invoice }
      else
        format.html { render :edit }
        format.json { render json: @purchace.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchaces/1
  # DELETE /purchaces/1.json
  def destroy
    @invoice = Invoice.find(params[:invoice_id])
    @purchace = Purchace.find(params[:id])
    title = @purchace.name
    
    if @purchace.destroy
      flash[:notice] = "#{title} Was deleted successfully."
      redirect_to @invoice
    else
      flash[:error] = "There was an error deleting the purchase"
      render :show
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchace
      @purchace = Purchace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchace_params
      params.require(:purchace).permit(:name, :category, :quantity, :invoice_id)
    end
end
