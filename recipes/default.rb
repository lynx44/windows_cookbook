#
# Author:: Seth Chisamore (<schisamo@opscode.com>)
# Cookbook Name:: windows
# Recipe:: default
#
# Copyright:: 2011, Opscode, Inc.
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
#
# gems with precompiled binaries
%w{ win32-api win32-service }.each do |win_gem|
  chef_gem win_gem do
    options '--platform=mswin32'
    action :install
  end
end

# the rest
%w{ ruby-wmi windows-api windows-pr win32-dir win32-event win32-mutex }.each do |win_gem|
  chef_gem win_gem do
    action :install
  end
end
