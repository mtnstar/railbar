# Railbar

in the past it happend quite often to me that I confused any staging/test or even production system with my local development system because they look usually pretty the same. Luckily not a lot of harm done except for some lost time and confusion so far. 
That's why I came up with the idea of **Railbar** for Ruby on Rails, a HTML rendered bar that makes it obvious which system you are currently working on. And when creating such a bar, why not adding some status checks like for Turbo or Stimulus with it?

## Installation

Add this line to your Rails application's Gemfile:

```ruby
gem 'railbar'
```

Optionally only in your development group.

```bash
$ bundle install
```

finally add the bar to your layout file, e.g. `app/views/layouts/application.html.erb`

```erb
...
<%= railbar %>
```

## Configuration

coming ...
