# Prefabricated Pilot Plant, Summer 2019
#### Ian Cullings, Yitzy Rosenburg, Marcin Sawczuk, Kevin Sarmiento
#### August 2nd, 2019

##Abstract

The AguaClara PF 300 is a fully functional small scale water treatment system currently utilized in Honduras.  It's smaller scale makes it ideal for smaller villages where the need is still significant, but it is not economical to build full scale built plants.  While the plant currently operates, there are significant problems in the design which need to be resolved to further improve treatment and allow for more systems to be built.  Additionally, the PF 300 serves as a perfect model for typical water treatment processes, including flocculation, sedimentation, and filtration, and thus data collected from this system can be used to study these processes and inform future design decisions.  The goal of the team this summer is twofold: collect data on flocculation, and use this information on new design projects for the system.  

## Introduction
Explain how the completion of your challenge will affect AguaClara and the mission of providing safe drinking water (or sustainable wastewater treatment!). If this is a continuing team, how will your contribution build upon previous research? What needs to be further discovered or defined? If this is a new team, what prompted the inclusion of this team?

The AguaClara PF 300 system (previously known and the 1 LPS plant or the Plantita) is a small scale, built system which can treat water at a rate up to 0.66 L/s.  The system was designed using AguaClara's principles, and thus models the built water treatment plant in the key areas:
* Gravity Powered: The entire plant is entirely powered from differences in hydraulic head from the inlet and outlet.  The design does not utilize electricity or mechanical parts, pieces that cause many problems when utilized in the field.
* Few moving peices: The plant does not have any moving parts to ensure that components have a long operational life
* Utilizes hydraulic flocculators: Similar to AguaClara's built in place plants the PF300 uses a hydaulic flocculator to obtain the desired collition potentails for efficient flocculation
* Floc Blanket technology: The sedimentation tank of the PF300 creates an effective floc blanket just like the built in place AguaClara plants
* Stacked Rapid Sand Filters: The PF300 has a similar stacked filter design to that of built in place plants with the distrinction that filter in this case is enclosed and must be under negative pressure

This summer there were three main objectives: Install and ensure optimal operation of the Enclosed Stacked Rapid Sand Filter to the plant, begin collecting water quality data from the PF300 with the new data collecting equipment, and work on a redesign of the PF300.

