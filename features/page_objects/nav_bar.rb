class NavBar < SitePrism::Page
    element :nav_menu, '//ul[@id="mainHeaderMenu"]'
    element :storage_menu, "a[href='/Storage/'].show-for-large"
    element :move_in_online_today,  "a[href='/Storage/Online-Move-In/']"


    # def click_storage_menu
    #     wait_until_storage_menu_visible
    #     storage_menu.hover
    # end

    def click_main_menu_option(option)
        case option
        when "Storage"
            wait_until_storage_menu_visible
            storage_menu.hover
        end
    end

    # def click_move_in_online_today
    #     move_in_online_today.click
    # end

    def click_on_storage_submenu(option)
      case option
      when "Move-In Online Today!"
        move_in_online_today.click
      end
    end
end
