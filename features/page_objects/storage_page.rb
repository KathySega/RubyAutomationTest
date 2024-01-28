class StoragePage < SitePrism::Page
    set_url '/Storage/'

    element :your_location,:xpath, "//input[@id='movingFromInput']"

    #movingFromInput

    # Unit Size dropdown elements
    element :unit_size_dropdown, '//*[@id="selectboxUnitSizeInput"]'
    element :small_size_option, '//*[@id="storageUnitSizes"]/ul/li[1]/label'
    element :medium_size_option, '//*[@id="storageUnitSizes"]/ul/li[2]/label'
    element :large_size_option, '//*[@id="storageUnitSizes"]/ul/li[3]/label'

    # Types of Storage dropdown elements
    element :types_of_storage_dropdown, '//*[@id="selectboxInput"]'
    element :climate_control_checkbox, '//input[@id="ClimateControl"]'
    element :indoor_storage, '//input[@id="Indoor"]'
    element :outdoor_drive_up, '//input[@id="OutdoorDriveUp"]'
    element :wine_storage, '//input[@id="Wine"]'
    element :in_line_move_in, '//input[@id="OnlineMoveIn"]'
    element :rv_boat_vehicle, '//input[@id="RvBoatVehicle"]'

    element :find_storage,:xpath, '//button[contains(text(),"Find Storage")]'



    def set_your_location(location)
        your_location.set(location)
    end

    def select_small_size(size)
        case size
        when "small"
            small_size_option.click
        when "medium"
            medium_size_option.click
        when "large"
            large_size_option.click
        else
            puts"Not valid option"
        end
    end

    def click_find_storage
        find_storage.click
    end
end
