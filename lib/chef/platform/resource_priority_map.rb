class Chef
  class Platform
    class ResourcePriorityMap
      include Singleton

      def initialize
        load_default_map
      end

      def load_default_map
        require 'chef/resources'
        # MacOSX
        priority :package, Chef::Resource::HomebrewPackage, os: "darwin"
      end

      def priority_map
        require 'chef/node_map'
        @priority_map ||= Chef::NodeMap.new
      end

      def priority(*args)
        priority_map.set(*args)
      end
    end
  end
end
