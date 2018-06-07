function f = Normalized_histogram(Nk,im)
%   Nk: ������ ��⸦ ���� ȭ�� ��
%   im: ����

[height,width]=size(im);

% Compute the probability of an occurrence of each gray level
Prk = zeros(1,256);
for i = 1:256
    Prk(i) = Nk(i) / (height * width);
end

f = Prk;
end