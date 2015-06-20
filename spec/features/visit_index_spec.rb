require 'rails_helper'

feature 'visits paths' do
  let(:user) { create(:user) }
  let(:login) { LoginPage.new }

  standard = [:index, :show, :edit, :new]
  paths = {
    companies: standard,
    customers: standard,
    cities: [:index, :show, :new],
    machines: standard,
    machine_types: standard,
    brands: standard,
    products: standard,
    work_types: standard,
    statics: [:index]
  }

  Steps 'Checking out pages' do
    login.visit_page.login(user, '12345678')
  end

  paths.each do |key, value|
    value.each do |v|
      Steps %(Controller: #{key}, action: #{v}) do
        if v == :show || v == :edit
          resource = create(key.to_s.singularize.to_sym)
          page.visit url_for(controller: key, action: v, id:
                             resource.to_param)
        else
          page.visit url_for(controller: key, action: v)
        end
        expect(page.status_code).to eq(200)
      end
    end
  end
end
