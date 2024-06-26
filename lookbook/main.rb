source_paths.unshift(File.dirname(__FILE__))

gem_group :development do
  gem "lookbook", ">= 2.2.2"
  gem "listen"
  gem "actioncable"
end

copy_file "files/lookbook.rb", "config/initializers/lookbook.rb"
directory "files/src", "lookbook"

inject_into_file "config/routes.rb", before: /^end/ do %Q{  
  if Rails.env.development?
    mount Lookbook::Engine, at: "/lookbook"
  end
}
end

after_bundle do
  git add: "."
  git commit: %Q{ -m "install and configure lookbook" }
end
