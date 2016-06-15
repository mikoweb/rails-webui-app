module Webui
  module Helper
    # @param [Array] path
    # @param [String] arr_name
    # @param [String] relative_path
    # @return [String]
    def webui_modules_paths(path, relative_path, arr_name='modules')
      files = Dir.glob(path.join(*%w( ** *.js)))
      files += Dir.glob(path.join(*%w( ** *.js.erb)))
      code = ''
      files.each do |file|
        module_name = file[0, file.index('.')]
        module_filename = javascript_path(module_name.sub(Rails.root.to_s + '/' + relative_path + '/', ''))
        code += arr_name + "['" + module_name.sub(path.to_s + '/', '') + "'] = '" + module_filename.sub('.js', '') + "'\n"
      end

      code
    end
  end
end
