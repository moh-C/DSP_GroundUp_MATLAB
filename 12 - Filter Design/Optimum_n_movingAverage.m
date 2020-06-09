clear; clc; close;
sgns = load('signals.mat');
sgn_mix = sgns.sgn_mix;

no_pnts = 50;
corr_list = zeros(2,no_pnts);
for iter=1:100
    sgn_out = movmean(sgn_mix,iter);
    corr_ = crosscorr(sgns.sgn_2,sgn_out);
    max_corr_ = mean(corr_);
    corr_list(1,iter) = iter;
    corr_list(2,iter) = max_corr_;
    corr_coeffs.x = corr_list(1,:);
    corr_coeffs.y = corr_list(2,:);
    clear corr_list
end

plot(corr_coeffs.x, corr_coeffs.y);
xlabel('Number of points used');
ylabel('Correlation Coefficients');