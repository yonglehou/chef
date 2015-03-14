#
# Author:: Lamont Granquist (<lamont@chef.io>)
# Copyright:: Copyright (c) 2015 Opscode, Inc.
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# WARNING: when adding require lines here you are creating tight coupling on a global that may be
# included in many different situations and ultimately that ends in tears with circular requires.
# Note the way that the run_context, provider_priority_map and resource_priority_map are "dependency
# injected" into this class by other objects and do not reference the class symbols in those files
# directly and we do not need to require those files here.

class Chef
  class << self
    # Chef.run_context
    # @return [Chef::RunContext] run_context of the chef-client run
    attr_accessor :run_context

    # Chef.provider_priority_map
    # @return [Chef::Platform::ProviderPriorityMap] provider_priority_map of the chef-client run
    attr_accessor :provider_priority_map

    # Chef.resource_priority_map
    # @return [Chef::Platform::ResourcePriorityMap] resource_priority_map of the chef-client run
    attr_accessor :resource_priority_map
  end
end
