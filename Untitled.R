my_citations <- rcrossref::cr_cn(my_dois[1:10], format = "bibentry", style = "vancouver") %>% 
    purrr::map_chr(., purrr::pluck, 1)



library(rvest)
library(tidyverse)    # for munging; translate if you like

url <- 'https://app.dimensions.ai/details/grant/grant.7619640'

page <- read_html(url)

body_nodes <- page %>% 
 html_node("body") %>% 
 html_children()
body_nodes

kids <- body_nodes %>% 
 html_children()

data <- page %>%
  html_nodes(".data-js") %>% html_text()

amt <- page %>%
  rvest::html_nodes('div') %>%
  xml2::xml_find_all("//div[data-js]") %>%
  rvest::html_text()

funding_amount_in_cad

page %>% html_nodes("body") %>% html_nodes("div")

a_elements <- html_nodes(page, "div[data-js=\"details-page\"]")
a_elements

data <- read_xml(url)


pg <- read_html("https://app.dimensions.ai/details/grant/grant.7619640")
d <- html_nodes(pg, "div") %>% 
  map(xml_attrs) %>% 
  map_df(~as.list(.)) %>%
  select(`data-doc`) %>%
  drop_na() %>%
  xml_Parse


grant_xml = as_list(read_xml(url))

pop <- html_table(a_elements)
xml_structure(a_elements)