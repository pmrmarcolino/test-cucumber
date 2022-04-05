include RSpec::Matchers

class User < SitePrism::Page
    set_url '/users/new'
    
    element :name, "#user_name"
    element :last_name, "#user_lastname"
    element :email, "#user_email"
    element :address, "#user_address"
    element :university, "#user_university"
    element :profile, "#user_profile"
    element :gender, "#user_gender"
    element :age, "#user_age"
    element :send, 'input[value="Criar"]'
    element :notice, "#notice"

    def forms(user_name, user_last_name, user_email, user_address, user_university,
         user_profile, user_gender, user_age)
        
        name.set(user_name)
        last_name.set(user_last_name)
        email.set(user_email)
        address.set(user_address)
        university.set(user_university)
        profile.set(user_profile)
        gender.set(user_gender)
        age.set(user_age)
        send.click()
        
    end

    def forms_success (message)
        expect(notice.text).to eq(message)
    end

end