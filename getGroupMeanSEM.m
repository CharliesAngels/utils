function [outMean, SEM] = getGroupMeanSEM(inMat,d)
%%%%%%%%%%%%%%%%%%%%
%
% Get mean and SEM of inMat, on dimension (dim)
%
% 
%
%
%
%


info = size(inMat);
try
    outMean = nanmean(inMat,d);
    SEM = nanstd(inMat,0,d)/(sqrt(info(d)-1));
catch
    outMean = nanmean(inMat,d);
    SEM = nanstd(inMat,0,d)/(sqrt(info(d)-1));
end

outMean = squeeze(outMean);
SEM = squeeze(SEM);