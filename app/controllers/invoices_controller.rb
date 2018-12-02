class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :destroy]

  def index
    @invoices = Invoice.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @user = current_user
    @invoice = Invoice.new
    # @invoice_value = params[:invoice_value]
    # @due_date = params[:due_date]
    # invoice_factoring
  end

  def create
    @invoice = Invoice.new(invoice_params)

    if @invoice.save
      redirect_to invoices_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @invoice.update(invoice_params)
    @invoice.user = current_user
    redirect_to invoice_path(@invoice)
  end

  def destroy
    @invoice.destroy
    redirect_to invoices_path
  end

  private

  def set_invoice
    @invoice = Invoice.find(params(:id))
  end

  def invoice_params
    params.require(:invoice).permit(:invoice_value, :terms)
  end

  # def invoice_factoring
  #   i_day = 0.0165
  #   @terms = @due_date - Date.today
  #   @i_operation = ((@terms / 10).ceil) * i_day
  #   @receivable = @invoice_value * (1 - @i_operation)
  # end

end
