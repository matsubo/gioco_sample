kind = Kind.find_or_create_by(name: 'grade')
badge = Badge.create({ 
                      :name => 'fever', 
                      :points => '100',
                      :kind_id  => kind.id,
                      :default => '1'
                    })
resources = User.find(:all)
resources.each do |r|
        r.points  << Point.create({ :kind_id => kinds.id, :value => '100'})
          r.badges << badge
          r.save!
        end
puts '> Badge successfully created'