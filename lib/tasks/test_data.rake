namespace :db do
  desc 'Loads some stuff into the database for local testing'
  task(test_data: :environment) do
    # Users
    admin = User.find_or_initialize_by(firstname: 'David', lastname: 'Wessman', email: 'admin@mail.se',
                                    phone: '0705607889', role_id: 0)
    user = User.find_or_initialize_by(firstname: 'David', lastname: 'Wessman', email: 'user@mail.se',
                                   phone: '0705607889', role_id: 1)
    admin.update(password: 'passpass')
    user.update(password: 'passpass')
    admin.save!
    user.save!

    # WorkTypes
    WorkType.find_or_create_by!(title: 'Autotest')
    WorkType.find_or_create_by!(title: 'Autotest')
    WorkType.find_or_create_by!(title: 'Byte startsnöre')
    WorkType.find_or_create_by!(title: 'Service')
    WorkType.find_or_create_by!(title: 'Reparation')
    WorkType.find_or_create_by!(title: 'Oljebyte')
    WorkType.find_or_create_by!(title: 'Felsökning')
  end
end
