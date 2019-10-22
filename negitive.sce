Image = imread('C:\Users\Labx51\Desktop\bhavneet\b3.jpg')
subplot(3,1,1)
imshow(Image)
title('Originial Image');
greyimg=rgb2gray(Image)
subplot(3,1,2)
imshow(greyimg)
title('GrayScale Image');
negimg= 225 - greyimg
subplot(3,1,3)
imshow(negimg)
title('Negitive')

