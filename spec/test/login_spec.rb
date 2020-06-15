# frozen_string_literal: true

describe 'Login' do
  it 'should log in' do
    visit 'http://192.168.151.17'

    fill_in 'userLogin', with: 'v420'
    click_button 'PRÓXIMO'
    fill_in 'passwordLogin', with: 'v420'
    click_button 'PRÓXIMO'

    expect(find('.user')).to have_content '456 - ANDERSON BARAT'
  end

  it 'should dont do log in invalid password', :test do
    visit 'http://192.168.151.17'

    fill_in 'userLogin', with: 'v420'
    click_button 'PRÓXIMO'
    fill_in 'passwordLogin', with: '1111'
    click_button 'PRÓXIMO'

    expect(find('.error')).to have_content 'Senha inválida'
  end
end
