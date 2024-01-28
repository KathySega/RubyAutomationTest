# frozen_string_literal: true

class StorageResultPage  < SitePrism::Page
    element :available_storages,:xpath, "//h1[contains(text(),'Find a Storage Unit Near You')]"
    element :unavailable, :xpath, "//p[contains(text(),'There are no locations nearby matching your search')]"
    element :error_message_not_found, :xpath, "//li[contains(text(),'We could not find your location. Please enter your')]"
end
