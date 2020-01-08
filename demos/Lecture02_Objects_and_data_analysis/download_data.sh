# Cold Bay, Alaska 8 arc-second Coastal Digital Elevation Model
# More information: https://www.ncei.noaa.gov/metadata/geoportal/rest/metadata/item/gov.noaa.ngdc.mgg.dem:4955/html
wget https://www.ngdc.noaa.gov/thredds/fileServer/regional/cold_bay_8_mhhw_2013.nc -O data/cold_bay_alaska_elevation.nc

# CO2 concentrations at Mauna Loa Observatory
# More information: https://scrippsco2.ucsd.edu/data/atmospheric_co2/primary_mlo_co2_record.html
wget https://scrippsco2.ucsd.edu/assets/data/atmospheric/stations/in_situ_co2/monthly/monthly_in_situ_co2_mlo.csv -O data/mauna_loa_co2.csv

# Magnitude 4.5 or larger earthquakes in the last 30 days
wget https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_month.csv -O data/big_earthquakes.csv
