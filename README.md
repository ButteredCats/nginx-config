# NGINX Config
This is the NGINX config that https://catsarch.com, all it's subdomains, and it's Tor and I2P domains use.

It's been made public in the name of openness, as I apply many header changes (typically security or cache related) and also occasionally do rewrites with `sub_filter`.

# Using
This is used with NGINX Mainline, so make sure you're using it.

Comment out any references to the `private` folder as I've kept it hidden to remove some low hanging fruit for bypassing caching and getting into internal services.

You'll also need a few NGINX modules:
- https://github.com/google/ngx_brotli - For Brotli compression
- https://github.com/dvershinin/ngx_dynamic_etag - Being able to use `Cache-Control: no-cache` for a few services where there's zero other cache control
- https://github.com/openresty/headers-more-nginx-module - Easier management of headers, hiding the `Server` header, and only applying headers to certain file types
- https://github.com/vozlt/nginx-module-vts - Stats without having to log IPs or what URLs are visited
