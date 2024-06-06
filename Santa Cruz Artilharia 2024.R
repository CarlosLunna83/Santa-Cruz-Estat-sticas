# Santa Cruz Artilharia 2024

library(tidyverse)
library(readxl)
library(janitor)
library(readODS)

santa_artilharia_2024 <- read_ods("2024/Santa Cruz estatisticas Artilharia 2024.ods")

# Artilharia geral 2024:

santa_artilheiros_2024 <- santa_artilharia_2024 %>%
  select(autor_do_gol, qtd_unidade) %>%
  group_by(autor_do_gol) %>%
  summarise(qtd_gols = sum(qtd_unidade)) %>%
  arrange(desc(qtd_gols))

santa_artilheiros_2024

# Artilharia Pernambucano 2024:

artilheiros_pe2024 <- santa_artilharia_2024 %>%
  select(autor_do_gol, campeonato, qtd_unidade) %>%
  filter(str_detect(campeonato, "pernambucano")) %>%
  group_by(autor_do_gol) %>%
  summarise(qtd_gols = sum(qtd_unidade)) %>%
  arrange(desc(qtd_gols))

artilheiros_pe2024

