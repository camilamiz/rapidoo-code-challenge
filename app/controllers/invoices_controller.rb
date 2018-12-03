class InvoicesController < ApplicationController
  before_action :set_invoice, only: [:show, :destroy, :edit, :update]

  def index
    @invoices = Invoice.where(user_id: current_user.id, saved: true)
  end

  def show
  end

  def new
    @user = current_user
    @invoice = Invoice.new
    @invoices = Invoice.where(user_id: current_user.id, saved: nil)
  end

  def create
    @invoice = Invoice.new(invoice_params)
    terms = @invoice.terms
    @invoice.rate = ((terms / 10.to_f).ceil) * 0.0165
    @invoice.receivable = @invoice.invoice_value * (1 - @invoice.rate)
    @invoice.user = current_user
    @invoice.saved = true if saved_invoice?

    if @invoice.saved
      if @invoice.save
        redirect_to invoices_path
      else
        render :new
      end
    else
      if @invoice.save
        redirect_to new_invoice_path
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    @invoice.saved = true
    @invoice.update(invoice_params)
    redirect_to invoices_path
  end

  def destroy
    @invoice.destroy
    redirect_to invoices_path
  end

  private

  def set_invoice
    @invoice = Invoice.find(params[:id])
  end

  def invoice_params
    params.require(:invoice).permit(:invoice_value, :terms)
  end

  def saved_invoice?
    params[:commit] == 'Salvar'
  end

  # def simulation?
  #   params[:commit] == 'Simular'
  # end

end
