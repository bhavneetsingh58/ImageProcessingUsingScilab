Image = imread('C:\Users\Labx51\Desktop\bhavneet\b3.jpg')
subplot(3,1,1)
imshow(Image)
title('Originial Image');
grayimg=rgb2gray(Image)
subplot(3,1,2)
imshow(grayimg)
title('GrayScale Image');
doublegray=double(grayimg)
subplot(3,1,3)
c=imhistequal(doublegray)
imshow(uint8(c))
title('Logarathimacly Transformed Image');
