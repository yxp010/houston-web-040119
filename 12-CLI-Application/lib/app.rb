$prompt = TTY::Prompt.new

def start

printMyName
temp = $prompt.mask("What is your secret?")
puts temp
end

# name = prompt.ask('What is your name?')
# puts name

# ans = prompt.yes?('Do you like Ruby?')
# puts ans

# temp = prompt.mask("What is your secret?")
# puts temp

# choose = prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))
# puts choose