# frozen_string_literal: true

describe 'Product' do
  before do
    visit 'http://192.168.151.17'

    fill_in 'userLogin', with: 'v420'
    click_button 'PRÓXIMO'
    fill_in 'passwordLogin', with: 'v420'
    click_button 'PRÓXIMO'
  end

  it 'should add product', :produto do
    fill_in 'search-top-search', with: 'hg33036'
    find('#search-top-search-button').click
    find(:xpath, '//i[@class="material-icons pointer"]').click

    expect(find('.message')).to have_content 'Item adicionado com sucesso'
    expect(find('.count_itens-cart')).to have_content '1'
  end

  it 'should remove product', :remove do
    fill_in 'search-top-search', with: 'hg33036'
    find('#search-top-search-button').click
    find(:xpath, '//i[@class="material-icons pointer"]').click
    find(:xpath, '//i[contains(text(),"remove_circle_outline")]').click

    expect(find('.message')).to have_content 'Item Removido com sucesso'
    expect(find('.count_itens-cart')).to have_content '0'
  end
end
