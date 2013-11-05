require 'rspec'

config = RSpec.configuration
json_formatter = RSpec::Core::Formatters::JsonFormatter.new(config.out)

# create reporter with json formatter
reporter =  RSpec::Core::Reporter.new(json_formatter)
# set reporter for rspec configuration
config.instance_variable_set(:@reporter, reporter)

# execute rspec runner
# 'example_spec.rb' is the location of the spec file
RSpec::Core::Runner.run(['example_spec.rb'])

# output test result as json
# see example output in `rspec_json_formatter_result.rb`
puts json_formatter.output_hash
