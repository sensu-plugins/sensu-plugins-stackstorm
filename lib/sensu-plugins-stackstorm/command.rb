module SensuPluginsStackStorm
  class Command
    def self.run_python(*argv)
      bin_dir = File.expand_path(File.dirname(__FILE__)) + '/../../bin/'
      shell_script_path = File.join(bin_dir, File.basename($PROGRAM_NAME, '.rb') + '.py')
  
      exec shell_script_path, *argv
    end
  end
end
