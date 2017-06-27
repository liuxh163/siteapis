# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = User.create([
                     {
                       email: 'test-user-00@mail.com',
                       name: 'test-user-00',
                       activated: DateTime.now,
                       admin: false,
                       authentication_token: '123123',
                       password_digest: '$2a$10$3o5GIa71zPrvPIPFFDalGuQbiXI4oazZljLj5S25wXNRebhGnYlba'
                     },
                     {
                       email: 'test-user-01@mail.com',
                       name: 'test-user-01',
                       activated: DateTime.now,
                       admin: false,
                       authentication_token: '123123',
                       password_digest: '$2a$10$3o5GIa71zPrvPIPFFDalGuQbiXI4oazZljLj5S25wXNRebhGnYlba'
                     },
                     {
                       email: 'test-user-02@mail.com',
                       name: 'test-user-02',
                       activated: DateTime.now,
                       admin: false,
                       authentication_token: '123123',
                       password_digest: '$2a$10$3o5GIa71zPrvPIPFFDalGuQbiXI4oazZljLj5S25wXNRebhGnYlba'
                     },
                     {
                       email: 'test-user-03@mail.com',
                       name: 'test-user-03',
                       activated: DateTime.now,
                       admin: false,
                       authentication_token: '123123',
                       password_digest: '$2a$10$3o5GIa71zPrvPIPFFDalGuQbiXI4oazZljLj5S25wXNRebhGnYlba'
                     }
                    ])
