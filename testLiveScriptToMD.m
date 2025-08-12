%[text] # Test Script for Converting Live Script to Markdown format
%[text] This is a test live script, seeing if I can convert the live script into markdown (.md) format. the goal is to work out examples in MATLAB livescript which then is converted to markdown and available for review in github and other sources
%Here is some silly code
x = randi(50,1) %[output:0b8fa6d4]
y = randi(100,2) %[output:655c3ea9]

result = x + y %[output:9448283f]

%[appendix]{"version":"1.0"}
%---
%[metadata:view]
%   data: {"layout":"onright","rightPanelPercent":40.8}
%---
%[output:0b8fa6d4]
%   data: {"dataType":"textualVariable","outputData":{"name":"x","value":"41"}}
%---
%[output:655c3ea9]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"y","rows":2,"type":"double","value":[["91","92"],["13","64"]]}}
%---
%[output:9448283f]
%   data: {"dataType":"matrix","outputData":{"columns":2,"name":"result","rows":2,"type":"double","value":[["132","133"],["54","105"]]}}
%---
