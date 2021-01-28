# Read Data set
covid_usa <- read.csv("C:/Users/tanve/OneDrive/Desktop/DS/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv")

head(covid_usa)
#Change the Column Name to understand better
names (covid_usa) <- c("Date", "State", "Total Case", "Confirm Case", "P_case","New Case", "P_nCase","tot_death", "conf_death", "prob_death", "new_death","pnew_death", "created_at","consent_cases","consent_deaths")

summary(covid_usa)

# Create the data frame.
covid_usa <- data.frame(Date = covid_usa$'Date',State = covid_usa$'State',New_Case = covid_usa$'New Case',Commulative_case = covid_usa$'Total Case')

head(covid_usa)

#split data according to state
state_CO = covid_usa[c(1:325),]
state_FL = covid_usa[c(326:650),]
state_AZ = covid_usa[c(651:975),]
state_SC = covid_usa[c(976:1300),]
state_CT = covid_usa[c(1300:1625),]
state_NE = covid_usa[c(1626:1950),]
state_KY = covid_usa[c(1951:2275),]
state_WY = covid_usa[c(2276:2600),]
state_IA = covid_usa[c(2601:2925),]
state_NM = covid_usa[c(2926:3250),]
state_ND = covid_usa[c(3250:3575),]
state_WA = covid_usa[c(3576:3900),]
state_RMI = covid_usa[c(3901:4225),]
state_TN = covid_usa[c(4226:4550),]
state_AS = covid_usa[c(4551:4875),]
state_MA = covid_usa[c(4876:5200),]
state_PA = covid_usa[c(5201:5525),]
state_OH = covid_usa[c(5526:5850),]
state_NYC = covid_usa[c(5851:6175),]
state_VA = covid_usa[c(6176:6500),]
state_MI = covid_usa[c(6501:6825),]
state_AL = covid_usa[c(6826:7150),]
state_MS = covid_usa[c(7151:7475),]
state_GA = covid_usa[c(7476:7800),]
state_WI = covid_usa[c(7801:8125),]
state_IL = covid_usa[c(8126:8450),]
state_PR = covid_usa[c(8451:8775),]
state_ID = covid_usa[c(8776:9100),]
state_LA = covid_usa[c(9101:9425),]
state_OK = covid_usa[c(9426:9750),]
state_MN = covid_usa[c(9751:10075),]
state_TX = covid_usa[c(10076:10400),]
state_AR = covid_usa[c(10401:10725),]
state_NJ = covid_usa[c(10726:11050),]
state_CA = covid_usa[c(11051:11375),]
state_MD = covid_usa[c(11376:11700),]
state_NV = covid_usa[c(11701:12025),]
state_NY = covid_usa[c(12026:12350),]
state_IN = covid_usa[c(12351:12675),]
state_OR = covid_usa[c(12676:13000),]
state_WV = covid_usa[c(13001:13325),]
state_UT = covid_usa[c(13326:13650),]
state_MO = covid_usa[c(13651:13975),]
state_DE = covid_usa[c(13976:14300),]
state_SD = covid_usa[c(14301:14625),]
state_NH = covid_usa[c(14626:14950),]
state_KS = covid_usa[c(14951:15275),]
state_RI = covid_usa[c(15276:15600),]
state_NC = covid_usa[c(15601:15925),]
state_ME = covid_usa[c(15926:16250),]
state_MT = covid_usa[c(16251:16575),]
state_DC = covid_usa[c(16576:16900),]
state_AK = covid_usa[c(16901:17225),]
state_HI = covid_usa[c(17226:17532),]
state_VT = covid_usa[c(17533:17857),]
state_GU = covid_usa[c(17858:18182),]
state_VI = covid_usa[c(18183:18507),]
state_MP = covid_usa[c(18508:18832),]
state_FSM = covid_usa[c(18833:19157),]
state_PW = covid_usa[c(19158:19482),]

#Recheck spiliting


tail(state_CO)
tail(state_FL)
tail(state_AZ)
tail(state_SC)
tail(state_CT)
tail(state_NE)
tail(state_KY)
tail(state_WY)
tail(state_IA)
tail(state_NM)
tail(state_ND)
tail(state_WA)
tail(state_RMI)
tail(state_TN)
tail(state_AS)
tail(state_MA)
tail(state_PA)
tail(state_OH)
tail(state_NYC)
tail(state_VA)
tail(state_MI)
tail(state_AL)
tail(state_MS)
tail(state_GA)
tail(state_WI)
tail(state_IL)
tail(state_PR)
tail(state_ID)
tail(state_LA)
tail(state_OK)
tail(state_MN)
tail(state_TX)
tail(state_AR)
tail(state_NJ)
tail(state_CA)
tail(state_MD)
tail(state_NV)
tail(state_NY)
tail(state_IN)
tail(state_OR)
tail(state_WV)
tail(state_UT)
tail(state_MO)
tail(state_DE)
tail(state_SD)
tail(state_NH)
tail(state_KS)
tail(state_RI)
tail(state_NC)
tail(state_ME)
tail(state_MT)
tail(state_DC)
tail(state_AK)
tail(state_HI)
tail(state_VT)
tail(state_GU)
tail(state_VI)
tail(state_MP)
tail(state_FSM)
tail(state_PW)

