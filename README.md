# checkdmarc docker image

A docker image containing checkdmarc python script.

The image's entry point is set to checkdmarc in exec mode.

So the following could work straight away:

```
docker run --rm qwe1/checkdmarc google.com
```

### Documentation

https://domainaware.github.io/checkdmarc

### Bug reports

Please report bugs on the GitHub issue tracker

https://github.com/domainaware/checkdmarc/issues

## Source

Based on reading <https://seanthegeek.net/310/spf-dmarc-federal-government-checkdmarc/amp/> and
<https://domainaware.github.io/checkdmarc/>.

### Links

For usage and docs, see <https://domainaware.github.io/checkdmarc/>.

For build logs, see https://gitlab.com/richardskumat/checkdmarc/pipelines.

