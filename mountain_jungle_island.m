% A Creativity Workshop in MATLAB
% Written by: [Insert Your Name Here]

%% Prerequisites

%Make sure you have MATLAB installed and running properly 

% Note: This workshop is intended for people who have basic familiarity 
% with MATLAB coding and syntax

%% Introduction

% This workshop will focus on how to use MATLAB in creative ways. We 
% will focus on learning techniques for creating unique workflows and 
% manipulating data to produce creative outputs. 

%% Exercise 1 - Creating a Visualization with Random Data

% First, let's create a visualization of random data using MATLAB. 

%Define the number of data points and generate random data
nPoints = 1000;
xData = rand(nPoints,1);
yData = rand(nPoints,1);

%Plot the data
figure;
scatter(xData,yData);
title('Random Points');
xlabel('X Values');
ylabel('Y Values');

% Add some additional modifications
hAx = gca;
hAx.XScale = 'log'; %Change the x-axis scale to logarithmic
hAx.XColor = [1 0 0]; %Change the x-axis color to red
hAx.GridAlpha = 0.5; %Increase grid transparency

% Generate a legend
legend('Random Points','Location','northwest');

%% Exercise 2 - Visualizing a Function

% Next, let's create a visualization of a function 

%Define the equation
x = 0:0.01:2*pi;
y = sin(x);

%Plot the function
figure;
plot(x,y);
title('Plot of a Sinusoidal Function');
xlabel('X Values');
ylabel('Y Values');

%Add some additional modifications
hAx = gca;
hAx.YLim = [-1.5 1.5]; %Set the y-axis limits
hAx.XGrid = 'on'; %Turn the x-grid on
hAx.YGrid = 'on'; %Turn the y-grid on

% Generate a legend
legend('Sin Function','Location','southwest');

%% Exercise 3 - Generating a Table

% Now let's try to generate a table

%Define the data 
data = [1 4 8; 2 5 7; 3 6 9];

% Set the row and column labels
rowLabels = {'Row 1','Row 2','Row 3'};
colLabels = {'Col 1','Col 2','Col 3'};

%Generate the table
figure;
uitable('Data',data,'RowName',rowLabels,'ColumnName',colLabels);
title('Table of Data');

%Add some additional modifications
hAx = gca;
hAx.Position = [0.1 0.2 0.8 0.6]; %Change the position of the table
hAx.BackgroundColor = [1 0 1]; %Change the background color to purple

%% Exercise 4 - Generating a Matrix

% Let's try generating a matrix

%Define the data
data = [1 4 8; 2 5 7; 3 6 9];

%Generate the matrix
figure;
imagesc(data);
title('Matrix of Data');

%Add some additional modifications
hAx = gca;
hAx.XAxis.TickValues = [1 2 3]; %Change the x-axis tick values
hAx.YAxis.TickValues = [1 2 3]; %Change the y-axis tick values
hAx.XAxis.TickLabels = {'Col 1','Col 2','Col 3'}; %Change the x-axis tick labels
hAx.YAxis.TickLabels = {'Row 1','Row 2','Row 3'}; %Change the y-axis tick labels
hAx.GridLineStyle = '--'; %Change the grid line style to dashed lines
hAx.GridAlpha = 0.8; %Increase the grid transparency

%% Exercise 5 - Generating a Contour Plot

% Finally, let's try creating a contour plot

%Define the data
xData = linspace(-2*pi,2*pi);
yData = linspace(-pi,pi);
[X,Y] = meshgrid(xData,yData);
Z = sin(X).*cos(Y);

%Generate the contour plot
figure;
contourf(X,Y,Z);
title('Contour Plot');

%Add some additional modifications
hAx = gca;
hAx.XLim = [-2.5 2.5]; %Change the x-axis limits
hAx.YLim = [-1.5 1.5]; %Change the y-axis limits
hAx.Title.FontSize = 14; %Change the font size of the title
hAx.CLim = [-1 1]; %Change the contour limit