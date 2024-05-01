



Hey Russ
cancelled <- flights %>%
  filter(is.na(dep_delay), is.na(arr_delay))

canperd <- cancelled %>% 
  group_by(year, month, day) %>% 
  summarize(n_perday = n(),
            avg_delay = mean(arr_delay))
apropos("attribute")
attributes(canperd)$groups
colnames(mpg)
table(mpg$trans)
table(mpg$drv)
mpg_gr <- mpg %>% group_by(drv,cyl)
attributes(mpg_gr)$groups
ungroup(mpg_gr)
attributes(mpg_gr)
mpg_gr %>% mutate(grpavg=mean(displ), .keep="used") %>% 
  head(10)
str(mpg_gr)

class(starwars)
length(starwars)
view(table(starwars$hair_color))



