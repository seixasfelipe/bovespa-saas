require "sinatra/activerecord/rake"
require 'rspec/core/rake_task'

desc "run specs"
RSpec::Core::RakeTask.new 'spec' do |t|
  t.pattern = 'spec/bovespa_saas/*_spec.rb'
  t.rspec_opts = ['--color', '--format progress']
end

task :default => [:spec]

# later deployment task depending on bundle and specs
# namespace :vmc do
#   desc "update cloud foundry deployment"
#   task :update => [:bundle, :spec] do
#     sh "vmc update #{VMC_APP_NAME}"
#   end
# end