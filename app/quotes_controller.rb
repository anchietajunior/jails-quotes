# frozen_string_literal: true

# QuotesController to handle Quotes
# Requests
class QuotesController < Jails::Controller
  def a_quote
    "What's up, Doc? Do you have a quote?"
  end

  def shakes
    @noun = :winking
    render(:shakes)
  end

  def card_trick
    n = params['card'] || 'Queen'
    "Your card: the #{n} of spaces!"
  end

  def fq
    @q = FileModel.find(params['q'] || 1)
    render :quote
  end
end
