#!/bin/bash

# Note:
# When the script prompts you to provide the dedicated configuration link, please copy and use the RAW link of your own Gist!
# 
# 注意：
# 当脚本提示你提供专属配置链接时，请使用你自己的Gist的RAW链接！


# Required.
#
# If you can't access GitHub directly (e.g., due to network restrictions),
# set a proxy URL prefix here. Otherwise, LEAVE IT BLANK.
#
# Example:
# GLOBAL_GITHUB_PROXY_URL="https://my_github_proxy_url_prefix.com"

GLOBAL_GITHUB_PROXY_URL=""


# Optional.
# If you are concerned about privacy and security issues, simply delete the SUBSCRIPTION_URLS array and subscribe to your servers manually.
SUBSCRIPTION_URLS=(
  # Change to your own subscription URL(s).
  "https://xn--cp3a08l.com/api/v1/client/subscribe?token=909f78b80b755c1018ef61da52294367#Proxy_Server_01"
  "http://fly.cfasia.dpdns.org/moon#Proxy_Server_02"
)

# Required.
RULESET_URLS=(
  # "Your_Custom_Node_Name|URL(s)"
  #
  # or
  #
  # "Your_Custom_Node_Name|
  # URL(s)"

  "reject_out|
  https://anti-ad.net/anti-ad-sing-box.srs"

  "PROXY_SERVER_01_US|
  /etc/homeproxy/ruleset/MyProxy.json
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google@cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google-gemini.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google-trust-services.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google-trust-services@cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google-play.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google-play@cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/googlefcm.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/google.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geoip/google.srs"

  "PROXY_SERVER_02_US|
  /etc/homeproxy/ruleset/MyAI.json
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/openai.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/bing.srs
  https://raw.githubusercontent.com/KaringX/karing-ruleset/sing/geo/geoip/ai.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/telegram.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geoip/telegram.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/discord.srs"
  
  "PROXY_SERVER_02_SG_With_Or_Without_Suffix|
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/twitch.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/amazon.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/amazon@cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/amazontrust.srs"
  
  "PROXY_SERVER_02_US_IPv6_AsBackup|
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/twitter.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/x.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/sing/geo/geoip/twitter.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/tiktok.srs"
  
  "direct_out|
  /etc/homeproxy/ruleset/MyDirect.json
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/microsoft@cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/azure@cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/apple-cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geoip/cn.srs
  https://raw.githubusercontent.com/MetaCubeX/meta-rules-dat/refs/heads/sing/geo/geosite/cn.srs"

)

# Required.
DNS_SERVERS=(
  # "Your_Custom_DNS_Server_Name|URL(s)"
  # Tip: The order of Your_Custom_DNS_Server_Name in the DNS_SERVERS array does not have to be consistent with that in the RULESET_URLS array.
  
  "PROXY_SERVER_01_US|https://dns.google/dns-query"
  "PROXY_SERVER_02_US|https://dns.google/dns-query"
  "PROXY_SERVER_02_SG_With_Or_Without_Suffix|https://1.1.1.1/dns-query"
  "PROXY_SERVER_02_US_IPv6_AsBackup|https://[2001:4860:4860:0000:0000:0000:0000:8888]/dns-query"
  
  "Default_DNS_Server|https://dns.google/dns-query"
)