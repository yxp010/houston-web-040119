require_relative '../config/environment.rb'


describe 'Hero Class' do
    thor = Hero.new([ 
    {
        name: 'Super Strength',
        coolness: 3
    },
    {
        name:'Flight',
        coolness: 5
    },
    {
        name: 'Lighting Blast',
        coolness: 10
    }
])


it 'Should return coolest ability' do
    expect(thor.coolest_ability).to( eq({
        name: 'Lighting Blast',
        coolness: 10
    }))

end

it 'should return ordered abilities' do
    expect(thor.ordered_abilities).to( eq(
        ['Flight','Lighting Blast','Super Strength']
    ))
end

it 'accepts an ability and adds it to the array' do
  hash = {
        name: 'Hammer call',
        coolness: 5
    }
    expect(thor.add_ability(hash)).to( include(
        {
            name: 'Hammer call',
            coolness: 5
        }
    ))

end

it 'arguments should be only hash' do

    expect(thor.add_ability(2)).not_to(include(2))

    expect(thor.add_ability("abc")).not_to(include("abc"))
end





end