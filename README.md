# Numerical-Analysis-of-2-D-Heat-Transfer
## Problem Statement
A section of a typical power electronic package looks like as shown in Figure. An electronic device is placed on a copper circuit and acts as a heat source. The Cu circuit is attached to an electrical insulator aluminum nitride (AlN). Here electricity is arrested, whereas heat can dissipate further down to be removed. Another layer of copper help spread heat more after AlN. The Cu – AlN – Cu structure, typically known as direct bonded copper (DBC) is soldered onto a heat sink, from where heat can be removed either by natural convection using fins (Like CPUs of our computers) or forced liquid convection in channels, such as shown in the Figure. Now, we want to design a power electronic package that dissipates heat well using these channels and keeps the temperature of the top Cu surface at the heat source to a minimum for a durable device performance. In our problem it must be below 100°C. Conductivities for Cu and AlN are 400 W/m-K and 170 W/m-K, respectively. The input heat flux and the geometry are shown in the Figure. Right hand side of the package is exposed to convection to ambient air at 25°C and h = 5 W/m2 -K. Neglect radiation.

![Screenshot](https://github.com/FancleX/Numerical-Analysis-of-2-D-Heat-Transfer/blob/main/Img/Problemstate.PNG)

---
## Assumptions
* The heat flux is two dimensional
* Steady state
* Heat transfer coefficients are constant
* The contact thermal resistances are neglected
* Heat flow direction at a given node typically unknown. Assume all heat flow is into node
---
## Equations 

![Screenshot](https://github.com/FancleX/Numerical-Analysis-of-2-D-Heat-Transfer/blob/main/Img/Equations.PNG)

---
## Boundary Conditions
* Top surface of heat flux is 200 W/cm^2
* The left side of object is symmetry plane where heat flux is zero
* The bottom of  object is insulation plane where heat flux is zero
* The Right side and closed to water planes are convection
---
## Discretization of Domains
![Screenshot](Img\Domains.png)

Here ∆y1=0.3 mm, ∆y2=0.63 mm, ∆y3=1 mm, ∆x=1 mm, w(assumed thickness)=1 mm.

---
## Finite Difference Equations
![Screenshot](https://github.com/FancleX/Numerical-Analysis-of-2-D-Heat-Transfer/blob/main/Img/FDE.PNG)

A and ∆L will be adjusted for heat transferring from different positions.
Here are 39 nodes (assuming node is the middle point of every grid), so we will have 39 finite difference equations to solve temperature from T1 to T39. 

---
## Result
Copy data from the Matlab to Excel, then use color scale to display. 
![Screenshot](https://github.com/FancleX/Numerical-Analysis-of-2-D-Heat-Transfer/blob/main/Img/Outcome1.PNG)