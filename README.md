# Logradouros de Serra Talhada

![Datasette Lite](https://img.shields.io/badge/abrir_tabela_no-Datasette_Lite-blue?style=flat&link=https%3A%2F%2Flite.datasette.io%2F%3Fparquet%3Dhttps%3A%2F%2Fgithub.com%2Fvyctor-oliveira%2Flogradouros-st%2Fblob%2Fmain%2Flogradouros.parquet%26metadata%3Dhttps%3A%2F%2Fgithub.com%2Fvyctor-oliveira%2Flogradouros-st%2Fblob%2Fmain%2F_metadata.yml%23%2Fdata%2Flogradouros)
 ![Static Badge](https://img.shields.io/badge/editar_mapa_no-GeoLibre-blue?style=flat&link=https%3A%2F%2Fshare.geolibre.app%2Fvyctor%2Flogradouros-st)

Uma maneira mais rápida de visualizar e editar todas as ruas, avenidas, travessas e semelhantes da cidade de Serra Talhada, Pernambuco.

[Dados originais](https://www.google.com/maps/d/u/0/viewer?mid=1c2ju_HcCjBugKl4mwtXQ9lET2bHofd1O&ll=-8.002444472319501%2C-38.290630626708996&z=13) pela Secretaria de Finanças da Prefeitura Municipal de Serra Talhada.

## Como executar?

Com o [R instalado](https://cran.r-project.org/doc/contrib/Itano-installation.pdf) no sistema, basta executar:

```bash
Rscript -e getkml.R 
```

Alternativamente, se você usa [uvr](https://github.com/nbafrank/uvr/):

```bash
uvr run getkml.R
```

## Visualização

![Logradouros de Serra Talhada](https://github.com/vyctor-oliveira/logradouros-st/blob/main/Logradouros-de-Serra-Talhada.png)