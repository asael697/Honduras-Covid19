

# dates
dates = c("Mar 11","Mar 12","Mar 13","Mar 14","Mar 15","Mar 16","Mar 17","Mar 18","Mar 19","Mar 20","Mar 21","Mar 22",
         "Mar 23","Mar 24","Mar 25","Mar 26","Mar 27","Mar 28","Mar 29","Mar 30","Mar 31","Apr 01","Apr 02","Apr 03","Apr 04",
         "Apr 05","Apr 06","Apr 07","Apr 08","Apr 09","Apr 10","Apr 11","Apr 12","Apr 13","Apr 14","Apr 15","Apr 16","Apr 17",
         "Apr 18","Apr 19","Apr 20","Apr 21","Apr 22","Apr 23","Apr 24","Apr 25","Apr 26","Apr 27","Apr 28","Apr 29","Apr 30",
         "May 01","May 02","May 03") 


# Total Cases
total.cases = c(2,2,2,3,3,6,8,9,12,24,24,26,30,30,52,67,68,95,110,139,141,172,219,222,264,268,298,305,312,343,382,392,393,397,407,
                419,426,442,457,472,477,494,510,519,562,591,627,661,702,738,771,804,899,1010)

#new cases
new.cases = c(2,0,0,1,0,3,2,1,3,12,0,2,4,0,22,15,1,27,15,29,2,31,47,3,42,4,30,7,7,31,39,10,1,4,10,12,7,16,15,15,5,17,16,9,43,29,36,
              34,41,36,33,33,95,111) 

# Active cases
active.cases = c(2,2,2,3,3,6,8,9,12,24,24,26,30,30,52,66,67,91,104,129,131,159,202,204,246,240,270,277,284,314,352,361,361,365,374,
                 379,382,391,401,411,406,419,434,441,465,478,503,521,559,599,621,617,712,818) 

#Total Deaths

total.deaths = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,3,7,7,10,14,15,15,22,22,22,22,23,23,24,25,25,26,31,35,41,46,46,46,46,46,47,47,
                 55,59,61,64,66,71,75,75,76)

#Daily deaths

daily.deaths = c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,2,4,0,3,4,1,0,7,0,0,0,1,0,1,1,0,1,5,4,6,5,0,0,0,0,1,0,8,4,2,3,2,5,4,0,1) 


data = data.frame(no = 1:length(dates),
                  dates = dates,
                  new.cases = new.cases,
                  daily.deaths = daily.deaths,
                  active.cases = active.cases,
                  total.deaths = total.deaths,
                  total.cases = total.cases)

data$total.recovered = data$total.cases -data$active.cases -data$total.deaths
rm(active.cases,daily.deaths,dates,new.cases,total.cases,total.deaths)
write.csv(data,"datahn.txt")
