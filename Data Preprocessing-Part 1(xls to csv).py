# Gagandeep Singh Khanuja
# Industrial Engineering
# Predictive Modeling
# Data Preprocessing
# Converting xls file to csv format 
# Segregating each sheet from the file and saving them separately 

# Importing the required packages
import pandas as pd
import os
# Changing the present current directory
os.chdir("E:/Purdue University/Spring 2018/IE 590 - Predictive Modeling/Project - Predictive Modeling/Datasets from ISO New England/Hourly Dataset/Data Preprocessing - From xls to csv")

########################################### Converting 2011 Dataset from xls format to csv format ###########################################
dataframe = pd.read_excel("2011_smd_hourly.xls",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe.columns)
dataframe.to_csv("2011-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe1 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe1.columns)
dataframe1.to_csv("2011-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe2 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe2.columns)
dataframe2.to_csv("2011-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe3 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe3.columns)
dataframe3.to_csv("2011-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe4 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe4.columns)
dataframe4.to_csv("2011-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe5 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe5.columns)
dataframe5.to_csv("2011-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe6 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe6.columns)
dataframe6.to_csv("2011-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe7 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe7.columns)
dataframe7.to_csv("2011-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe8 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe8.columns)
dataframe8.to_csv("2011-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe9 = pd.read_excel("2011_smd_hourly.xls",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe9.columns)
dataframe9.to_csv("2011-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)






########################################### Converting 2012 Dataset from xls format to csv format ###########################################
dataframe10 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe10.columns)
dataframe10.to_csv("2012-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe11 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe11.columns)
dataframe11.to_csv("2012-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe12 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe12.columns)
dataframe12.to_csv("2012-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe13 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe13.columns)
dataframe13.to_csv("2012-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe14 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe14.columns)
dataframe14.to_csv("2012-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe15 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe15.columns)
dataframe15.to_csv("2012-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe16 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe16.columns)
dataframe16.to_csv("2012-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe17 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe17.columns)
dataframe17.to_csv("2012-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe18 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe18.columns)
dataframe18.to_csv("2012-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe19 = pd.read_excel("2012_smd_hourly.xls",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe19.columns)
dataframe19.to_csv("2012-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)






########################################### Converting 2013 Dataset from xls format to csv format ###########################################
dataframe20 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe20.columns)
dataframe20.to_csv("2013-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe21 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe21.columns)
dataframe21.to_csv("2013-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe22 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe22.columns)
dataframe22.to_csv("2013-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe23 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe23.columns)
dataframe23.to_csv("2013-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe24 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe24.columns)
dataframe24.to_csv("2013-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe25 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe25.columns)
dataframe25.to_csv("2013-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe26 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe26.columns)
dataframe26.to_csv("2013-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe27 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe27.columns)
dataframe27.to_csv("2013-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe28 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe28.columns)
dataframe28.to_csv("2013-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe29 = pd.read_excel("2013_smd_hourly.xls",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe29.columns)
dataframe29.to_csv("2013-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)






########################################### Converting 2014 Dataset from xls format to csv format ###########################################
dataframe30 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe30.columns)
dataframe30.to_csv("2014-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe31 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe31.columns)
dataframe31.to_csv("2014-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe32 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe32.columns)
dataframe32.to_csv("2014-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe33 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe33.columns)
dataframe33.to_csv("2014-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe34 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe34.columns)
dataframe34.to_csv("2014-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe35 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe35.columns)
dataframe35.to_csv("2014-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe36 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe36.columns)
dataframe36.to_csv("2014-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe37 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe37.columns)
dataframe37.to_csv("2014-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe38 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe38.columns)
dataframe38.to_csv("2014-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe39 = pd.read_excel("2014_smd_hourly.xls",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe39.columns)
dataframe39.to_csv("2014-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)






########################################### Converting 2015 Dataset from xls format to csv format ###########################################
dataframe40 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe40.columns)
dataframe40.to_csv("2015-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe41 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe41.columns)
dataframe41.to_csv("2015-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe42 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe42.columns)
dataframe42.to_csv("2015-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe43 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe43.columns)
dataframe43.to_csv("2015-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe44 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe44.columns)
dataframe44.to_csv("2015-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe45 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe45.columns)
dataframe45.to_csv("2015-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe46 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe46.columns)
dataframe46.to_csv("2015-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe47 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe47.columns)
dataframe47.to_csv("2015-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe48 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe48.columns)
dataframe48.to_csv("2015-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe49 = pd.read_excel("2015_smd_hourly.xls",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe49.columns)
dataframe49.to_csv("2015-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)                                    






########################################### Converting 2016 Dataset from xls format to csv format ###########################################
dataframe50 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe50.columns)
dataframe50.to_csv("2016-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe51 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe51.columns)
dataframe51.to_csv("2016-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe52 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe52.columns)
dataframe52.to_csv("2016-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe53 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe53.columns)
dataframe53.to_csv("2016-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe54 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe54.columns)
dataframe54.to_csv("2016-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe55 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe55.columns)
dataframe55.to_csv("2016-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe56 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe56.columns)
dataframe56.to_csv("2016-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe57 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe57.columns)
dataframe57.to_csv("2016-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe58 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe58.columns)
dataframe58.to_csv("2016-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe59 = pd.read_excel("2016_smd_hourly.xls",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe59.columns)
dataframe59.to_csv("2016-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)                                    






########################################### Converting 2017 Dataset from xlsx format to csv format ###########################################
dataframe60 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 0,header = 0, skiprows = None, na_values = None )
print(dataframe60.columns)
dataframe60.to_csv("2017-Hourly-Data-Explanation of hourly data.csv", sep=",",header = True, encoding ="utf-8",index = False )

dataframe61 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 1,header = 0, skiprows = None, na_values = None )
print(dataframe61.columns)
dataframe61.to_csv("2017-Hourly-Data-ISONE CA.csv", sep=",",header = True, encoding ="utf-8", index = False)
                  
dataframe62 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 2,header = 0, skiprows = None, na_values = None )
print(dataframe62.columns)
dataframe62.to_csv("2017-Hourly-Data-ME.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe63 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 3,header = 0, skiprows = None, na_values = None )
print(dataframe63.columns)
dataframe63.to_csv("2017-Hourly-Data-NH.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe64 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 4,header = 0, skiprows = None, na_values = None )
print(dataframe64.columns)
dataframe64.to_csv("2017-Hourly-Data-VT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe65 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 5,header = 0, skiprows = None, na_values = None )
print(dataframe65.columns)
dataframe65.to_csv("2017-Hourly-Data-CT.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe66 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 6,header = 0, skiprows = None, na_values = None )
print(dataframe66.columns)
dataframe66.to_csv("2017-Hourly-Data-RI.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe67 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 7,header = 0, skiprows = None, na_values = None )
print(dataframe67.columns)
dataframe67.to_csv("2017-Hourly-Data-SEMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe68 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 8,header = 0, skiprows = None, na_values = None )
print(dataframe68.columns)
dataframe68.to_csv("2017-Hourly-Data-WCMASS.csv", sep=",",header = True, encoding ="utf-8", index = False)

dataframe69 = pd.read_excel("2017_smd_hourly.xlsx",sheet_name = 9,header = 0, skiprows = None, na_values = None )
print(dataframe69.columns)
dataframe69.to_csv("2017-Hourly-Data-NEMASSBOST.csv", sep=",",header = True, encoding ="utf-8", index = False)    

                                