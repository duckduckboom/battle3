# feature "Homepage" do 
#     scenario "page displays correctly" do
#         visit "/" 
#         expect(page).to have_content("Testing infrastructure working!")
#     end
# end

feature "Homepage" do

    scenario "Form for player names" do
        visit "/"
        expect(page).to have_content("Enter your names")
        fill_in :player_1_name, with: "Richard"
        fill_in :player_2_name, with: "Oisin"
        click_button "Submit"
        save_and_open_page
        expect(page).to have_content("Richard versus Oisin")
    end
end
