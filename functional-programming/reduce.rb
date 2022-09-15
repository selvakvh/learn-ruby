p(
  [1, 2, 3, 4, 5, 6, 7, 8].reduce(0) { |sum, element| sum + element }
)
p(
  [0, 1, 2, 3, 4, 5, 6, 7, 8].reduce(1) { |sum, element| sum * element }
)

states = ['Kansas', 'Nebraska', 'North Dakota', 'South Dakota']

def imperative_lengths(states)
  lengths = {}
  states.each do |state|
    lengths[state] = state.length
  end
  lengths
end

p imperative_lengths(states)

states = ['Kansas', 'Nebraska', 'North Dakota', 'South Dakota']
p(
  states.each_with_object({}) do |state, lengths|
    lengths[state] = state.length
  end
)
