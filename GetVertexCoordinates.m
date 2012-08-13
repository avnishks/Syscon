%% GetVertexCoordinates
%  Description : This code calculates the coordinates of the vertices of a
%  regular n sided polygon
%  Parameters: 
%     - number_nodes - the number of agents in the system
%     - radius - the radius of the circle circumscribing the polygon
%  Usage:
%       vertex_coordinates = GetVertexCoordinates(number_nodes,radius)
%  Author: Giri Prashant, prashant7891@gmail.com
%  Date: 13th August, 2012

%% Code
function vertex_coordinates = GetVertexCoordinates(number_nodes,radius)

    vertex_coordinates.x = zeros(1,number_nodes);
    vertex_coordinates.y = zeros(1,number_nodes);
    
    vertex_coordinates.x(1) = 0;
    vertex_coordinates.y(1) = radius;
    
    for i=2:number_nodes
        
        vertex_coordinates.x(i) = radius*sin(2*(i-1)*pi/number_nodes);
        vertex_coordinates.y(i) = radius*cos(2*(i-1)*pi/number_nodes);

    end

end