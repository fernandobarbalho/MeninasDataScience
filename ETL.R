library(dplyr)
write.csv2(df_join_cluster_finais,"dados_escolas_nivel_fundamental_final.csv")
names(df_join_cluster_finais)


names(UF_IBGE_Sheet1)
names(UFs_brasil)

UFs_brasil <- UFs_brasil%>%
  inner_join(UF_IBGE_Sheet1)

save(list = "UFs_brasil", file = "UFs_brasil.RData")

load("ESCOLAS.RData")

escolas_campos_sel<- ESCOLAS %>%
  select(CO_ENTIDADE, NO_ENTIDADE, IN_BIBLIOTECA, IN_LABORATORIO_INFORMATICA, IN_QUADRA_ESPORTES, IN_INTERNET, CO_UF, CO_MUNICIPIO)

save(list = "escolas_campos_sel", file = "escolas_campos_sel.RData")


