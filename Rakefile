require 'rake'
require 'erb'

task :default => [ :install ]

desc "Install dotfiles to home directory using symlinks"
task :install do
  replace_all = false
  home = File.expand_path(ENV['HOME'])
  ignored = %w(Rakefile README.md)

  Dir['*'].each do |file|
    next if ignored.include?(file)

    filename = file.sub('.erb', '')
    target = File.expand_path(File.join(home, ".#{filename}"))

    if File.exist?(target) or File.symlink?(target) or File.directory?(target)
      if File.identical?(file, target)
        puts "Identical #{filename}"
      else
        if replace_all
          replace_target(file, target)
        else
          print "Replace existing file #{filename}? [ynaq] "
          case $stdin.gets.chomp
          when 'a'
            replace_all = true
            replace_target(file, target)
          when 'y'
            replace_target(file, target)
          when 'q'
            puts "Abort"
            exit
          else
            puts "Skipping #{filename}"
          end        
        end
      end
    else
      link_target(file, target)
    end
  end
end

def link_target(file, target)
  filename = file.sub('.erb', '')
  if file =~ /.erb$/
    puts "Generating #{filename}"
    File.open(target, 'w') do |output|
      output.write(ERB.new(File.read(file)).result(binding))
    end
  else
    puts "Symlink #{filename}"
    source = File.expand_path(File.join(File.dirname(__FILE__), file))
    File.symlink(source, target)
  end
end

def backup_target(target)
  backup = "#{target}.orig"
  puts "Backing up #{target} to #{backup}"
  File.rename(target, backup)
end

def replace_target(file, target)
  backup_target(target)
  link_target(file, target)
end

def prompt_for_value(message)
  print "Enter #{message}: "
  return $stdin.gets.chomp
end
