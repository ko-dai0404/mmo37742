class CreditCardsController < ApplicationController
  def index
    @credit_cards = CreditCard.all
  end

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.new(credit_card_params)
    if @credit_card.valid?
      @credit_card.save
      redirect_to credit_cards_index_path
    else
      render :new
    end
  end

  def destroy
    credit_card = CreditCard.find(params[:id])
    credit_card.destroy
    redirect_to credit_cards_index_path
  end



  private

  def credit_card_params
    params.require(:credit_card).permit(:card_name).merge(user_id: current_user.id)
  end
end
