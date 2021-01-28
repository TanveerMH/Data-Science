

# Read Dataset
covid_usa <- read.csv("C:/Users/tanve/OneDrive/Desktop/United_States_COVID-19_Cases_and_Deaths_by_State_over_Time.csv")

head(covid_usa)
#Chage the Column Name to understand better
names (covid_usa) <- c("Date", "State", "Total Case", "Confirm Case", "P_case","New Case", "P_nCase","tot_death", "conf_death", "prob_death", "new_death","pnew_death", "created_at","consent_cases","consent_deaths")

# Create the data frame.
covid_usa <- data.frame(Day = c(1:19482),Date = covid_usa$'Date',State = covid_usa$'State',New_Case = covid_usa$'New Case',Commulative_case = covid_usa$'Total Case')

head(mydata)

#spilit data according to state
state_CO = covid_usa[c(1:325),]
state_FL = covid_usa[c(326:650),]
state_AZ = covid_usa[c(651:975),]
state_SC = covid_usa[c(976:1300),]
state_CT = covid_usa[c(1300:1625),]
state_NE = covid_usa[c(1626:1950),]
state_KY = covid_usa[c(1951:2276),]
state_WY = covid_usa[c(2277:2600),]
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

tail(state_co)
head(state_fl)
tail(state_fl)
tail(state_az)
tail(state_sc)

