class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def all

    @cards = available_cards

    @debug = params[:debug].present? and params[:debug] == "1"

    render  pdf:          "minglo_all",
            template:     'minglo/pages',
            layout:       'application',
            show_as_html: @debug

  end

  def generate

    nb_pages = params.fetch('pages', 1).to_i

    files = available_cards

    @cards = []

    nb_pages.times do
      @cards += files.sample(24)
    end

    @debug = params[:debug].present? and params[:debug] == "1"

    render  pdf:          "minglo_pages",
            template:     'minglo/pages',
            layout:       'application',
            show_as_html: @debug
  end

  private

  def available_cards
    Dir[Rails.root.join('app', 'assets', 'images', 'cards', "*.{gif,jpg,jpeg,png}").to_s]
  end

end
