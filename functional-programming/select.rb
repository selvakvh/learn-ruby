states = ['Kansas', 'Nebraska', 'North Dakota', 'South Dakota']

def imperative_singles(states)
  singles = []
  states.each do |state|
    singles << state if state.split.length == 1
  end
  singles
end
p imperative_singles(states)

p(
  states.select { |state| state.split.length == 1 }
)

p(
  [1, 2, 3, 4, 5, 6, 7].select { |n| n.even? }
)

p(
  [1, 2, 3, 4, 5, 6, 7].select(&:even?)
)

p(
  states.select { |state| state.include?('Dakota') }
)
p(
  states.select { |state| state.split.length==2 }
)