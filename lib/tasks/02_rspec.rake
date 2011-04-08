#gem 'test-unit', '1.2.3' if RUBY_VERSION.to_f >= 1.9
#rspec_plugin_dir = File.expand_path(File.dirname(__FILE__) + '/../../vendor/plugins/rspec')
#$LOAD_PATH.unshift("#{rspec_plugin_dir}/lib") if File.exist?(rspec_plugin_dir)
#
#desc "Run all specs in spec directory (excluding plugin specs)"
#  Spec::Rake::SpecTask.new(:spec => spec_prereq) do |t|
#    rake_task do
#       Rake::Task.define_task("db:purge")
#    end
#    t.spec_opts = ['--options', "\"#{RAILS_ROOT}/spec/spec.opts\""]
#    t.spec_files = FileList['spec/**/*/*_spec.rb']#.exclude("spec/webrat/*").exclude("spec/jasmine/*").exclude("spec/webrat-fixtures/*")
#  end
#
