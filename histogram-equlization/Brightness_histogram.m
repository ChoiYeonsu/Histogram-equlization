function f = Brightness_histogram(im,title0,position)
%   im: ����
%   title0: ������׷� �̸�
%   position: ������׷� ��ġ
[height,width]=size(im);

% ��⸦ ���� ������ ȭ�� �� ���ϱ�
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