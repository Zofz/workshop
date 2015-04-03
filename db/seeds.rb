# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.find_or_create_by!(title: :admin, name: 'Administratör', description: 'Detta är en administratör')
Role.find_or_create_by!(title: :owner, name: 'Ägare', description: 'Detta är en ägare')
Role.find_or_create_by!(title: :worker, name: 'Arbetare', description: 'Detta är en arbetare')
