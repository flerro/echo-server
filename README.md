# echo-server

This is a python socket server that echos back any http request made to it.

## Example
Make a custom request:
```
$ curl --header "Favorite-Color: Purple" \
      --data "param1=value1&param2=value2"\
      http://localhost:8080/hello-mars
```

Prints:
```
$ python app.py
Echoing from http://localhost:8080
127.0.0.1 - Thu Mar 15 23:43:27 2018 - POST /hello-mars HTTP/1.1
```

Returns
```
POST /hello-mars HTTP/1.1
Host: localhost:3246
User-Agent: curl/7.54.0
Accept: */*
Favorite-Color: Purple
Content-Length: 27
Content-Type: application/x-www-form-urlencoded

param1=value1&param2=value2
```

## Requirements

Python 3.4+

No other dependencies


## Running

Default port is 8080

Python:
```
./app.py
```

Docker:
```
docker build -t echo-server .
docker run -itp 8080:8080 echo-server
```

Openshift
```
oc new-app centos/python-35-centos7~https://github.com/flerro/echo-server --name=httpecho
```

Image build with `s2i`

```
s2i build https://github.com/flerro/echo-server centos/python-35-centos7 httpecho
```

### Options
```
  -b BIND, --bind BIND  host to bind to
  -p PORT, --port PORT  port to listen on
  -v, --verbose         print all requests to terminal
```

## References

Forked from -> https://github.com/cdfuller/echo-server

