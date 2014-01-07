kind = Kind.find_or_create_by(name: 'grade')
badge = Badge.create({ 
                      :name => 'great', 
                      :points => '10',
                      :kind_id  => kind.id,
                      :default => '1'
                    })
resources = User.find(:all)
resources.each do |r|
        r.points  << Point.create({ :kind_id => kinds.id, :value => '10'})
          r.badges << badge
          r.save!
        end
puts '> Badge successfully created'