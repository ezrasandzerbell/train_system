# require('spec_helper')
#
# describe(StopName) do
#   describe('#name') do
#     it('will return the name of a stop_name')do
#       stop_name = StopName.new({:id => nil, :name => 'Stark st'})
#       expect(stop_name.name()).to(eq('Stark st'))
#     end
#   end
#
#   describe('.all') do
#     it('return an empty array at first') do
#       expect(StopName.all()).to(eq([]))
#     end
#   end
#
#   describe('#==') do
#     it('test for equivilance without instance ID') do
#       test_stop_name1 = StopName.new({:id => nil, :name => 'Stark st'})
#       test_stop_name2 = StopName.new({:id => nil, :name => 'Stark st'})
#       expect(test_stop_name1==test_stop_name2).to(eq(true))
#     end
#   end
#
#   describe('#save') do
#     it('saves user input to table') do
#       test_stop_name = StopName.new({:id => nil, :name => 'Stark st'})
#       test_stop_name.save()
#       expect(StopName.all()).to(eq([test_stop_name]))
#     end
#   end
#
#   describe('.find') do
#     it('finds instance of stop_names class by id') do
#       test_stop_name1 = StopName.new({:id => nil, :name => 'Stark st'})
#       test_stop_name1.save()
#       test_stop_name2 = StopName.new({:id => nil, :name => 'Alder st'})
#       test_stop_name2.save()
#       expect(StopName.find(test_stop_name1.id)).to(eq(test_stop_name1))
#     end
#   end
#
#   describe('#update') do
#     it('lets you update stop names in the database') do
#       stop_name = StopName.new({:id => nil, :name => 'Stark street'})
#       stop_name.save()
#       stop_name.update({:name => 'Alder street'})
#       expect(stop_name.name()).to(eq('Alder street'))
#     end
#
#
#     it('lets you add city to train') do
#       train = Train.new({:id => nil, :name => 'West Coast Rail'})
#       train.save()
#       portland = City.new({:id => nil, :name => 'Portland'})
#       portland.save
#       seattle = City.new({:id => nil, :name => 'Seattle'})
#       seattle.save
#       train.update({:city_ids => [portland.id, seattle.id]})
#       expect(train.cities()).to(eq([portland, seattle]))
#     end
#   end
#   #
#   # describe("#cities") do
#   #   it("returns all of the cities visited by a particular train") do
#   #     train = Train.new({:id => nil, :name => 'West Coast Rail'})
#   #     train.save()
#   #     portland = City.new({:id => nil, :name => 'Portland'})
#   #     portland.save
#   #     seattle = City.new({:id => nil, :name => 'Seattle'})
#   #     seattle.save
#   #     train.update({:city_ids => [portland.id, seattle.id]})
#   #     expect(train.cities()).to(eq([portland, seattle]))
#   #   end
#   # end
#
#   describe('#delete') do
#     it('deletes record from the database') do
#       stop_name = StopName.new({:id => nil, :name => 'Stark street'})
#       stop_name.save()
#       test_stop_name2 = StopName.new({:id => nil, :name => 'Alder street'})
#       test_stop_name2.save()
#       stop_name.delete()
#       expect(StopName.all).to(eq([test_stop_name2]))
#     end
#   end
#
# end
