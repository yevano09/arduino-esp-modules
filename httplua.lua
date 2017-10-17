local arg = arg or {...}

function httpget(url)
    http.get( url, nil, function(code, data)
        if (code < 0) then
            print("HTTP request failed")
        else
            print(code, data)
        end
    end)
end
input_url = arg[1]
if(input_url == nil ) then
	input_url="http://www.google.com"
end
httpget(input_url);
