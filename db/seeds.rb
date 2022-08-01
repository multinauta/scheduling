# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
country = Country.find_or_create_by(name: 'Chile')
state = State.find_or_create_by(name: 'Región Metropolitana', country_id: 1)
city = City.find_or_create_by(name: 'Santiago', state_id: 1)
city = City.find_or_create_by(name: 'Las Condes', state_id: 1)
place = Place.find_or_create_by(name: 'Centro 1', city_id: 1)
place = Place.find_or_create_by(name: 'Centro 2', city_id: 2)
sub_place = SubPlace.find_or_create_by(name: 'Box 1', place_id: 1)
sub_place = SubPlace.find_or_create_by(name: 'Box 2', place_id: 2)
rol = Rol.find_or_create_by(name: 'Invitado')
rol = Rol.find_or_create_by(name: 'Oftalmólogo')
rol = Rol.find_or_create_by(name: 'Cirujano')
rol = Rol.find_or_create_by(name: 'Dertmatólogo')
rol = Rol.find_or_create_by(name: 'Medicina General')
User.create({
              email: 'juan@oftalmologo.com',
              password: 'password',
              password_confirmation: 'password',
              rol_id: 2,
              place_id: 1
            })
User.create({
              email: 'pedro@cirujano.com',
              password: 'password',
              password_confirmation: 'password',
              rol_id: 3,
              place_id: 2
            })
User.create({
              email: 'maria@dermatologa.com',
              password: 'password',
              password_confirmation: 'password',
              rol_id: 4,
              place_id: 2
            })

User.create({
              email: 'alberto@medicinageneral.com',
              password: 'password',
              password_confirmation: 'password',
              rol_id: 5,
              place_id: 1
            })
