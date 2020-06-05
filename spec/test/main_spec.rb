# frozen_string_literal: true

require_relative '../pages/main_page'

describe 'Access the page' do
  # before do
  #     @mainPage.new
  # end

  it 'Access the Page' do
    visit 'https://www.trivago.com.br/'

    fill_in 'sQuery', with: 'Manaus'

    find('#suggestion-56507/200').click

    find('.js-dealform-button-guests').click

    find('.roomtype-btn__label', text: 'Individual').click

    click_button 'Pesquisar'

    expect(page).to have_xpath('//span[contains(text(),"Hotel Do Largo")]')
  end
end
