states = ['Kansas', 'Nebraska', 'North Dakota', 'South Dakota']
def imperative_urls(states)
  urls = []
  states.each do |state|
    urls << state.downcase.split.join('-')
  end
  urls
end
p imperative_urls(states)

p(states.map { |state| state.downcase.split.join('-') })

p(
  [1, 2, 3, 4].map { |n| n * n }
)

p(
  states.map(&:upcase)
)

def urlify(state)
  "https://example.com/#{state.downcase.split.join('-')}"
end

p(
  states.map { |state| urlify(state) }
)
