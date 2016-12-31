require 'rubygems'
require 'plivo'
include Plivo

AUTH_ID = "MAYJHJNDQXZWIYNDJJZJ"
AUTH_TOKEN = "ZjlmY2QxOTc3NGRiMjc5ZTAwZjI2ODhiNjQ0N2I4"

p = RestAPI.new(AUTH_ID, AUTH_TOKEN)
params = {
    'to' => '918902079912',
    'from' => '919572168486',
    'answer_url' => 'https://s3.amazonaws.com/static.plivo.com/answer.xml',
    'answer_method' => 'GET'
}

response = p.make_call(params)
print response
