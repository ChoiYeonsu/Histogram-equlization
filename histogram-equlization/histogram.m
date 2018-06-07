% 히스토그램 평활화

im=imread('chang.png');

% 컬러 이미지일 경우 흑백 이미지로 변환
[height,width, numberOfColorChannels]=size(im);
if numberOfColorChannels > 1
  disp(numberOfColorChannels);
  im = rgb2gray(im);
end
%원본 영상 보여주기
subplot(2,2,1)
imshow(im)
title('Original Image');
%히스토그램 밝기를 갖는 화소 수(원본)
Nk = Brightness_histogram(im,'Histogram of Original Image',2);
%디지털 영상에서 밝기 레벨이 발생할 확률
Prk = Normalized_histogram(Nk,im);

%히스토그램 평활화
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