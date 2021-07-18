clear

clc

 

%�������������

[B,football_pos] = bucky();

 

%���͸������

[x,y,z]=sphere(30);

surf(x,y,z,'facecolor',[1 1 0],'edgecolor','none','facealpha',0.7);

axis equal

view(3,3)

hold on

 

%�������

plot3(football_pos(:,1),football_pos(:,2),football_pos(:,3),'*');

 

%�����ⳤ

Edge_Vector = football_pos(1,:)-football_pos(2,:);

Edge_Length = Edge_Vector * Edge_Vector';

Error = 0.0005;

 

%��������ⳤ��������Ȼ���⣬����������

for i=1:length(football_pos)-1

   for j=i+1:min(j+15,length(football_pos))

       Vector = football_pos(i,:)-football_pos(j,:);

       Length = Vector*Vector';

       if abs(Length-Edge_Length)<0.1

           x = [football_pos(i,1),football_pos(j,1)];

           y = [football_pos(i,2),football_pos(j,2)];

           z = [football_pos(i,3),football_pos(j,3)];

           line(x,y,z)

       end

   end

end