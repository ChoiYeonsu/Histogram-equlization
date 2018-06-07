function f = Normalized_histogram(Nk,im)
%   Nk: 각각의 밝기를 갖는 화소 수
%   im: 영상

[height,width]=size(im);

% Compute the probability of an occurrence of each gray level
Prk = zeros(1,256);
for i = 1:256
    Prk(i) = Nk(i) / (height * width);
end

f = Prk;
end