# /// script
# dependencies = [
#    "dplyr",
#    "tidyr",
#    "stringr",
#    "purrr",
#    "freshr",
#    "sf",
#    "janitor"
# ]
# ///

freshr::freshr()

url <- "https://www.google.com/maps/d/u/0/kml?mid=1c2ju_HcCjBugKl4mwtXQ9lET2bHofd1O&resourcekey&lid=XTCOnJk9-Is&forcekml=1"

logradouros <- tryCatch(
  sf::st_read(url, quiet = TRUE),
  error = function(e) {
    stop("Falha ao baixar o KML do Google Maps: ", conditionMessage(e))
  }
)

# readr::write_rds(logradouros, "logradouros.rds")

logradouros_antigo <- readr::read_rds("logradouros.rds")

diff <- dplyr::setdiff(logradouros, logradouros_antigo)

if (nrow(diff) == 0) {
  message("Sem novos logradouros. Encerrando.")
  quit(status = 0)
}

writeLines(
  paste(nrow(diff), "novos logradouros"),
  "message.txt",
  useBytes = TRUE
)

logradouros_limpo <- logradouros |>
  dplyr::mutate(
    Description = stringr::str_replace(Description, "<br><br>", "<br>")
  ) |>
  tidyr::separate(
    Description,
    into = c("descricao", "codigo", "bairro", "cep"),
    sep = "<br>",
    extra = "merge",
    fill = "right"
  ) |>
  dplyr::mutate(
    dplyr::across(
      c(descricao, codigo, bairro, cep),
      \(x) stringr::str_remove(x, ".*: ")
    )
  ) |>
  janitor::clean_names()

purrr::walk(
  list(
    c("logradouros.geojson", "GeoJSON"),
    c("logradouros.parquet", "Parquet"),
    c("logradouros.sqlite", "SQLite")
  ),
  ~ sf::write_sf(logradouros_limpo, .x[1], driver = .x[2], quiet = TRUE)
)
