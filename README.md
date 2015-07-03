# step-geminabox

This is an step to deploy/push your new gems to geminabox.

[![wercker status](https://app.wercker.com/status/c2a851801cc4d63fffb353dffefbd69f/m "wercker status")](https://app.wercker.com/project/bykey/c2a851801cc4d63fffb353dffefbd69f)

# Options

* `host` (mandatory) Host to upload to.
* `name` (optional, default: `*.gem`) The gem file name.
* `port` (optional, default: `80`) Sets port.
* `overwrite` (optional, default: `false`) Overwrite Gem.
* `build` (optional, default: `false`) Build the gem with `gem build` before calling geminabox.
* `buildname` (optional, default: `*.gemspec`) The gemspec file to use.
* `inabox_version` (optional, default: `0.12.4`) The version of geminabox.

# Examples

``` yaml
deploy:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
```

``` yaml
deploy:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
      installversion: 0.12.3
```

``` yaml
deploy:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com
      port: 9292
```

``` yaml
deploy:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
      build: true
```

``` yaml
deploy:
  steps:
    - fsauter/step-geminabox:
      host: http://user:password@myhost.com:9292
      overwrite: true
      name: mygem-0.0.1.gem
```

# License

The MIT License (MIT)

# Changelog

## 0.1.1

- Some small improvements

## 0.1.0

- Initial release
