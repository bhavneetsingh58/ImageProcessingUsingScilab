Image = imread('C:\Users\Labx51\Desktop\bhavneet\b3.jpg')
subplot(3,1,1)
imshow(Image)
title('Originial Image');
greyimg=rgb2gray(Image)
subplot(3,1,2)
imshow(greyimg)
title('GrayScale Image');
[row,col]=size(greyimg)
T=50
for x=1:2:row
    for y=1:2:col
        if greyimg(x,y)<T
            c(x,y)=0
        else c(x,y)=255
        end
    end    
end
subplot(3,1,3)
imshow(uint8(c))
title('Thresholded Image');
