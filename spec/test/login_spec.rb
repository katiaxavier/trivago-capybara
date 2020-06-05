describe 'Login' do

    it 'should log in', :test do
        visit 'http://192.168.151.93:8080'
    fill_in 'usuario', with: 'v320'
    fill_in 'password', with: 'v320'
    click_button 'ENTRAR'
    end

end