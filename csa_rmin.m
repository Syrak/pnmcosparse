function [ X ] = csa_rmin( y, M, Mt, OmegaL, lambda  )
%rmin_1DFD Relaxed optimization for cosparse analysis

    X = pinv(lambda*OmegaL'*OmegaL + Mt*M)*Mt*y;

end

% Using e^(-1/|OmegaL*x) may give better results...