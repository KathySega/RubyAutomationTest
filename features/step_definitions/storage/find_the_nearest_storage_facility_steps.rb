storage_page = StoragePage.new
storage_result_page = StorageResultPage.new

Given(/^I set my "([^"]*)" using different inputs$/) do |location|
    storage_page.set_your_location(location)
end


When(/^I request to find the nearest storage facility$/) do
    storage_page.click_find_storage
end

Then(/^I should be shown the nearest storage facility to location$/) do
    expect(storage_result_page).to have_available_storages
end

Given(/^I set my location in a remote area$/) do
    storage_page.set_your_location("99762")
end

Then(/^I should receive a message indicating no nearby facilities$/) do
    storage_result_page.wait_until_unavailable_visible
    expect(storage_result_page).to have_unavailable
end

Given(/^I set my location with invalid data$/) do
    storage_page.set_your_location("sg@adihlk$")
end

Then(/^I should receive a error message$/) do
    storage_result_page.wait_until_error_message_not_found_visible
    expect(storage_result_page).to have_error_message_not_found
end
