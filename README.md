# RScripts
Basic RScripts to connect dbChiro db

Copy `.env.sample` to `.env` and `scripts/R/custom.R.sample` to `scripts/R/custom.R`

Update all `DB_*` variables in `.env` file.

Customize custom.R script as you want. Packages used are:
* RPostgreSQL: https://cran.r-project.org/web/packages/RPostgreSQL/index.html
* DBI: https://cran.r-project.org/web/packages/DBI/index.html

run script:

```sh
Rscript app.R
```