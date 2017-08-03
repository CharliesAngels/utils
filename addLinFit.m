function addLinFit(inVec1,inVec2,C,txt)

p = polyfit(inVec1,inVec2,1);
[r,pv] = corr(inVec1,inVec2);
disp(['Slope : ', num2str(p(1)),'; r : ',num2str(r),'; p = ',num2str(pv)])
if txt == 1
    text(min(inVec1),max(inVec2)+std(inVec2)*0.2,['r = ',num2str(r),'; p = ',num2str(pv,2)],'FontSize',14);
elseif size(txt,2) == 2
    tx = sprintf('%0.2f',r);
    text(txt(1),txt(2),['r = ',tx '; p = ' sprintf('%0.2f',pv)],'FontSize',16); %,'

end
x = [min(inVec1) max(inVec1)];
y = polyval(p,x);
plot(gca,x,y,'-','LineWidth',4,'Color',C);