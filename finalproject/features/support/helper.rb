module Helper
    def screenshot(file_name, result)
        path_file = "reports/screenshots/test_#{result}"
        photo = "#{path_file}/#{file_name}.png"
        page.save_screenshot(photo)
        attach photo, 'image/png'
    end
end