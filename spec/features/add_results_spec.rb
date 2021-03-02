feature 'adding poker results' do
  scenario 'record results of a recently played game' do
    visit '/'
    click_link 'Add new results'
    fill_in 'date', with: '01/04/2021'
    fill_in 'location', with: "Stef's House"
    fill_in 'players_count', with: '4'
    click_button 'Add player and ranking details'
    # fill_in 'winner', with: 'Bill'
    expect(page).to have_field! "name", :count => 4
    expect(page).to have_link "Go back", :href => "/add_results"
    expect(page).to have_content 'Winner: Bill'
  end
end

=begin
New result

-1-
When
Where
How many players?

-2-
For each player:
Name
Rank (based on how many players)
Money spent
Money won



=end