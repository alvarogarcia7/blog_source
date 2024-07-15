2024-07-15 22:59:21 AGB

* TODO Need to update the hugo version to 0.128.2
* TODO Google analytics

```

[services]
# Google analytics code
  [services.googleAnalytics]
    ID = "UA-41008374-3"
```

Complains about: 

➜  blog git:(source) ✗ make run-in-docker
docker run -p 8090:8090 -v /Users/alvaro/Documents/project/blog:/src -v /Users/alvaro/Documents/project/blog/alvarogarcia7.github.io:/alvarogarcia7.github.io jojomi/hugo:latest hugo --destination /alvarogarcia7.github.io
Start building sites …
hugo v0.128.2-de36c1a95d28595d8243fd8b891665b069ed0850 linux/arm64 BuildDate=2024-07-04T08:13:25Z VendorInfo=gohugoio

WARN  Google Analytics 4 (GA4) replaced Google Universal Analytics (UA) effective 1 July 2023. See https://support.google.com/analytics/answer/11583528. Create a GA4 property and data stream, then replace the Google Analytics ID in your site configuration with the new value.

* TODO Need to update Parsiya's theme on themes/hugo-octopress
