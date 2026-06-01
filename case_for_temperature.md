---
layout: post
title:  "The case for temperature driven snowmelt"
date:   2026-04-10
categories: science
---

## Warm temperatures melt snow
The March heatwave in the Southwestern USA raises the question --- what actually happens to snow when it gets warm? 
This is a surprisingly controversial point in the literature (and for good reason).


## The case for solar radiation
Historically, operational snowmelt models have used [temperature as the primary predictor of melt](https://www.weather.gov/media/owp/oh/hrl/docs/22snow17.pdf).
However, researchers now appreciate that understanding the climatic behavior of snow necessitates thinking about the entire 'energy budget', which is all the different ways that the snowpack heats and cools over time, of which the temperature of the air only tells part of the picture.
It takes a lot of energy to melt snow, mostly because it takes a lot of energy to break the bonds holding ice crystals together (and, to a lesser extent, to warm the snow to 0°C).
The sun is incredibly strong (and even stronger at an equivalent high-elevation by several percentage points), and snow is also highly reflective. 
Therefore, small changes in the snow albedo have a big impact on the amount of energy that snow receives.
This can happen due to impurities or the natural grain-growth processes whereby small snow crystals become larger over time.

This classic graphic from Wiscombe & Warren (1981) shows this effect:

<figure>
  <img src="/images/wisc_warren.jpg" alt="drawing" width="80%"/>
  <figcaption>Snow albedo as a function of wavelength for different grain sizes (Wiscombe & Warren, 1981).</figcaption>
</figure>

The different lines are for different snow grain sizes.
In the absence of new snow, the snow grains on top of the snowpack naturally grow larger over time, and, therefore, start to absorb more solar radiation. 
New snowfall refreshes the snow surface with shinier and smaller crystals, which have a lower albedo. 
So, after a long dry spell, not only are snow grains growing larger, they are also not getting replaced by fresh new bright snow. 
Dry periods are also probably pretty sunny, so lots of available sun energy for the snow to absorb.
So, for this reason, and combined with the fact that the angle of the sun and length-of-day increases non-linearly in the spring, *rates of melt may increase rapidly during clear-sky, dry periods due to both more available solar radiation and a declining snow albedo, even in the absence of a direct temperature effect*.

What are some numbers to put this in context? 
The solar constant is 1365 W/m² but the amount received on the ground depends on the sun angle and properties of the atmosphere (such as water vapor and clouds).
This NASA page provides the daily-averaged top-of-atmosphere radiation for a given latitude and month (https://data.giss.nasa.gov/modelE/ar5plots/srlocat.html).

On the Spring equinox at the [Central Sierra Snow Lab (CSSL), in Soda Springs, CA](https://wcc.sc.egov.usda.gov/nwcc/site?sitenum=428), and assuming a clear-sky transmissivity of 0.7, the solar irradiance at the surface is 240 W/m² (averaged across the entire 24 hour day).
It takes 3.34×10⁵ J/kg of energy to break the chemical bonds of ice and cause melt. 
Keeping in mind that one Watt is one Joule per second, we can start to model some equivalent rates of snowmelt for a given solar insolation and albedo (assuming that all the solar energy goes into melting snow). 
The net shortwave radiation absorbed by the snowpack is simply the incoming shortwave radiation multiplied by 1-albedo.

The results are shown below. 
<figure>
  <img src="/images/albedo_vs_melt.png" alt="drawing" width="80%"/>
  <figcaption>Equivalent daily snowmelt rate as a function of albedo, assuming all solar energy goes into melt.</figcaption>
</figure>

On the equinox, this translates into an almost exactly 1 in/day of melt for a snow albedo of 0.6.
This is coincidentally a somewhat typical albedo value for old/impure snow.

What was going on during the spring heatwave? We can look at data from the NRCS SNOTEL site near Soda Springs, CA.
The heatwave was really strong between about the 16th-25th, so we will focus on that period later on.

<figure>
  <img src="/images/snow_melt_and_temp_only.png" alt="drawing" width="80%"/>
  <figcaption>Daily snowmelt rate and air temperature at the SNOTEL site near Soda Springs, CA during March 2026.</figcaption>
</figure>

We find rates of snowmelt that exceed 1 inch per day (computed by differencing the current day's snow water equivalent (SWE) from the previous day [^1]) in some but not all circumstances. 
Temperatures were extreme --- over 50°F *for the daily average*, not just for the daily maximum.

What about variability in incoming shortwave during this period? We can look at data from ERA5 for the month of March.

<figure>
  <img src="/images/era5_sw.png" alt="drawing" width="80%"/>
  <figcaption>ERA5 shortwave radiation components (TOA, clear-sky, all-sky) for March at the study site.</figcaption>
</figure>

We can look at the top-of-atmosphere (toa), clear-sky, and "all-sky" (which includes the effects of clouds) components of shortwave radiation [^2] 
There is some variability in the clear-sky solar (relative to the TOA) during clear skies, but not very much. 
Most of the variability comes from the addition of clouds.
There is only about a +/- 3% day-to-day change in the clear-sky transmittance (clear-sky divided by TOA) during the month of March, and the addition of clouds yield a maximum of a 10-15% (absolute) reduction in transmittance relative to clear skies and the largest reduction is limited to the beginning of the month.

### The case against solar radiation 

From the 17th to the 25th, there is about a 25 W/m² increase in downwelling shortwave, and the skies are mostly clear.
If we assume a (constant) albedo of 0.6, that represents a 10 W/m² additional radiative forcing on the snow during that 8 day period, or a about a 0.1 in/day increase in the melt rate over that same time period.
This is not enough to explain the increase in melt rate from around 0.5 to 1.2 in/day during the same time period.
There are of course a lot of assumptions here [^3] (the albedo may have changed significantly during this period) but generally speaking
this suggests that other energy balance mechanisms must be at play during the heatwave.

## The case for temperature
So how does temperature enter the picture?
This is via sensible heat and longwave radiation. 

### Sensible heat 
This is the term for the exchange of hot air molecules coming into direct contact with the snow. 
It is a naturally self-limiting process because, if the air is above 0°C, then the snow will be by-definition colder, and turbulent eddies that transfer heat between the snow and upper-air are limited by the effects of negative buoyancy (a turbulent eddy rising up from the snow will be more dense than the air above it, so it falls back down; if this sounds preposterous this is actually how we understand this process). 

This is a somewhat unwieldy calculation to make and there are a lot of assumptions. 
Suffice to say that the rate of sensible heating is proportional to the air-snow temperature difference, the speed of the wind, the density of the air, and a correction function that accounts for the turbulence dependency on air temperature and surface characteristics. 
The air density is an often overlooked factor; air density *decreases* alongside decreasing barometric pressure, so all else being equal *sensible heating is increasingly less effective as you go up in elevation* from the perspective of both heating and cooling, simply because there are fewer air molecules to bounce into the snow crystals.

If we plug in some typical numbers for a mountain snowpack we can see an order of magnitude of the significance of sensible heat for different air temperatures, again assuming that the snow is at 0°C.

<figure>
  <img src="/images/sens_heat.png" alt="drawing" width="80%"/>
  <figcaption>Sensible heat flux as a function of air temperature and wind speed for a melting snowpack.</figcaption>
</figure>

A wind of about 2 m/s is considered a ["light breeze"](https://en.wikipedia.org/wiki/Beaufort_scale).
We can clearly see how important both wind and air temperature are.
A windy day (3 m/s) in the daily-averaged 50°F range can almost provide enough sensible heat energy to melt 0.8 inches of snow per day, on par with the strength of the sun at the equinox over a low-albedo snowpack.
This can be thought of as the maximum possible sensible heat flux over a melting snowpack, since we are not correcting for the aforementioned reduction in turbulence due to buoyant forces.

But how much is that correction, roughly? 
Using a simplified model of turbulent exchange[^4], we can see the effect of the correction on sensible heat:

<figure>
  <img src="/images/stab_corr.png" alt="drawing" width="80%"/>
  <figcaption>Figure 1: Stability correlation across temperature ranges.</figcaption>
</figure>


(These values are simply multiplied by the sensible heat values in the previous plot). 
So, we can see that at low windspeeds the sensible heat flux (which was already low) basically goes to zero due to the stability correction. 
The effect is less pronounced at higher windspeeds, but still results in about a 20% lower sensible heat flux than the neutral estimate for moderate winds and air temperatures in the 50°F range.

### Longwave radiation 
The other mechanism is longwave radiation. Everything on earth emits radiation, including the atmosphere and snow, and at a rate governed by the Stefan Boltzmann Law. 
At earth temperatures this means radiation in the 4 µm and greater range (which are longer wavelengths than solar radiation, hence 'longwave').

Longwave radiation is proportional to the temperature in kelvin *raised to the 4th power* multiplied by a coefficient ranging between 0-1 called the emissivity.
So, a very small change in air temperature yields a huge increase in incident radiation!
Atmospheric humidity also enters into the longwave relationship.
Water vapor is a powerful greenhouse gas, so the [effective emissivity in the Stefan Boltzmann equation goes up as humidity increases](https://doi.org/10.1029/WR011i005p00742).
It turns out that this is a non-linear relationship --- a small change in humidity for a dry atmosphere has a bigger effect on downwelling longwave than a small change in humidity for an already moist atmosphere.


The snow is also emitting radiation to counteract the incoming radiation. 
Typical values of ε for the clear-sky atmosphere are in the 0.6 to 0.8 range, whereas a snowpack has an emissivity that is much closer to 1 (a blackbody).
Since snow can never get above 0°C, so the maximum outgoing longwave from a melting snowpack is on the order of ~309 W/m² (using the Stefan-Boltzmann law: ε σ T⁴, with emissivity ε = 0.98 and T = 273.15 K).




### Longwave is a 'handbrake' on melt
<figure>
  <img src="/images/lwnet.png" alt="net longwave radiation" width="80%"/>
  <figcaption>Net longwave radiation for a melting snowpack at varying air temperatures and atmospheric emissivities.</figcaption>
</figure>

The net longwave (LWin - LWout) is plotted above for a melting snowpack and different air temperatures and atmospheric emissivities. 
We can see that LW net is negative (meaning the snow is cooling via this mechanism) up to even very warm air temperatures, and counteracts the heating/melting of the snow from solar radiation and sensible heat.
The cooling rate is also sensitive to the atmospheric emissivity --- at 50°F, a change from 0.75 to 0.85 is the difference between the snowpack shedding heat at a rate equivalent to 0.35 to 0.4 in/day or having a net-zero rate of longwave cooling. 
What does this mean? 
*Snow stays colder and can hang around longer in a dry atmosphere, all else being equal*.

The fact that outgoing longwave from the snow is also proportional to T^4 is also interesting. 
It means that, as the snow heats up, it emits more and more longwave until it hits the thermodynamic limit of 309 W/m² (at 0°C).
In places like the Sierra Nevada, the entire snowpack may have an average temperature a few degrees below 0°C, but the temperature of the snowpack nearest the surface can easily get much colder at nighttime. 

## Empirical evidence for temperature effects on snowmelt 
Finally, I think that considering a purely empirical approach can show that temperature-mediated effects clearly have an influence on rates of snowmelt. 
The first figure from CSSL shows as much; the highest rates of snowmelt occur mid-to-late March when air temperatures approach 50F. 
Of course, a component of this effect is also likely an albedo/grain growth mechanism in the total-absence of new snowfall, and the fact that solar radiation increases rapidly throughout the month of March (as shown previously).
But, considering that in a normal year melt is nearly zero during the month of March (with a practically identical top-of-atmosphere solar radiation as this year, since this is purely a function of Earth's orbit!), this does not seem like a wholly satisfactory explanation. 

<figure>
  <img src="/images/swe_by_dowy.png" alt="drawing" width="80%"/>
  <figcaption>Snow water equivalent (SWE) by day of water year, highlighting the anomalous March 2026 decline.</figcaption>
</figure>

The abrupt decline in SWE during the March 2026 heatwave is clearly visible.
We had a dry-ish and unexceptionally warm March during 2025 and did not see the same destruction of SWE as for water year 2026.

<figure>
  <img src="/images/acc_precip_by_dowy.png" alt="drawing" width="80%"/>
  <figcaption>Accumulated precipitation by day of water year.</figcaption>
</figure>


### Effects on streamflow 
Another way to look at this is by examining streamflow from high elevation, snow dominated streams.
They tell us something about the integrated rates of snowmelt throughout the watershed (in the absence of precipitation!)

We can look at the same March heatwave period, but at the South Fork Merced River near Wawona, CA just outside of Yosemite National Park.
This river has a remarkable hydrograph with an enormous subdaily variation in streamflow.
Notice that there is a large day-to-day variability in the peak-flow. 
Much of this variability is happening during clear skies. 

<figure>
  <img src="/images/sfmerc.png" alt="drawing" width="80%"/>
  <figcaption>Streamflow at the South Fork Merced River near Wawona, CA during the March 2026 heatwave.</figcaption>
</figure>

The peak flows occur on the 20th of March, reaching a mid-day peak of over 1500 cubic-feet per second.
It is perhaps not coincidental that the air temperature in the nearby Yosemite Valley was the highest of the period examined on the 20th with values around 78°F. 

Temperature variability: 
<figure>
  <img src="/images/yyvc_temp.png" alt="drawing" width="80%"/>
  <figcaption>Air temperature in Yosemite Valley during March 2026.</figcaption>
</figure>

This is probably a bad example and doesn't really prove my point very well, since streamflow rates decline towards the end of March.
This is not temperature driven thing most likely, but rather that the basin is running out of snow available for melt.

## Additional considerations 
The albedo versus melt plot also makes another huge assumption --- the snow is not covered by vegetation.
In this case, we also have to take into account the decrease in solar radiation due to canopy absorption.

<figure>
  <img src="/images/hemispherical-photography.jpg" alt="drawing" width="50%"/>
  <figcaption>Hemispherical (fisheye) photograph of forest canopy for estimating canopy cover fraction.</figcaption>
</figure>

The downwelling longwave may also be adjusted -- leaves and the tree itself have a higher emissivity than the sky (and, at midday, is also likely at a warmer temperature than the air) which further adjust the rates of sensible heating and longwave emission. 
Temperature related forcings are almost certainly even more important under canopy than in open sites.
Adjustments for these processes are relatively straightforward and are implemented in most models, starting from using upward looking estimates of the hemispheric extent of vegetation (such as what's depicted above).

Clouds are another factor that have important ramifications for the snow energy balance ([which I wrote a paper about recently](https://doi.org/10.1029/2024JD042366)), but in the case of Spring heatwaves are generally not an important factor.
We have also not considered another turbulent flux --- latent heat -- which is assosciated with condenstaion and sublimation into/out of the snowpack. 
I am writing another post about this soon.

In addition, the orientation of the slope (aspect) has a huge impact on incident radiation. 
This is well known to backcountry skiers --- even after weeks without snow, you can sometimes still find cold fresh powder lurking in shaded North slopes (in the Northern hemisphere).
The examples in this post apply to a flat, non-sloping surface.
The direct effect is straightforward to account for by computing the angle of the sun relative to the slope-surface, and in the direction of the sun's azimuth as opposed to the sun-angle relative to the flat earth-plane.
Therefore, if we were to fully account for the different terms of the energy balance on snow, we would *likely* find that south slopes are more dominated by solar radiation than north slopes. 


## Conclusions
**The significant variability in day-to-day rates of streamflow and observed snowmelt during clear-sky heatwave induced snowmelt events suggests that there is a strong non-solar radiation forcing that influences rates of melt**. 
The day-to-day variation of clear-sky atmospheric transmissivity (due to aerosols, water vapor, ozone, and other factors) is likely not substantial enough to explain these day-to-day variations (on the order of +/- 3% for this particular event).
And even more importantly, the substantial increase in solar radiation purely due to rising sun-angles also does not appear to contribue enough extra radiation to adequately explain increased rates of melt (a near doubling between the 17th to 25th of March).

We have shown through some order of magnitude calculations that sensible heat and longwave radiation are both factors that are important, particularly during windy conditions.
In most situations longwave is likely acting as a 'handbrake' on melt, and the extent to which that brake is applied will have a meaningful impact on the daily rates of melt.  
In fact, [the longwave mechanism likely explains the efficacy of temperature-index based methods](https://journals.ametsoc.org/view/journals/apme/40/4/1520-0450_2001_040_0753_pbfttb_2.0.co_2.xml) which remain in-use operationally to this day. 

Finally, this analysis has just considered daily-average energy budgets, but in reality the sun only shines during the daytime and temperature also varies across a large range. 
Still, this analysis can give an approximate order of magnitude of the effects of different processes. 
A full energy balance model run at a higher timestep (hourly or even less) is actually required to get to the question of what the dominant melt-processes are during heatwaves. 
Suffice to say, though, that solar radiation is not the *only* variable responsible for snowmelt.




## Footnotes
[^1]: This assumes that no snow is lost via other processes, such as by wind redistribution or (more likely), sublimation.
[^2]: The ERA5 values are higher than my initial estimate of transmissivity used in the first figure, but I'm already made the figure and wrote the text.
[^3]: Observations suggest that we can fairly safely assume that the there is minimal "cold content" anytime that significant snowmelt occurs. That is, entire snowpack is isothermal at 0°C, and minimal energy goes into heating up the snowpack prior to converting energy to melt. 
[^4]: This method follows how the [SUMMA model](https://ral.ucar.edu/model/summa) computes turbulent exchanges, which is an approximation of Monin-Obukov similarity theory. Many other models require an iterative solution to compute stability corrections (since the correction also depends on the sensible heat flux) which is why this more parsimonious method is useful.
