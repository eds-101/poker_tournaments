feature 'adding poker results' do
  scenario 'record results of a recently played game' do
    visit '/'
    click_link 'Add new results'
    fill_in 'date', with: '01/04/2021'
    fill_in 'players', with: 'James, Mark, Bill, Anton'
    fill_in 'winner', with: 'Bill'
    fill_in 'location', with: "Stef's House"
    click_button 'Submit'
    expect(page).to have_content 'New results added'
    expect(page).to have_content 'Winner: Bill'
  end
end