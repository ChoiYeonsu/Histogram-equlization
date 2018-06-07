function f = Brightness_histogram(im,title0,position)
%   im: 영상
%   title0: 히스토그램 이름
%   position: 히스토그램 위치
[height,width]=size(im);

% 밝기를 갖는 각각의 화소 수 구하기
nk = zeros(1,256);
for i = 1:height
    for j = 1:width
        nk( im(i,j) + 1 ) = nk( im(i,j) + 1 ) + 1;
    end
end

subplot(2,2,position)
bar(nk)
title(title0);

f = nk;
end