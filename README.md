[![Daily archiver of CISA's Known Exploited Vulnerabilities Catalog](https://github.com/hrbrmstr/cisa-known-exploited-vulns/actions/workflows/scraper.yml/badge.svg)](https://github.com/hrbrmstr/cisa-known-exploited-vulns/actions/workflows/scraper.yml)

# cisa-known-exploited-vulns

Code with daily GH action to archive CISA's KEV Catalog (https://www.cisa.gov/known-exploited-vulnerabilities-catalog)

Each archive is prefixed with an ISO stamp and stored in `docs/` as that dir is published via GH Pages.

[This](https://hrbrmstr.github.io/cisa-known-exploited-vulns/) is an example of a "KEV Report" that will eventually (a) be auto-generated after each scrape, and (b) have expository before each section. File an issue if you'd like more CVE details fields and/or any other views.

![sample report](sample-kev-report.png)