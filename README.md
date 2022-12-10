# About freeGeoDetailFromCoords
  A simple Ruby script to reverse geocode. Capable of finding the basic details of a locality
  Simple hash used as cache storage (to prevent calling the API for same data - limits quota usage)

!!! For educational purpose

!!! Can be used for reference (Though it's mine I woudn't copy it directly to PRODUCTION environment 😛 )


DATA-SOURCE: www.bigdatacloud.com

# Requirements:
Ruby Version >= 3.1.2

API-AUTH-KEY - Can be obtained by creating an account on www.bigdatacloud.com.
               Doesn't ask for payment mode unless opting an subscription.
               Free plan provides a decent request limit (as of Dec 10, 2022).

# libraries used
  Net::HTTP

# HOW TO USE
## CLONE OR DOWNLOAD the Repo
#### Change Directory
    cd freeGeoDetailFromCoords/

## IRB
#### Make the repo available inside IRB
    require './geo_detail.rb'
##### _Provide the AUTH-KEY (of bigdatacloud) details accordingly_
#### start reverse geocode by executing
      GeoDetail.reverse_geocode(latitude, longitude)
      #eg:- GeoDetail.reverse_geocode(0.00000, 0.000000)

#### Reading Cache
##### _To list the entire cache_
      GeoDetail.list_cache

##### _To list the entire cache keys_
      GeoDetail.list_cache('*')
##### _To query specific cache key patterns_
      GeoDetail.list_cache(<<pattern>>)
      #eg:- GeoDetail.list_cache('12.80*')