## Literature Review and Previous Work
Discuss what is already known about your research area based on both external work and that of past AguaClara Teams. Connect your objectives with what is already known and explain what additional contribution you intend to make. Make sure to add APA formatted in-text citations. If you mention the author(s) in your sentence, you can simply give the year of publication. [(Logan et. al. 1987)](http://www.jstor.org/stable/pdf/25043431.pdf?acceptTC=true)

##Methods
Explain the techniques you have used to acquire additional data and insights. Reserve fine detail for the Manual at the end of the report, but use this section to give an overview with enough detail for the reader to understand your Results and Analysis. Be especially careful to detail the conditions your experiments were conducted under, as this information is especially important for interpreting your results.

Below, some example sections are given. Sectioning the report is meant to keep similar information together.  Continue making sections as necessary, or delete sections if you do not need them. Feel free to add subsubsections to further delineate the information. For example, under the Experimental Apparatus section below, the EStaRS team might consider having sections such as "Filter Design" and "Filter Fabrication".

# Project One: Sensors and Data Acquisition

The first project for the summer is installing a number of sensors to collect data on the effluent from the PF 300.  Three sensors were installed: two Chemtrac PC6 particle sensors, and one Chemtrac organics sensor.  Together with the Hydroact system, these sensors will collect continuous water quality data during operation of the PF 300.  This data serves two purposes: better understanding of the floc model, and effluent data for comparison with traditional water treatment plants.

Past AguaClara reseach has collected a large swath of data on the relations between the height of a floc blanket within a sedimentation tank and the effluent turbidity (the total level of treatment).  However, current data (citation) has shown the following result:


** Find graph of effluent turbidity versus floc blanket height (Ask Monroe) **

This graph, relating the effluent turbidity and the height of the floc blanket, shows a clear drop off at a height of x, after which increased levels of flocs no longer contribute to removing particles from the water.  This data has driven design decisions on the sedimentation tank.  However, due to the limitations of previous measuring devices, it is unclear what the size distributions is of the particles that are being removed by the floc blanket. The current floc model hypothesis predicts that within an upflow floc blanket, such as the blanket within the PF 300, smaller particles will have a greater opportunity to collide and bind with the suspended flocs and be removed, while collisions with larger particles will be more easily sheared off of the particles and escape.

  <img src="https://github.com/AguaClara/Prefabricated-Pilot-Plant/blob/master/Floc_blanket_particle_streamlines.png?raw=true" height = 400>

 **Figure 1:** The large floc is suspended in the floc blanket and has a point of stagnation that allows smaller primary particles to effectively collide if their approach is from the correct orientation, streamline on the right. However if the particle is too far off the side then a collision will not occur, left most streamline.


In order to gather more evidence for this theory, we will utilize the particle counters to characterize the size of particles leaving through the effluent, and thus see if larger particles are preferentially escaping.  The organics sensor will also collect data on humic acid and other organics escaping to further support the hypothesis.  Once the system is set up, the PF 300 will be continuously run in line with the ful water treatment plant to collect continuous data.

The other important parameter to collect from this system is the height of the floc blanket.  Unfortunately, since the PF 300 system is not transparent, there is no way to visually inspect this.  The only directly visible measure is through the floc hopper, where flocs can be seen escaping.  This only occurs when the floc blanket begins to grow above the height of the floc hopper (its maximum).

The team considered a number of possible sensors to detect height as a function of time, including installing electrical sensors inside, taking constant measurements from the sampling ports on the side of the plant, and taking measurements by lowering a probe in from the top of the plant.  All of these possibilities were eventually scrapped, and the following methods were determined to be the most simple and effective:

1. When the plant begins operation after being fully drained, the floc blanket height can be assumed to be 0.  Once significant levels of flocs are observed leaving the floc hopper, the floc blanket can be assumed to have reached it's maximum height.  In between, the relationship between floc blanket height can be approximated as linear, following the equation below:
$$ h(t) =\frac{H_m}{T_m} t $$
where  $H_m$ is the maximum height of the floc blanket (in the current design, X) and $t_m$ is the time until the maximum height is reached.  While this is just a first assumption, further tests may be taken to determine if there is a different relationship between time and floc blanket height.
2. Throughout operation, data will be collected on influent turbidity (from the inlet pipe to the CUWTP) and effluent turbidity (from the turbidimeter mounted on the sensor table).  By taking the difference between these values, an estimation of the mass input rate into the system can be taken (which is proportional to floc blanket height), given that mass is conserved.  This will provide another parameter for the model.  Futher work is needed to determine the exact relatio between mass loading rate and floc blanket height.

The second purpose of data acquistion within this system is to collect information to justify the usage of PF 300 systems over conventional water treatment systems, particularly in the United States.  The primary motivation of the AguaClara project is to provide safe drinking water on tap to as many people as possible.  As outlined in (cite Zoe's thesis), there is significant justification for the usage of PF 300 systems over current water treatment technologies in the United States, particularly in smaller communities without funding or access to large scale built infrastructure.  




### Other Changes to the PF 300 System

# Project Two: Filter Assembly

Previous teams designed and built the Enclosed Stack Rapid Sand Filter and transported it to the Cornell Water Filtration Plant. This summer we worked to connect it to the PF300 and make the neccessary fixes to ensure that it operates.

## Assembly

The first task to connect the filter was to find a way to divert the settled water to it's entrance tank. The sedimentation tank's effluent leaves through a 3 inch PVC pipe that then is diverted to the CWFT's rapid mix unit for treatment. A tee and two ball valves were installed on this line to allow the settled water to selectively be diverted either to the filter or to waste.


# Project Three: System Redesigns


## Flocculator

## Sedimentation
