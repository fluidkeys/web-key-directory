# OpenPGP Web Key Directory

[Web Key Directory (WKD)](https://tools.ietf.org/html/draft-koch-openpgp-webkey-service-06) allows an OpenPGP client to discover a public key from an email address.

It works by converting an email address e.g. `hello@fluidkeys.com` into a special URL and requesting it by HTTPS:

```
https://fluidkeys.com/.well-known/openpgpkey/hu/im4cc8qhazwkfsi65a8us1bc5gzk1o4p
```

This returns the OpenPGP in binary format (not ascii-armored).

## Github WKD + redirect

As a temporary solution we're using Github to host our public keys, and using a simple redirect in our `nginx` configuration:

```
# /etc/nginx/sites-enabled/fluidkeys.com_HTTPS

rewrite ^/.well-known/openpgpkey/(.*)$ https://github.com/fluidkeys/web-key-directory/raw/master/.well-known/openpgpkey/$1 redirect;
```

In the future [Fluidkeys](https://www.fluidkeys.com) will host and automatically update our WKD keys.
