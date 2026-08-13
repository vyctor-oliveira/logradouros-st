# Logradouros de Serra Talhada

Uma maneira mais rápida de visualizar todos as ruas, avenidas, travessas e semelhantes da cidade de Serra Talhada, Pernambuco.

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

[Versão para consulta](https://lite.datasette.io/?parquet=https://github.com/vyctor-oliveira/logradouros-st/blob/main/logrhttps://lite.datasette.io/?parquet=https://github.com/vyctor-oliveira/logradouros-st/blob/main/logradouros.parquet&metadata=https://github.com/vyctor-oliveira/logradouros-st/blob/main/_metadata.yml#/data/logradouros) (Demora um pouquinho para carregar)

