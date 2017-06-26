# CHANGELOG

0.4 (unreleased)
----------------

- nothing changed yet.


0.3 (2017-06-26)
----------------

- Set root password if `DEVPI_PASSWORD` is set.
- Put clientdir also into `/mnt` mountpoint.
- Pin version in openshift deploymentconfig.


0.2 (2017-06-11)
----------------

- readinessProbe checks status page
- build on top of official `python:3.6` image.
- bundle `devpi-web`
- upgrade versions to `devpi-client==3.0.0, devpi-common==3.1.0 , devpi-server==4.3.0, devpi-web==3.2.0`
- drop `root` user creation.


0.1 (2017-04-03)
----------------

- No `devpi-web` installed.
- build on top of official `python:3.5-alpine` image.
- initial fork and upload to docker hub.
