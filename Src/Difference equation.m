syms T1 T2 T3 T4 T5 T6 T7 T8 T9 T10 T11 T12 T13 T14 T15 T16 T17 T18 T19 T20 T21 T22 T23 T24 T25 T26 T27 T28 T29 T30 T31 T32 T33 T34 T35 T36 T37 T38 T39
h=5; %Heat transfer coefficient of Air
Tin=298.15; %Temperature of infinity; unit is Kelvin
Tw=298.15;  %Temperature of water
hw=30000;   %Heat transfer coefficient of water
Q=2000000;  %Given heat flux, unit is W/m^2
y1=0.0003;  %Unit is m
y2=0.00063;
y3=0.001;
kc=400;
ka=170;
x=0.001;
w=0.001;    %Assume thickness is 0.001 m
L=0.001;    %Distance between grids
L1=(y1+y3)/2; % L1 is the distance between grids on y1 and y3
R=y1/(2*x*w*kc)+y2/(2*x*w*ka);  %the combination heat resistance of Cu and AIN
eqn1 = Q*x*w+kc*(y1*w)*(T2-T1)/L+(T6-T1)/R==0;
eqn2 = Q*x*w+kc*(y1*w)*(T3-T2)/L+(T7-T2)/R+kc*(y1*w)*(T1-T2)/L==0;
eqn3 = Q*x*w+kc*(y1*w)*(T4-T3)/L+(T8-T3)/R+kc*(y1*w)*(T2-T3)/L==0;
eqn4 = Q*x*w+kc*(y1*w)*(T5-T4)/L+(T9-T4)/R+kc*(y1*w)*(T3-T4)/L==0;
eqn5 = Q*x*w+h*(y1*w)*(Tin-T5)+(T10-T5)/R+kc*(y1*w)*(T4-T5)/L==0;
eqn6 = (T1-T6)/R+ka*(y2*w)*(T7-T6)/L+(T11-T6)/R==0;
eqn7 = (T2-T7)/R+ka*(y2*w)*(T8-T7)/L+(T12-T7)/R+ka*(y2*w)*(T6-T7)/L==0;
eqn8 = (T3-T8)/R+ka*(y2*w)*(T9-T8)/L+(T13-T8)/R+ka*(y2*w)*(T7-T8)/L==0;
eqn9 = (T4-T9)/R+ka*(y2*w)*(T10-T9)/L+(T14-T9)/R+ka*(y2*w)*(T8-T9)/L==0;
eqn10 = (T5-T10)/R+h*(y2*w)*(Tin-T10)+(T15-T10)/R+ka*(y2*w)*(T9-T10)/L==0;
eqn11 = (T6-T11)/R+kc*(y1*w)*(T12-T11)/L+kc*(x*w)*(T16-T11)/L1==0;
eqn12 = (T7-T12)/R+kc*(y1*w)*(T13-T12)/L+kc*(x*w)*(T17-T12)/L1+kc*(y1*w)*(T11-T12)/L==0;
eqn13 = (T8-T13)/R+kc*(y1*w)*(T14-T13)/L+kc*(x*w)*(T18-T13)/L1+kc*(y1*w)*(T12-T13)/L==0;
eqn14 = (T9-T14)/R+kc*(y1*w)*(T15-T14)/L+kc*(x*w)*(T19-T14)/L1+kc*(y1*w)*(T13-T14)/L==0;
eqn15 = (T10-T15)/R+h*(y1*w)*(Tin-T15)+kc*(x*w)*(T20-T15)/L1+kc*(y1*w)*(T14-T15)/L==0;
eqn16 = kc*(x*w)*(T11-T16)/L1+kc*(y3*w)*(T17-T16)/L+kc*(x*w)*(T26-T16)/L==0;
eqn17 = kc*(x*w)*(T12-T17)/L1+kc*(y3*w)*(T18-T17)/L+kc*(x*w)*(T27-T17)/L+kc*(y3*w)*(T16-T17)/L==0;
eqn18 = kc*(x*w)*(T13-T18)/L1+kc*(y3*w)*(T19-T18)/L+kc*(x*w)*(T28-T18)/L+kc*(y3*w)*(T17-T18)/L==0;
eqn19 = kc*(x*w)*(T14-T19)/L1+kc*(y3*w)*(T20-T19)/L+kc*(x*w)*(T29-T19)/L+kc*(y3*w)*(T18-T19)/L==0;
eqn20 = kc*(x*w)*(T15-T20)/L1+kc*(y3*w)*(T21-T20)/L+kc*(x*w)*(T30-T20)/L+kc*(y3*w)*(T19-T20)/L==0;
eqn21 = h*(x*w)*(Tin-T21)+kc*(y3*w)*(T22-T21)/L+kc*(x*w)*(T31-T21)/L+kc*(y3*w)*(T20-T21)/L==0;
eqn22 = h*(x*w)*(Tin-T22)+kc*(y3*w)*(T23-T22)/L+kc*(x*w)*(T32-T22)/L+kc*(y3*w)*(T21-T22)/L==0;
eqn23 = h*(x*w)*(Tin-T23)+kc*(y3*w)*(T24-T23)/L+kc*(x*w)*(T33-T23)/L+kc*(y3*w)*(T22-T23)/L==0;
eqn24 = h*(x*w)*(Tin-T24)+kc*(y3*w)*(T25-T24)/L+kc*(x*w)*(T34-T24)/L+kc*(y3*w)*(T23-T24)/L==0;
eqn25 = h*(x*w)*(Tin-T25)+h*(y3*w)*(Tin-T25)+kc*(x*w)*(T35-T25)/L+kc*(y3*w)*(T24-T25)/L==0;
eqn26 = kc*(x*w)*(T16-T26)/L+kc*(y3*w)*(T27-T26)/L+kc*(x*w)*(T36-T26)/L==0;
eqn27 = kc*(x*w)*(T17-T27)/L+kc*(y3*w)*(T28-T27)/L+kc*(x*w)*(T37-T27)/L+kc*(y3*w)*(T26-T27)/L==0;
eqn28 = kc*(x*w)*(T18-T28)/L+kc*(y3*w)*(T29-T28)/L+hw*(x*w)*(Tw-T28)+kc*(y3*w)*(T27-T28)/L==0;
eqn29 = kc*(x*w)*(T19-T29)/L+kc*(y3*w)*(T30-T29)/L+hw*(x*w)*(Tw-T29)+kc*(y3*w)*(T28-T29)/L==0;
eqn30 = kc*(x*w)*(T20-T30)/L+kc*(y3*w)*(T31-T30)/L+hw*(x*w)*(Tw-T30)+kc*(y3*w)*(T29-T30)/L==0;
eqn31 = kc*(x*w)*(T21-T31)/L+kc*(y3*w)*(T32-T31)/L+hw*(x*w)*(Tw-T31)+kc*(y3*w)*(T30-T31)/L==0;
eqn32 = kc*(x*w)*(T22-T32)/L+kc*(y3*w)*(T33-T32)/L+hw*(x*w)*(Tw-T32)+kc*(y3*w)*(T31-T32)/L==0;
eqn33 = kc*(x*w)*(T23-T33)/L+kc*(y3*w)*(T34-T33)/L+hw*(x*w)*(Tw-T33)+kc*(y3*w)*(T32-T33)/L==0;
eqn34 = kc*(x*w)*(T24-T34)/L+kc*(y3*w)*(T35-T34)/L+kc*(x*w)*(T38-T34)/L+kc*(y3*w)*(T33-T34)/L==0;
eqn35 = kc*(x*w)*(T25-T35)/L+h*(y3*w)*(Tin-T35)+kc*(x*w)*(T39-T35)/L+kc*(y3*w)*(T34-T35)/L==0;
eqn36 = kc*(x*w)*(T26-T36)/L+kc*(y3*w)*(T37-T36)/L==0;
eqn37 = kc*(x*w)*(T27-T37)/L+hw*(y3*w)*(Tw-T37)+kc*(y3*w)*(T36-T37)/L==0;
eqn38 = kc*(x*w)*(T34-T38)/L+kc*(y3*w)*(T39-T38)/L+hw*(y3*w)*(Tw-T38)==0;
eqn39 = kc*(x*w)*(T35-T39)/L+h*(y3*w)*(Tin-T39)+kc*(y3*w)*(T38-T39)/L==0;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4, eqn5, eqn6, eqn7, eqn8, eqn9, eqn10, eqn11, eqn12, eqn13, eqn14, eqn15, eqn16, eqn17, eqn18, eqn19, eqn20, eqn21, eqn22, eqn23, eqn24, eqn25, eqn26, eqn27, eqn28, eqn29, eqn30, eqn31, eqn32, eqn33, eqn34, eqn35, eqn36, eqn37, eqn38, eqn39], [T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, T23, T24, T25, T26, T27, T28, T29, T30, T31, T32, T33, T34, T35, T36, T37, T38, T39]);
X = linsolve(A,B);
X=X-273.15; %temperature unit convert from Kelvin to Celsius
vpa(X)