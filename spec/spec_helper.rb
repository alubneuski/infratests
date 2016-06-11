require 'serverspec'
require 'serverspec-aws-resources'

set :backend, :exec

@http_proxy = "http://someproxy.com"