# Day Adding:



state_CO <- data.frame(day = c(1:nrow(state_CO)), state_CO)
state_FL <- data.frame(day = c(1:nrow(state_FL)), state_FL)

state_AZ <- data.frame(day = c(1:nrow(state_AZ)), state_AZ)
state_SC <- data.frame(day = c(1:nrow(state_SC)), state_SC)

state_CT <- data.frame(day = c(1:nrow(state_CT)), state_CT)
state_NE <- data.frame(day = c(1:nrow(state_NE)), state_NE)
state_KY <- data.frame(day = c(1:nrow(state_KY)), state_KY)
state_WY <- data.frame(day = c(1:nrow(state_WY)), state_WY)
state_IA <- data.frame(day = c(1:nrow(state_IA)), state_IA)

state_NM <- data.frame(day = c(1:nrow(state_NM)), state_NM)
state_ND <- data.frame(day = c(1:nrow(state_ND)), state_ND)
state_WA <- data.frame(day = c(1:nrow(state_WA)), state_WA)

state_RMI <- data.frame(day = c(1:nrow(state_RMI)), state_RMI)
state_TN <- data.frame(day = c(1:nrow(state_TN)), state_TN)

state_AS <- data.frame(day = c(1:nrow(state_AS)), state_AS)
state_MA <- data.frame(day = c(1:nrow(state_MA)), state_MA)
state_PA <- data.frame(day = c(1:nrow(state_PA)), state_PA)
state_OH <- data.frame(day = c(1:nrow(state_OH)), state_OH)


state_NYC <- data.frame(day = c(1:nrow(state_NYC)), state_NYC)
state_VA <- data.frame(day = c(1:nrow(state_VA)), state_VA)
state_MI <- data.frame(day = c(1:nrow(state_MI)), state_MI)
state_AL <- data.frame(day = c(1:nrow(state_AL)), state_AL)
state_MS <- data.frame(day = c(1:nrow(state_MS)), state_MS)
state_GA <- data.frame(day = c(1:nrow(state_GA)), state_GA)


state_WI <- data.frame(day = c(1:nrow(state_WI)), state_WI)
state_IL <- data.frame(day = c(1:nrow(state_IL)), state_IL)
state_PR <- data.frame(day = c(1:nrow(state_PR)), state_PR)
state_ID <- data.frame(day = c(1:nrow(state_ID)), state_ID)
state_LA <- data.frame(day = c(1:nrow(state_LA)), state_LA)
state_OK <- data.frame(day = c(1:nrow(state_OK)), state_OK)
state_MN <- data.frame(day = c(1:nrow(state_MN)), state_MN)
state_TX <- data.frame(day = c(1:nrow(state_TX)), state_TX)

state_AR <- data.frame(day = c(1:nrow(state_AR)), state_AR)
state_NJ <- data.frame(day = c(1:nrow(state_NJ)), state_NJ)
state_CA <- data.frame(day = c(1:nrow(state_CA)), state_CA)

state_MD <- data.frame(day = c(1:nrow(state_MD)), state_MD)
state_NV <- data.frame(day = c(1:nrow(state_NV)), state_NV)
state_NY <- data.frame(day = c(1:nrow(state_NY)), state_NY)
state_IN <- data.frame(day = c(1:nrow(state_IN)), state_IN)
state_OR <- data.frame(day = c(1:nrow(state_OR)), state_OR)
state_WV <- data.frame(day = c(1:nrow(state_WV)), state_WV)
state_UT <- data.frame(day = c(1:nrow(state_UT)), state_UT)

state_MO <- data.frame(day = c(1:nrow(state_MO)), state_MO)
state_DE <- data.frame(day = c(1:nrow(state_DE)), state_DE)
state_SD <- data.frame(day = c(1:nrow(state_SD)), state_SD)
state_NH <- data.frame(day = c(1:nrow(state_NH)), state_NH)
state_KS <- data.frame(day = c(1:nrow(state_KS)), state_KS)
state_RI <- data.frame(day = c(1:nrow(state_RI)), state_RI)
state_NC <- data.frame(day = c(1:nrow(state_NC)), state_NC)
state_ME <- data.frame(day = c(1:nrow(state_ME)), state_ME)
state_MT <- data.frame(day = c(1:nrow(state_MT)), state_MT)

state_DC <- data.frame(day = c(1:nrow(state_DC)), state_DC)
state_AK <- data.frame(day = c(1:nrow(state_AK)), state_AK)
state_HI <- data.frame(day = c(1:nrow(state_HI)), state_HI)
state_VT <- data.frame(day = c(1:nrow(state_VT)), state_VT)
state_GU <- data.frame(day = c(1:nrow(state_GU)), state_GU)
state_VI <- data.frame(day = c(1:nrow(state_VI)), state_VI)
state_MP <- data.frame(day = c(1:nrow(state_MP)), state_MP)
state_FSM <- data.frame(day = c(1:nrow(state_FSM)), state_FSM)
state_PW <- data.frame(day = c(1:nrow(state_PW)), state_PW)

