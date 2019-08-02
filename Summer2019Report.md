sedimentationweir# Prefabricated Pilot Plant, Summer 2019
#### Ian Cullings, Yitzy Rosenburg, Marcin Sawczuk, Kevin Sarmiento
#### August 2nd, 2019

##Abstract

The AguaClara PF 300 is a fully functional small scale water treatment system currently utilized in Honduras.  It's smaller scale makes it ideal for smaller villages where the need is still significant, but it is not economical to build full scale built plants.  While the plant currently operates, there are significant problems in the design which need to be resolved to further improve treatment and allow for more systems to be built.  Additionally, the PF 300 serves as a perfect model for typical water treatment processes, including flocculation, sedimentation, and filtration, and thus data collected from this system can be used to study these processes and inform future design decisions.  The goal of the team this summer is twofold: collect data on flocculation, and use this information on new design projects for the system.  

## Introduction

The AguaClara PF 300 system (previously known and the 1 LPS plant or the Plantita) is a small scale, built system which can treat water at a rate up to 0.66 L/s.  The system was designed using AguaClara's principles, and thus models the built water treatment plant in the key areas:
* Gravity Powered: The entire plant is entirely powered from differences in hydraulic head from the inlet and outlet.  The design does not utilize electricity or mechanical parts, pieces that cause many problems when utilized in the field
* Built in place: The plant does not use any moving parts, and thus is functional from installation, reducing needs for maintenance and extending the operational life
* Utilizes hydraulic flocculators: Similar to AguaClara's built in place plants the PF300 uses a hydraulic flocculator to obtain the desired collision potentials for efficient flocculation
* Floc Blanket technology: The sedimentation tank of the PF300 creates an effective floc blanket just like the built in place AguaClara plants
* Stacked Rapid Sand Filters: The PF300 has a similar stacked filter design to that of built in place plants with the distinction that filter in this case is enclosed and must be under negative pressure

The main objectives for the summer were:
* Restore PF 300 to full operation and install Stacked Rapid Sand Filter
* Install lab bench and computer and connect all sensors for data collection
* Redesign of PF 300 components to improve operation quality and make construction easier

