# Ransible

Run Ansible from Ruby.

## Installation

Add this line to your application's Gemfile:

    gem 'ransible'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ransible

Install ansible with Homebrew:

    $ brew install ansible


## Usage

Run ansible playbook.

```
result = Ransible::Runner.new('/path/to/playbook.yml', '/path/to/inventory').run

puts result.log
=> run playbook log.
```


## Contributing

1. Fork it ( https://github.com/[my-github-username]/ransible/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
