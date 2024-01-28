nav_bar = NavBar.new
Given(/^I am on the homepage$/) do
    visit '/'
end

When('I select {string} from the top menu') do |menu_item|
    nav_bar.click_main_menu_option(menu_item)
end

When('I select {string} from the sub-menu') do |sub_menu_item|
    nav_bar.click_on_storage_submenu(sub_menu_item)
end

Then('I should see the {string} page') do |page_name|
    expect(nav_bar).to have_content(page_name)
end
