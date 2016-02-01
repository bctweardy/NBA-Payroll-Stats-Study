proc import datafile = "C:\Users\Brad_2\Desktop\TweardyMSDS6371FinalProject.csv"
     out = player
     dbms = csv
     replace;
     getnames = yes;
run;
proc print;
run;
data player1;
set player;
logfg = log(FG_);
logppg = log(PPG);
logast = log(AST);
logto = log(TO);
logas = log(Allstar);
loggames = log(Games);
logmin = log(MIN);
run;
proc reg data = player1;
model Salary =  logppg logast/ cli clm clb vif;
run;