#We have select 3 state such as New York, Washington, California.
library(stringr)
state_CA$`State` <- str_replace_all(state_CA$`State`, "CA\\s?", "California")
state_WA$`State` <- str_replace_all(state_WA$`State`, "WA\\s?", "Washinton")
state_NY$`State` <- str_replace_all(state_NY$`State`, "NY\\s?", "New York")

head(state_CA)
head(state_WA)
head(state_NY)

#write data
write.csv(state_CO,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_CO.csv", row.names = FALSE)
write.csv(state_FL,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_FL.csv", row.names = FALSE)
write.csv(state_AZ,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_AZ.csv", row.names = FALSE)
write.csv(state_SC,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_SC.csv", row.names = FALSE)
write.csv(state_CT,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_CT.csv", row.names = FALSE)
write.csv(state_NE,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NE.csv", row.names = FALSE)
write.csv(state_KY,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_KY.csv", row.names = FALSE)
write.csv(state_WY,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_WY.csv", row.names = FALSE)
write.csv(state_IA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_IA.csv", row.names = FALSE)
write.csv(state_NM,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NM.csv", row.names = FALSE)
write.csv(state_ND,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_ND.csv", row.names = FALSE)
write.csv(state_WA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_WA.csv", row.names = FALSE)
write.csv(state_RMI,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_RMI.csv", row.names = FALSE)
write.csv(state_TN,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_TN.csv", row.names = FALSE)
write.csv(state_AS,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_AS.csv", row.names = FALSE)
write.csv(state_MA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MA.csv", row.names = FALSE)
write.csv(state_PA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_PA.csv", row.names = FALSE)
write.csv(state_OH,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_OH.csv", row.names = FALSE)
write.csv(state_NYC,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NYC.csv", row.names = FALSE)
write.csv(state_VA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_VA.csv", row.names = FALSE)
write.csv(state_MI,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MI.csv", row.names = FALSE)
write.csv(state_AL,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_AL.csv", row.names = FALSE)
write.csv(state_MS,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MS.csv", row.names = FALSE)
write.csv(state_GA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_GA.csv", row.names = FALSE)
write.csv(state_WI,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_WI.csv", row.names = FALSE)
write.csv(state_IL,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_IL.csv", row.names = FALSE)
write.csv(state_PR,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_PR.csv", row.names = FALSE)
write.csv(state_ID,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_ID.csv", row.names = FALSE)
write.csv(state_LA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_LA.csv", row.names = FALSE)
write.csv(state_OK,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_OK.csv", row.names = FALSE)
write.csv(state_MN,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MN.csv", row.names = FALSE)
write.csv(state_TX,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_TX.csv", row.names = FALSE)
write.csv(state_AR,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_AR.csv", row.names = FALSE)
write.csv(state_NJ,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NJ.csv", row.names = FALSE)
write.csv(state_CA,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_CA.csv", row.names = FALSE)
write.csv(state_MD,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MD.csv", row.names = FALSE)
write.csv(state_NV,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NV.csv", row.names = FALSE)
write.csv(state_NY,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NY.csv", row.names = FALSE)
write.csv(state_IN,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_IN.csv", row.names = FALSE)
write.csv(state_OR,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_OR.csv", row.names = FALSE)
write.csv(state_WV,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_WV.csv", row.names = FALSE)
write.csv(state_UT,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_UT.csv", row.names = FALSE)
write.csv(state_MO,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MO.csv", row.names = FALSE)
write.csv(state_DE,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_DE.csv", row.names = FALSE)
write.csv(state_SD,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_SD.csv", row.names = FALSE)
write.csv(state_NH,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NH.csv", row.names = FALSE)
write.csv(state_KS,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_KS.csv", row.names = FALSE)
write.csv(state_RI,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_RI.csv", row.names = FALSE)
write.csv(state_NC,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_NC.csv", row.names = FALSE)
write.csv(state_ME,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_ME.csv", row.names = FALSE)
write.csv(state_MT,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MT.csv", row.names = FALSE)
write.csv(state_DC,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_DC.csv", row.names = FALSE)
write.csv(state_AK,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_AK.csv", row.names = FALSE)
write.csv(state_HI,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_HI.csv", row.names = FALSE)
write.csv(state_VT,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_VT.csv", row.names = FALSE)
write.csv(state_GU,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_GU.csv", row.names = FALSE)
write.csv(state_VI,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_VI.csv", row.names = FALSE)
write.csv(state_MP,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_MP.csv", row.names = FALSE)
write.csv(state_FSM,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_FSM.csv", row.names = FALSE)
write.csv(state_PW,"C:\\Users\\tanve\\OneDrive\\Desktop\\DS\\state_PW.csv", row.names = FALSE)


