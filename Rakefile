require 'rux'
require 'rux_bootstrap'

task :compile do
  Rux.library_paths.each do |library_path|
    Dir.glob(File.join(library_path, '**/*.rux')).each do |file|
      Rux::File.new(file).write
      puts "Compiled #{file}"
    end
  end
end
