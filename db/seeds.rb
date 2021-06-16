# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{ name: 'Credishop', email: 'test@credishop.com', password: '123456' }])

user_role = User.find_by(name: 'Credishop')

Collaborator.create([name: 'Igor Santana', birthday: '22/06/1965', personal_phone_number: '(81) 98552-6985', 
postal_code: '69.042-740' , cpf: '145.002.510-22', state: 'AM' ,city: 'Manaus', address: 'Rua Paulo Paiva', neighborhood: 'Dom Pedro', number: 52, salary: 'R$ 1.000', inss: 'R$ 75', user_id: user_role.id])

Collaborator.create([name: 'Jose Campelo', birthday: '15/02/1983', personal_phone_number: '(81) 92565-4454', 
postal_code: '19.905-000' , cpf: '449.466.500-24', state: 'SP' ,city: 'Ourinhos', address: 'Rua Cambara', neighborhood: 'Vila São José', number: 325, salary: 'R$ 5.320', inss: 'R$ 5.320', user_id: user_role.id])

Collaborator.create([name: 'Renata Augusta', birthday: '02/07/1995', personal_phone_number: '(81) 99413-5646', postal_code: '68.906-823' , cpf: '566.109.970-39', state: 'AP' ,city: 'Macapá', address: 'Travessa Tucanos', neighborhood: 'Cabralzinho', number: 25, salary: 'R$ 3.000', inss: 'R$ 281,64', user_id: user_role.id])

Collaborator.create([name: 'Bruno Carvalo', birthday: '01/01/1950', personal_phone_number: '(81) 98724-5475', postal_code: '94.818-390', cpf: '707.682.570-85', state: 'RS',city: 'Alvorada', address: 'Rua Tasso Fragoso', neighborhood: 'Formoza', number: 658, salary: 'R$ 1.560', inss: 'R$ 124,73', user_id: user_role.id])

Collaborator.create([name: 'Jose Roberto', birthday: '06/06/1955', personal_phone_number: '(81) 99256-4561', postal_code: '68.908-573', cpf: '101.399.550-38', state: 'AP',city: 'Macapá', address:'Avenida Miss Fátima Diniz', neighborhood:'São Lázaro', number: 55, salary: 'R$ 2.120', inss: 'R$ 176,04', user_id: user_role.id])

Collaborator.create([name: 'Rafaela Costa', birthday: '11/01/1962', personal_phone_number: '(81) 95645-1564', postal_code: '49.095-100', cpf: '672.649.750-45', state: 'SE' ,city: 'Aracaju', address:'Avenida Farmacêutica Cezartina Régis', neighborhood:'Jabotiana', number: 658, salary: 'R$ 985', inss: 'R$ 73,88', user_id: user_role.id])

Collaborator.create([name: 'Maria das Graças', birthday: '09/01/1940', personal_phone_number: '(81) 94157-1564', postal_code: '92.120-210', cpf: '256.576.210-00', state: 'RS',city: 'Canoas', address:'Rua Marechal Rondon', neighborhood:'Niterói', number: 98, salary: 'R$ 2.000', inss: 'R$ 164,33', user_id: user_role.id])

Collaborator.create([name: 'Estevão José', birthday: '01/09/1965', personal_phone_number: '(81) 991424-3545', 
postal_code: '68.900-066', cpf: '180.766.260-80', state: 'AP',city: 'Macapá', address:'Avenida Machado de Assis', neighborhood:'Central', number: 256, salary: 'R$ 4.400', inss: 'R$ 4.400', user_id: user_role.id])

Collaborator.create([name: 'Marcelo Almeida', birthday: '25/03/1995', personal_phone_number: '(81) 99125-1454', 
postal_code: '58.421-180', cpf: '007.205.450-64', state: 'PB',city: 'Campina Grande', address:'Rua Três Irmãs', neighborhood:'Acácio Figueiredo', number: 98, salary: 'R$ 9.020', inss: 'R$ 713,09', user_id: user_role.id])

Collaborator.create([name: 'Josenildo Santos', birthday: '13/12/1974', personal_phone_number: '(81) 99875-1541', 
postal_code: '64.016-020', cpf: '996.728.950-38', state: 'PI',city: 'Teresina', address:'Rua David Caldas', neighborhood:'Macaúba', number: 65, salary: 'R$ 2.800', inss: 'R$ 257,64', user_id: user_role.id])