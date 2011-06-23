# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Division.delete_all

#Divisiones de ejemplo
Division.create(:nombre => "Primera", :escudo => "escudo_lfp.jpg")
Division.create(:nombre => "Segunda", :escudo => "escudo_adelante.jpg")

Equipo.delete_all
Equipo.create(:nombre => "Real Madrid", :escudo => "real-madrid.gif", :division_id => 1)
Equipo.create(:nombre => "FC Barcelona", :escudo => "fc-barcelona.gif", :division_id => 1)
Equipo.create(:nombre => "Real Betis Balompie", :escudo => "betis.gif", :division_id => 1)
Equipo.create(:nombre => "Cadiz", :escudo => "cadiz-cf.gif", :division_id => 2)
Equipo.create(:nombre => "Nastic de Tarragona", :escudo => "gimnastic-tarragona.gif", :division_id => 2)

Jornada.delete_all
Jornada.create(:numero => 1, :fecha => "01/01/2011", :finalizada => 0)
Jornada.create(:numero => 2, :fecha => "01/02/2011", :finalizada => 1)
Jornada.create(:numero => 3, :fecha => "01/03/2011", :finalizada => 0)
Jornada.create(:numero => 4, :fecha => "01/04/2011", :finalizada => 1)
