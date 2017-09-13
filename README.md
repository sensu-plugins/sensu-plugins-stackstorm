# Sensu-Plugins-StackStorm
[![Build Status](https://travis-ci.org/userlocalhost/sensu-plugins-stackstorm.svg?branch=master)](https://travis-ci.org/userlocalhost/sensu-plugins-stackstorm)

# Functionality

## Files

* st2_handler.py

# Installation
You can easily install this pack using [sensu-install](https://sensuapp.org/docs/latest/reference/plugins.html#installing-sensu-plugins) as following.
```
$ sudo sensu-install -p stackstorm
```

# Usage

## st2_handler.rb
```
usage: st2_handler.rb [-h] [--verbose] [--unauthed] [--ssl-verify]

StackStorm sensu event handler.

optional arguments:
  -h, --help        show this help message and exit
  --verbose, -v     Verbose mode.
  --unauthed, -u    Allow to post to unauthed st2. E.g. when auth is disabled
                    server side.
  --ssl-verify, -k  Turn on SSL verification for st2 APIs.
```

### Configuration
This is the configuration parameters that st2_handler refers.

| parameter         | description | default value |
|:------------------|:------------|:--------------|
| st2_username      | Username that is authenticated by the StackStorm to access to it | `st2admin` |
| st2_password      | Password that corresponds to the Username to be authenticated | `password` |
| st2_api_key       | API Key value to authenticate API access (see also: [api-keys](https://docs.stackstorm.com/authentication.html#api-keys))|  |
| st2_api_base_url  | The base URL to access to the [st2api](https://docs.stackstorm.com/reference/ha.html#st2api) | `http://localhost:9101/v1/` |
| st2_auth_base_url | The base URL to access to the [st2auth](https://docs.stackstorm.com/reference/ha.html#st2auth) | `http://localhost:9100/` |

You can set these configuration as following.

```JSON
{
  "st2_handler": {
    "st2_username": "testu",
    "st2_password": "testp",
    "st2_api_key": "",
    "st2_api_base_url": "http://localhost:9101/v1/",
    "st2_auth_base_url": "http://localhost:9100/"
  }
}
```


### Confirmation
After installing this plugin by `sensu-install` command, you can manually dispatch StackStorm trigger `sensu.event_handler` of [Sensu pack](https://github.com/StackStorm-Exchange/stackstorm-sensu) with the message of [Sensu Events](https://sensuapp.org/docs/latest/reference/events.html) for confirmation the normality. If the setup goes well, you can get following result.
```
$ echo '{"client": {"name": 1}, "check":{"name": 2}, "id": "12345"}' | /opt/sensu/embedded/bin/st2_handler.rb
Sent sensu event to st2. HTTP_CODE:                 202
```
