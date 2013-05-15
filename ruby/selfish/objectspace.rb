ObjectSpace.each_object {|o| if o.class == Class; puts "class: #{o.name}"; end }
ObjectSpace.each_object {|o| if o.class == Class; puts "class: #{o.name}" if o.name.include? 'Mix'; end }
ObjectSpace.each_object {|o| if o.class == Class; puts "class: #{o.name}" if o.name and o.name.include? 'Mix'; end }
ObjectSpace.each_object {|o| if o.class == Module; puts "module: #{o.name}" if o.name and o.name.include? 'Mix'; end }

