%% Laplacian Matrix 
%  Description : This code calculates the laplacian matrix of a given regular polygon
%  Parameters: 
%     - number_nodes - the number of agents in the system
%  Usage:
%     laplacian_matrix = laplacian(number_nodes)
%  Author: Giri Prashant, prashant7891@gmail.com
%  Date: 13th August, 2012
 
%% Code
function laplacian_matrix = laplacian(number_nodes)

    incident_matrix = zeros(number_nodes,number_nodes);
    
    for j=1:number_nodes
        for i=1:number_nodes            
            if j+1==i                
                incident_matrix(j,j) = -1;
                incident_matrix(i,j) = 1;
            
            elseif j==number_nodes
                incident_matrix(j,j) = -1;
                incident_matrix(1,j) = 1;
            end
                
        end
    end
          
    laplacian_matrix = incident_matrix*incident_matrix';
end