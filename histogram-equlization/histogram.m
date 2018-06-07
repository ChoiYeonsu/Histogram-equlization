% ������׷� ��Ȱȭ

im=imread('chang.png');

% �÷� �̹����� ��� ��� �̹����� ��ȯ
[height,width, numberOfColorChannels]=size(im);
if numberOfColorChannels > 1
  disp(numberOfColorChannels);
  im = rgb2gray(im);
end
%���� ���� �����ֱ�
subplot(2,2,1)
imshow(im)
title('Original Image');
%������׷� ��⸦ ���� ȭ�� ��(����)
Nk = Brightness_histogram(im,'Histogram of Original Image',2);
%������ ���󿡼� ��� ������ �߻��� Ȯ��
Prk = Normalized_histogram(Nk,im);

%������׷� ��Ȱȭ
Sk= zeros(1,256);
Sk(1) = 0 + uint8(255 * Prk(1));
for i = 2:256
    Sk(i) = Sk(i-1) + uint8(255 * Prk(i));
end
for i = 1:height
    for j = 1:width
        im(i,j)=Sk(im(i,j) + 1);
    end
end

subplot(2,2,3)
imshow(im)
title('Histogram Equalization Image');

NNk = Brightness_histogram(im,'Histogram of New Image',4);