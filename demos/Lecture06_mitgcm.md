


# Numerical models -- The MIT general circulation model ([MITgcm](https://mitgcm.readthedocs.io/en/latest/)) and Ocean State Estimation ([ECCO](https://eccov4.readthedocs.io/en/latest/))

[MITgcm](https://github.com/MITgcm) is a general circulation model that can simulate the Ocean, Amosphere, sea-ice, ocean biogeochemistry, and marine ecosystems. It can be configured for a wide range of scales -- from a planet to a swimming pool or something like that. It is widely used for ocean modeling and ocean state estimation as done in [ECCO](https://github.com/ECCO-GROUP). 

Here we will use this [global ocean configuration](https://eccov4.readthedocs.io/en/latest/) that has been optimized to best fit lots of observations incl. [Argo for T,S](http://doi.org/10.5194/os-11-839-2015) and [Sea Level data](https://doi.org/10.1016/j.pocean.2015.06.002) as well as [permanently archived](http://dx.doi.org/10.7910/DVN/ODM2IQ ). Read more in [Forget et al 2015](https://www.geosci-model-dev.net/8/3071/2015/)

![](https://mitgcm.readthedocs.io/en/latest/_images/eddy_on_cubic_globe.svg)         |  ![](https://github.com/gaelforget/GlobalOceanNotebooks/blob/master/OceanTransports/MOC.png)
:------------------------------:|:---------------------------------:
![](https://mitgcm.readthedocs.io/en/latest/_images/scales.png)  |  ![](https://mitgcm.readthedocs.io/en/latest/_images/adv_gyre_maps.png)

It is coded in Fortran and therefore is manually compiled before using the model. `MITgcm` has extensive documentation that, while imperfect, is widely regarded as quite useful.  

Variables are on the C-grid such that U,V velocity components are shifted, and some cases. Let's have a look at some of its inputs & outputs. Namelists are used to specify run time parameters like the duration of the model run.

There is a difference between unit test case and curated setup. [ECCOv4](https://eccov4.readthedocs.io/en/latest/) firmly belongs in the latter category. 

- Now lets; compile, run, analyze, and modify a model configuration
- _Note: various language analysis frameworks exist (gcmfaces, xgcm, MeshArrays, ...)
- Exercise: 
- Exercise: set `useSingleCpuIO` to false in namelist and rerun model 
- Exercise: look at output from the atmospheric or ocean model; e.g. compute proper global mean in matlab, julia, or python

### Exercise Material

```
cd MITgcm/mysetups/ECCOv4
ln -s /data/* .
```

```
--- a/code/SIZE.h
+++ b/code/SIZE.h
-     &           nSx =   1,
+     &           nSx =  12,
      &           nSy =   1,
-     &           nPx =  96,
+     &           nPx =   8,
      &           nPy =   1,
```


```
--- a/input/data.pkg
+++ b/input/data.pkg
@@ -8,8 +8,8 @@
  useSALT_PlUME      = .TRUE.,
  useDiagnostics     = .TRUE.,
  useAUTODIFF        = .FALSE.,
- useECCO            = .TRUE.,
+ useECCO            = .FALSE.,
  useCTRL            = .TRUE.,
- useProfiles        = .TRUE.,
+ useProfiles        = .FALSE.,
  useSMOOTH          = .TRUE.,
  &
```

```
--- a/input/data
+++ b/input/data
-#20y:
- nTimeSteps=175295,
+#10 days:
+ nTimeSteps=240,
```
