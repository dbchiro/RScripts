# RScripts
Basic RScripts to connect dbChiro db

Copy `.env.sample` to `.env` and `custom.R.sample` to `custom.R`

Update all `DB_*` variables

Customize custom.R script as you want. Packages used are:
* RPostgreSQL: https://cran.r-project.org/web/packages/RPostgreSQL/index.html
* DBI: https://cran.r-project.org/web/packages/DBI/index.html

run script:

```sh
Rscript app.R
```