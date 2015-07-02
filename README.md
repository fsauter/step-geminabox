# step-geminabox

This is an step to deploy/push your new gems to geminabox.

[![wercker status](https://app.wercker.com/status/14ca0165291ac704e81a6c4aac7fd0f6/m "wercker status")](https://app.wercker.com/project/bykey/14ca0165291ac704e81a6c4aac7fd0f6)

# Options

* `host` (mandatory) Host to upload to.
* `name` (optional, default: `*.gem`) The gem file name.
* `port` (optional, default: `80`) Sets port.
* `overwrite` (optional, default: `false`) Overwrite Gem.
* `build` (optional, default: `false`) Build the gem with `gem build` before calling geminabox.
* `buildname` (optional, default: `*.gemspec`) The gemspec file to use.
* `install_version` (optional, default: `0.12.4`) The version of geminabox.

# Examples

``` yaml
build:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
```

``` yaml
build:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
      installversion: 0.12.3
```

``` yaml
build:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com
      port: 9292
```

``` yaml
build:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
      build: true
```

``` yaml
build:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
      overwrite: true
      name: mygem-0.0.1.gem
```

# License

The MIT License (MIT)

# Changelog

## 1.0.0

- Initial release
