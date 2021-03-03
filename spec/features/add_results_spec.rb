feature 'adding poker results' do
  scenario 'record results of a recently played game' do
    visit '/'
    click_link 'Add new results'
    fill_in 'date', with: '01/04/2021'
    fill_in 'location', with: "Stef's House"
    fill_in 'players_count', with: '4'

    click_button 'Add player and ranking details'
    # expect(page).to have_tag "input[name^=name]", :count => 4
    expect(page).to have_link "Go back", :href => "/add_context"

    fill_in 'name1', with: "Stef"
    fill_in 'ranking1', with: "3"
    fill_in 'rebuy_value1', with: 0
    fill_in 'money_won1', with: 0

    fill_in 'name2', with: "James"
    fill_in 'ranking2', with: "1"
    fill_in 'rebuy_value2', with: 20
    fill_in 'money_won2', with: 70

    fill_in 'name3', with: "Yas"
    fill_in 'ranking3', with: "2"
    fill_in 'rebuy_value3', with: 0
    fill_in 'money_won3', with: 30

    fill_in 'name4', with: "Laila"
    fill_in 'ranking4', with: "4"
    fill_in 'rebuy_value4', with: 0
    fill_in 'money_won4', with: 0

    click_button 'Finalize results'

    expect(page).to have_content "Results added to database!"
    expect(page).to have_content "Winner: James"
    expect(page).to have_content "Second Place: Yas"
    expect(page).to have_content "Third Place: Stef"
    expect(page).to have_content "Pot: 100"
  end
end
