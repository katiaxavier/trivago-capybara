# frozen_string_literal: true

describe 'Cart' do
  before do
    visit 'http://192.168.151.17'

    fill_in 'userLogin', with: 'v456'
    click_button 'PRÓXIMO'
    fill_in 'passwordLogin', with: 'v456'
    click_button 'PRÓXIMO'
    find('.mat-dialog-container', visible: false)
  end

  it 'should finalize sale', :sale do
    fill_in 'search-top-search', with: 'hg33036'
    find('#search-top-search-button').click

    find(:xpath, '//i[@class="material-icons pointer"]').click

    find('.message', visible: true)
    find('#navbar_shopping').click

    find('#cartFooterEndPayment').click
    find('.enviarCaixaButton').click
    expect(page).to have_selector('#appLogin', visible: true)
  end
end
