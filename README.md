# checkdmarc docker image

[![pipeline status](https://gitlab.com/richardskumat/checkdmarc/badges/master/pipeline.svg)](https://gitlab.com/richardskumat/checkdmarc/commits/master)

A docker image containing checkdmarc python script.

The image's entry point is set to checkdmarc in exec mode.

## Disclaimer

All my personal projects are that, personal, and should not be relied upon.

I will change things at anytime and not keep old files, scripts or docker images around.

## Example usage

So the following could work straight away:

```bash
docker run --rm qwe1/checkdmarc google.com
```

## Links to source code and build logs

Gitlab

https://gitlab.com/richardskumat/checkdmarc

Gitlab pipelines

https://gitlab.com/richardskumat/checkdmarc/pipelines

Github

https://github.com/richardskumat/checkdmarc

Dockerhub

https://hub.docker.com/r/qwe1/checkdmarc


### Further links & docs

https://domainaware.github.io/checkdmarc

Based on reading <https://seanthegeek.net/310/spf-dmarc-federal-government-checkdmarc/amp/> and
<https://domainaware.github.io/checkdmarc/>.

For usage and docs, see <https://domainaware.github.io/checkdmarc/>.
