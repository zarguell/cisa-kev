[![Daily Check of Updates to CISA's Known Exploited Vulnerabilities Catalog](https://github.com/zarguell/cisa-kev/actions/workflows/scraper.yml/badge.svg)](https://github.com/zarguell/cisa-kev/actions/workflows/scraper.yml) [![Vulnerabilties Due Today](https://github.com/zarguell/cisa-kev/actions/workflows/duedate_scraper.yml/badge.svg)](https://github.com/zarguell/cisa-kev/actions/workflows/duedate_scraper.yml)

# cisa-known-exploited-vulns

This is a fork of hrbrmstr's [Known Exploitable Vulnerability Catalog scraper](https://github.com/hrbrmstr/cisa-known-exploited-vulns/network/members). I wanted a machine readable, pre-parsed report of the newly added vulnerabilties to the catalog, and vulnerabilties due on a particular day (rather than a daily export of the entire catalog).

# From Original Project

Code with daily GH action to archive CISA's KEV Catalog (https://www.cisa.gov/known-exploited-vulnerabilities-catalog)

Each archive is prefixed with an ISO stamp and stored in `docs/` as that dir is published via GH Pages.