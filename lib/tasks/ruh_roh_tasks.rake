namespace :ruh_roh do
  desc "generates error pages"
  task :generate => :environment do
    RuhRoh::Generator.new.generate!
  end
end
