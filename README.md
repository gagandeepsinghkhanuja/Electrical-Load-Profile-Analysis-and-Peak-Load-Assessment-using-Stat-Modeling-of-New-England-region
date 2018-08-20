# Electrical-Load-Profile-Analysis-and-Peak-Load-Assessment-using-Stat-Modeling-of-New-England-region

There were three projects in the Energy sector I worked on, during Spring 2018 under the guidance of Professor 
Roshanak (Roshi) Nateghi. 

This project was a part of the course Predictive Modeling that I had taken during Spring 2018. The project report has been written in laTeX and supporting documents have been attached to benefit the community and the users.

The project aimed at predicting the peak load consumption of the New England Region based on various factors like demography, economy, weather, season and the day of the week. The data has been collected from various public websites and then been merged to a single dataset which has been then used for Statistical Modeling. 

The detailed implementation,results,predictions and analysis has been discussed in the project report along with supporting document. Please check the available PDF files uploaded along with the codes. 

The dataset was huge. The six states combined had more than 800000 instances and 23 attributes.

DataPreprocessing-Part8.R doesn't exist at all. Please deal with the wrong numbering. Apologies. 

# Contact Details :
For any questions, you can reach out to me at gkhanuja@purdue.edu


# Project Details :

Projecting the long term trends in the energy demad is an increasingly complex endeavor due to uncertain changes in factors such as climate and policy. A methodology that relates climate parameters to Peak Demand at county level scales has been applied to six states in the Independent System Operator (ISO) New England region to predict daily peak demand. These models allow for detailed analyses of electricity demand and its vulnerabilities to climate change at county level scale. The results include the comparison between various models and indicate the best model for predicting the daily peak demand significantly.

The peak load in this project refers to the highest demand of electrical power daily. The power demand depends on various factors like - demography, economy, weather, season, day of the week and more. This project focus on weather inputs, public available from the NOAA website.

# Data Sources :
The dataset consists of weather parameters, energy parameters and socio-economic parameters. 

[1] Energy Peak Load Data was obtained from the database of ISO-NE (ISO - New England) website which is an independent, non-profit Regional Transmission Organization (RTO) that oversees the operations of the New England's bulk electric power system and transmission lines. The dataset obtained was from 01-Jan-2011 to 31-Dec-2017.

[2] Weather data was obtained from the National Digital Forecast Database maintained by National Oceanic and Atmospheric Administration (NOAA), beginning from 01-Jan-2011 to 31-Dec-2017.

[3] The population and population density dataset was obtained from the United States census bureau starting from 01-Jan-2011 to 31-Dec-2017. 


# Description of Data :
The data used for Modeling pertains to the New England region ( during the period of January 2011 to December 2017 ) . The dataset has been aggregated from different sources and classified into three categories of (i) peak load electricity demand data; (ii) climate data; and (iii) socio-economic data.

While, peak load electricity demand data has been obtained at hourly scale directly from the source.It has been aggregated to daily level depending on its peak demand on that particular day for the purpose of analysis. 

The weather data was initially obtained at daily-level,. Some missing values in the dataset had been replaced with the values of the weather parameter of the nearest county. 

The time scale of socio-economic data varies from monthly-level to yearly-level. 


# References:
[1] Local Climatological Data (LCD) | Data Tools | Climate Data Online (CDO) | National Climatic Data Center (NCDC).

[2] ISO New England - Energy, Load, and Demand Reports.

[3] Jonathan Koomey and Richard E. Brown. The role of building technologies in reducing and controlling peak electricity demand. Technical Report LBNL-49947, Lawrence Berkeley National Lab. (LBNL), Berkeley, CA (United States), September 2002.

[4] P. Regulagadda, I. Dincer, and G. F. Naterer. Exergy analysis of a thermal power plant with measured boiler and turbine losses. Applied Thermal Engineering, 30(8):970–976, June 2010.

[5] Energy and Utility Analytics Market worth 3.41 Billion USD by 2021.

[6] Maximilian Auffhammer, Patrick Baylis, and Catherine H. Hausman. Climate change is projected to have severe impacts on the frequency and intensity of peak electricity demand across the United States. Proceedings of the National Academy of Sciences of the United States of America, 114(8):1886–1891, February 2017.

[7] David J. Sailor and J. Ricardo Muñoz. Sensitivity of electricity and natural gas consumption to climate in the U.S.A.—Methodology and results for eight states. Energy, 22(10):987–998, October 1997.

[8] David J Sailor. Relating residential and commercial sector electricity loads to climate— evaluating state level sensitivities and vulnerabilities. Energy, 26(7):645–657, July 2001.

[9] Anna Carolina Kossmann de Menezes, Andrew Cripps, Richard A. Buswell, Jonathan A. Wright, and Dino Bouchlaghem. Estimating the energy consumption and power demand of small power equipment in office buildings. 2014.

[10] Eric Fox. UEsleicntricg/ GaLs o/ Waatder Research Data to Develop Long-Term Peak Demand Forecasts. page 33.

[11] Global Utility and Energy Analytics Market - Expected to be Worth USD2.9 Billion by 2020 - Research and Markets, November 2017.

[12] Adam Kapelner and Justin Bleich (R package). bartMachine: Bayesian Additive RegressionTrees, April 2018.


