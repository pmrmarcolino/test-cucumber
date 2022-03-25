Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}

module PageObjects
    def home
        # o ou, se já tiver instaciado não faz novamente
        home ||= AjaxPage.new
    end
    
end