## Literature Review and Previous Work
Discuss what is already known about your research area based on both external work and that of past AguaClara Teams. Connect your objectives with what is already known and explain what additional contribution you intend to make. Make sure to add APA formatted in-text citations. If you mention the author(s) in your sentence, you can simply give the year of publication. [(Logan et. al. 1987)](http://www.jstor.org/stable/pdf/25043431.pdf?acceptTC=true)

## Methods

# Project One: Sensors and Data Acquisition

The first project for the summer is installing a number of sensors to collect data on the effluent from the PF 300.  Five sensors were installed: two Chemtrac PC6 particle sensors, one Chemtrac UV254 organics sensor, and two HF Scientific Turbidimeters.  One turbidimeter, one particle counter, and the organics sensor take samples from the effluent of the sedimentation tank (known as settled water), and the other turbidimeter and particle counter take samples from the outlet to the filter box.

All five of these sensors are connected to a main computer on the lab bench through Modbus RS485.  Modbus allows connection to up to 255 different sensors, each with a differing address.  Therefore, the team was able to wire each sensor together in a "daisy chain," with one single wire going into from the HydroAct through an adapter and connected directly into the computer.  

Effluent quality data is logged directly with ProCoDa, a process control software developed by Dr. Weber-Shirk.  The method file for data collection is available [on Github](https://github.com/AguaClara/Prefabricated-Pilot-Plant/blob/master/Data/Method_Files/Plantita_2.pcm).  The code for this, written by Dr. Weber-Shirk, is very similar to that used in the lab to connect to the turbidimeters.  Each device is assigned an address in the network, and then each data input (for example, total particle count, or the UVA reading) is assigned a data address from that device.  ProCoDa constantly samples these and saves them into an excel datalog, which is then imported from that computer through google drive to the cloud.  [You can view the data in real time here!](https://drive.google.com/drive/folders/15Q-oahdi-_HOuTjkzV-ZeO8t-d6P-ldm?usp=sharing)

This data will be used for two purposes.  The first is to further AguaClara research on floc blanket function and efficiency.  As described within the literature review, past research by graduate student Casey Garland showed that particle removal efficiency of the floc blanket was first order with respect to depth, but then eventually tapered off to a flat line with no further particle removal.  [This video](https://github.com/AguaClara/Prefabricated-Pilot-Plant/blob/master/Lit_Review/sedimentation.mp4) shows one experiment that gave this result.  This information is part of the justification for the design floc blanket height.  However, current theories in particle interactions within floc blankets suggest that smaller particles are being preferentially removed from the floc blanket, while larger particles become more easily sheared off and escape.  In an upflow system like the floc blanket, there is a stagnation point under suspended particles.  If a smaller particle follows the streamline and hits this point, it can easily collide and stick to this particle.  However, if a particle follows another streamline, the boundary layer around the particle prevents collisions.  This rapid flow around the particles also can shear larger particles off and allow them to escape.  This is shown in Figure 1 below.  

 **Figure 1:** The large floc is suspended in the floc blanket and has a point of stagnation that allows smaller primary particles to effectively collide if their approach is from the correct orientation, streamline on the right. However if the particle is too far off the side then a collision will not occur, left most streamline.

Since turbidimeters are unable to measure turbidity from small particles well (since they reflect significantly less light than larger ones) it is possible that previous experiments did not capture this result well.  Thus, data collection on particle size distributions will provide a more accurate picture of the types of particles escaping the floc blanket.

If this theory is true, it suggests that increasing the height of the floc blanket will actually be beneficial, as smaller particle removal will increase.  Since these particles are very difficult to remove, even within the filter, this result would be very positive towards increasing the treatment capability of AguaClara plants of all scales.

The other important parameter to collect for this experiment is the height of the floc blanket.  Unfortunately, since the PF 300 system is not transparent, there is no way to visually inspect this.  The only directly visible measure is through the floc hopper, where flocs can be seen escaping.  This only occurs when the floc blanket begins to grow above the height of the floc hopper (the maximum height).

The team considered a number of possible sensors to detect height as a function of time, including installing electrical sensors inside, taking constant measurements from the sampling ports on the side of the plant, and taking measurements by lowering a probe in from the top of the plant.  All of these possibilities were eventually scrapped, and the following methods were determined to be the most simple and effective:

1. Experiments with a typical rangefinder, pictured below, show that it can read the height from the top of the floc blanket.  Thus, by continuously running a rangefinder affixed to the top of the plant, and shining the laser between the plate settler, we can measure the distance from the rangefinder to the top of the floc blanket, and using simple geometry we can convert this into the height of the floc blanket.  The current rangefinder in use works but does not connect to a computer, so measurements must be made manually.  Note that the rangefinder doesn't work if water is too turbid that the particles reflect the laser, but the team found that typically within ~30 minutes after startup turbidity lowered enough to make accurate measurements.

2. When the plant begins operation after being fully drained, the floc blanket height can be assumed to be 0.  Once significant levels of flocs are observed leaving the floc hopper, the floc blanket can be assumed to have reached it's maximum height.  In between, the relationship between floc blanket height can be approximated as linear.  By measuring the time flocs begin to leave the floc hopper, the slope of this line can be determined.

Research is ongoing into the best method to measure this.

The second purpose for data collection is to provide water quality data over long term usage of the PF 300, which can justify the efficacy of the system, and provide direct comparison with other conventional water treatment systems like the Cornell Water Filtration Plant.  While PF 300 systems are currently only utilized in Honduras, there is lots of evidence that a similar system would be very useful in smaller communities in the United States, or other areas.  One such example is Native American reservations, which have had many issues with water quality and supply in the past.  Team members have talked with officials from the US Indian Public Health Service and are beginning to explore the need for these systems there.


### Other Changes to the PF 300 System

# Project Two: Filter Assembly

Previous teams designed and built the Enclosed Stack Rapid Sand Filter and transported it to the Cornell Water Filtration Plant. This summer we worked to connect it to the PF300 and make the necessary fixes to ensure that it operates.

## Assembly

The first task to connecting the filter was to find a way to divert the settled water to the filters entrance tank. The sedimentation tank's effluent leaves through a 3 inch PVC pipe that then is diverted to the CWFT's rapid mix unit for treatment. This technique allows us to run our experiments with the same water that the CWFP uses and also ensures that our experiments won't compromise the CWFP's treated water quality. A tee and two ball valves were installed on the sed tank's exit line to allow the settled water to be selectively diverted either to the filter or to waste.
In addition to that change we took the opportunity to add a flow weir to the sedimentation tank. This allowed us to raise the water level inside of the sedimentation tank and ensure that the exit launder was fully submerged at all times with about an inch of water above it.

<img src="https://github.com/AguaClara/Prefabricated-Pilot-Plant/blob/master/Images/Report/Filter_connection.jpg?raw=true" height = 600>

**Figure 2.** The flow weir was made out of two 3 inch PVC elbows and can be seen in the top circle. The settled water flows down the main pipe and can be diverted either to the filter, to the left, or to waste, straight down.

As can see in figure 2, when the ball valve in the vertical pipe is closed and the valve in the line feeding the filter is opened, settled water will go through the filter and be treated further.

## Filter Entrance Tank

Settled water from the sedimentation tank first arrives to the entrance tank of the filter, right most tank in figure 3.

<img src="https://github.com/AguaClara/Prefabricated-Pilot-Plant/blob/master/Images/Report/Filter_setup.jpg?raw=true" >

**Figure 3.** The three main compartments of the filter are the entrance tank, sand filter body, and effluent tank.

Once the settled water enters the tank, the flow gets divided into four separate PVC pipes which feed the filter at four different elevations. The distribution of flow can be seen in figure 4. Additionally, the entrance tank has 16.5 cm pipe stubs on three of the four pipes leading to the filter. This allows the entrance tank to function properly during filtration and also during backwash. During filtration settled water needs to go through all of the pipes, therefore the water level in the entrance tank needs to be high enough to allow flow into the pipe stubs. However, during backwash the flow needs to go through the larger diameter pipe, labeled in red in figure 4. This pipe attaches at the lowest point in the filter tank and because of that is responsible for fluidizing all of the sand in the tank during the backwash process. The pipe stubs ensures us that during backwash all of the flow goes through the bottom most pipe.

<img src ="https://github.com/AguaClara/Prefabricated-Pilot-Plant/blob/master/Images/Report/Entrance_pipes.jpg?raw=true" >


# Project Three: System Redesigns

## Flocculator

## Sedimentation tank

## Filter

This summer was the first time a EStars filter had ever been fully assembled and tested in a treatment process.  As with any complicated system, there were numerous problems that come up, and further design and testing is needed before this system can be implemented in the field.  The major problem identified with this system was the escape of sand through influent and influent pipes.

Escape of sand through the influent pipes was observed many times during operation, often due to errors in running the system.  The filter is designed such that sand should never escape the inner tank, as the upflow velocity should be too low to lift the particles all the way out the siphon system.  The following processes showed loss of sand (either through the siphon to effluent, or into the influent pipes):

* Running backwash without first opening the effluent line.  Backwash is a very fine balance of pressures, and if one side is over or underpressurized it will not work properly.  Thus it is very important that whenever backwash is run the effluent line is open throughout the entire process.
* Closing the backwash value quickly.  When backwash is running, water is flowing through the siphon very quickly due to the negative pressure.  If you close the valve and stop this process too quickly, it can "shock" the system and cause water to flow backwards through the pipes to return to the static head.  When ending backwash you must close this valve very slowly and gradually, at roughly 1 turn every 10 seconds.
* Opening flow into the filter without stopping flow to effluent.  There are two valves at the junction after settled water, one controls flow to the drain, and one controls flow into the entrance tank of the filter.  Typical operation is to open flow to the filter first then stop flow to drain, to prevent flooding.  However is the influent tank is left full of water, this water will flow backwards to lower head when the valve is open, which can pull sand from the inner tank.  Thus, whenever you reconnect the filter you must first close the valve to drain, allow water to rise to about the level in the entrance tank, then open the valve to the entrance tank.  

The team also observed significant amounts of sand within the exit tank, and even some in the turbidimeter reading off the exit tank. This means that sand is escaping the inner tank to effluent, which the slotted outlet pipes are designed to prevent.  This suggests that some of all of the slotted outlet pipes were designed incorrectly, and that sand can escape through these pipes.  

While a few different possibilities were considered, this shows a clear failure in the filter, and means that the filter must be either be repaired or remade completely.  Work is ongoing, but the current plan is to assemble a new filter, using the design of "gravity exclusion zones" by [Stars FINE](https://github.com/AguaClara/StaRSFine) in Spring 2019.








# Operation Manual

To turn the PF 300 on and begin collecting data:

1. Ensure all valves are open and flow is not blocked anywhere
2. Turn the main pump switch from OFF to HAND to begin flow within the plant
3. Turn on the peristaltic pump on the floc hopper and ensure the valve coming off the floc hopper is opened
4. Turn on the HydroAct and both turbidimeters by plugging them in
5. Turn on the main computer on the lab bench and log in on the generic AguaClara account, en-ce-ac
6. Open ProCoDa and check that the "Plantita_2" method file is being read
7. Data will automatically be collected and saved by ProCoDa, and uploaded into the cloud by Google Drive

To pressurize the filter (necessary whenever there is air within the inner tank, such as after removing the lid for repairs):

1. Open the valve on top of the filter to allow air to escape during process
2. Close the outlet valve to ensure no flow is leaving the filter
3. Water will begin to flood and raise the level within the influent tank.  Wait until water comes out of the top valve of the influent tank, then quickly close the top valve and open the effluent.  
4. Sometimes due to the flow restrictions by the sand bed, water level will rapidly rise in the entrance tank but will not raise in the inner tank for a while.  In this case open the valve off the effluent from the sedimentation tank partially to prevent the entrance tank from overflowing, and wait until water leaves the top valve of the inner tank
5. When you open the effluent you should hear a gurgling sound and observe flow being pulled into the effluent pipe.  This means the inner tank is pressurized and filter is operating correctly

To run backwash in the filter:

1. Backwash should be run whenever headloss in the entrance tank causes water level to rise significantly, typically daily.  Whenever you change the sand within the tank, you should also run backwash first to remove any particles that may have built up
2. Ensure inner tank is pressurized and there isn't air inside
3. Open the red backwash valve.  You should hear water being pulled through this pipe to the drain
4. Ensure that water level in the influent tank drop to below the pipe stubs on the entrances to the other inlets.  When backwash is operating fully, water should only be flowing from the backwash line
5. After backwash is complete, **slowly** close the backwash valve.  Once the valve is completely closed backwash should end and filter operation should resume as normal.

To flush pipes (cleaning sand from within):

1. Insert pipe plugs on all pipes except backwash line
2. Start backwash cycle as normal.  Run with just backwash line for 1-2 minutes
3. Open plug for lowest influent line (leftmost pipe).  Plug backwash line and allow water level to rise
4. If the water level is too low (just above the pipe stub) air will also be sucked in through the line.  To prevent this, partially block the pipe stub and allow water level to raise ~6 inches above the pipe stub entrance.  We used our fingers to block this, although this is not recommended as the suction is very strong.  
5. Swap the plugs and repeat this process for the other two pipes.  Whenever you switch flows ensure water level is high enough that air doesn't enter the pipes
6. Once you have flushed all pipes break backwash and remove all plugs.  If sand was removed from the pipe the sand level should be observably higher
