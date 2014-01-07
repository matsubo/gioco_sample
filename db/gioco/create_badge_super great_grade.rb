kind = Kind.find_or_create_by(name: 'grade')
badge = Badge.create({ 
                      :name => 'super great', 
                      :points => '50',
                      :kind_id  => kind.id,
                      :default => '1'
                    })
resources = User.find(:all)
resources.each do |r|
        r.points  << Point.create({ :kind_id => kinds.id, :value => '50'})
          r.badges << badge
          r.save!
        end
puts '> Badge successfully created'