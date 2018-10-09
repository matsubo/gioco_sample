gioco sample
=================

- Tutorial for gioco with acctual code
  - https://github.com/joaomdmoura/gioco
- Create milestones and achieving it by reaching a specific point.
- Tested with rails 4.0.2

Create rails ap and initialize gioco.
--------------------

```ruby
rails new a
cd a
echo "gem 'gioco'" >> Gemfile
bundle install
rails generate scaffold user name:string
bundle exec rake db:migrate
rails g gioco:setup --points --kinds
```


Prepare badges
------------------

```ruby
bundle exec rake 'gioco:add_badge[good  ,         5, grade, 1 ]'
bundle exec rake 'gioco:add_badge[great ,        10, grade, 1 ]'
bundle exec rake 'gioco:add_badge[super great ,  50, grade, 1 ]'
bundle exec rake 'gioco:add_badge[fever       , 100, grade, 1 ]'
```




Test the badge by achieving speicfic point
-------------------

```ruby
% rails console
> user = User.new
> user.name = 'matsu'
> user.save()
> kind_id = Kind.where('name = ? ', 'grade').pluck(:id).pop
> user.change_points({
  points:1,
  kind: kind_id
})
> user.next_badge?()
> user.change_points({
  points: 10,
  kind: kind_id
})
> user.badges
> user.points

```



Test ranking
---------------

```ruby
% rails console
> Gioco::Ranking.generate
```


