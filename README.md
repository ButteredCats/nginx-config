# NGINX Config
This is the NGINX config used for https://catsarch.com and its Tor/I2P counterparts.

It's been made public in the name of openness, as I apply many header changes (typically security or cache related) and also occasionally do rewrites with `sub_filter`.

I hope that at some point someone else will find some of the documentation and work I've done useful and be able to use parts of this for their own NGINX setup.

# Using
This is used with NGINX Mainline, so make sure you're using it or else you may be missing certain directives.

Comment out any references to the `private` folder as I've kept it hidden to remove some low hanging fruit for bypassing caching and getting into internal services.

You'll also need a few NGINX modules:
- https://github.com/google/ngx_brotli - Brotli compression.
- https://github.com/dvershinin/ngx_dynamic_etag - Being able to use `Cache-Control: no-cache` for a few services where there's no built in cache control.
- https://github.com/openresty/headers-more-nginx-module - Easier management of headers (no inheritance issues), hiding the `Server` header, and only applying headers to certain file types.
- https://github.com/vozlt/nginx-module-vts - Stats without having to log IPs or what URLs were visited.
