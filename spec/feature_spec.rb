require 'spec_helper'

feature 'saving and using key and value' do
  scenario 'the user can set a key and value' do
    visit '/set?examplekey=examplevalue'
    visit('/get?examplekey')
    expect(page).to expect(page).to have_current_path(/examplevalue/)
  end
end
