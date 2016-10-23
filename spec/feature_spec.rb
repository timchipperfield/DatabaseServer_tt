require 'spec_helper'

feature 'the user can navigate as they follow the prompts' do
  scenario 'user gets prompt after initial key and value' do
    visit '/set?examplekey=examplevalue'
    expect(page.status_code).to be(200)
    expect(page).to have_content('Try typing get?key=somekey')
  end

  scenario 'user finds out if they found their value or not' do
    visit '/set?examplekey=examplevalue'
    visit '/get?key=examplekey'
    expect(page.status_code).to be(200)
    expect(page).to have_content('Was your value')
  end
end

feature 'saving and using key and value' do
  scenario 'the user can set a key and value' do
    visit '/set?examplekey=examplevalue'
    visit('/get?key=examplekey')
    expect(page).to have_content('examplevalue')
  end
end

feature 'edge cases' do
end
