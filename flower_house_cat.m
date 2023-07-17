%Code written to support the 'Hope for Haiti' relief effort

% Load data from Haiti relief effort 
haitiData = csvread('haitirelief.csv'); 

% Initialize variables 
totalAid = 0; 
totalOrganizations = 0; 

% Iterate through relief effort csv 
for i = 1:size(haitiData,1)
    totalAid = totalAid + haitiData(i,2); % sum up total aid
    totalOrganizations = totalOrganizations + 1; % count number of organizations
end

% Calculate average aid per organization 
avgAid = totalAid/totalOrganizations; 

% Plot distribution of aid 
figure
hist(haitiData(:,2));
title('Distribution of Aid to Haiti');
xlabel('Amount of Aid');
ylabel('Number of Organizations'); 

% Get top 5 organizations by aid 
[top5Aid,idx] = sort(haitiData(:,2),'descend'); 
top5Organizations = haitiData(idx(1:5),1); 

% Display top 5 aid organizations 
disp('Top 5 Organizations by Aid: ');
disp(top5Organizations); 

% Calculate total donations 
totalDonations = sum(haitiData(:,3)); 

% Plot donation data 
figure
pie(haitiData(:,3));
title('Donation Data for Haiti Relief Effort'); 

% Calculate total aid + donations 
totalAidDonations = totalAid + totalDonations; 

% Display total aid + total donations
disp('The total amount of aid + donations is: ');
disp(totalAidDonations); 

% Save figures 
saveas(figure(1),'haiti_aid_dist.png');
saveas(figure(2),'haiti_don_data.png');